#!/usr/bin/env python3
"""Geocode preliminary Little Detour parks using OSM Nominatim.
Only accept confidently matched Delaware County locations; keep uncertain entries unmapped.
Respect Nominatim's 1 request/second policy.
"""
import json,re,time,urllib.parse,urllib.request,difflib
from pathlib import Path

path=Path("lib/starter-places.ts")
raw=path.read_text()
start=raw.index("= [")+2
data=json.loads(raw[start:].strip().rstrip(";"))
def norm(s):
 return re.sub(r"[^a-z0-9]+"," ",s.lower()).strip()
def get(q):
 url="https://nominatim.openstreetmap.org/search?"+urllib.parse.urlencode({"q":q,"format":"json","addressdetails":1,"limit":5,"countrycodes":"us"})
 req=urllib.request.Request(url,headers={"User-Agent":"LittleDetour/0.2 (noncommercial municipal park mapping; https://github.com/ndemayo/little-detour)","Accept":"application/json"})
 try:
  with urllib.request.urlopen(req,timeout=25) as r:return json.load(r)
 except Exception as e:
  print("Lookup failed:",q,str(e));return []
def match(row,hit):
 lat=float(hit["lat"]);lon=float(hit["lon"])
 if not (39.75<=lat<=40.13 and -75.72<=lon<=-75.12):return False
 display=norm(hit.get("display_name",""))
 name=norm(row["name"])
 similarity=difflib.SequenceMatcher(None,name, norm(hit.get("name") or display.split(",")[0])).ratio()
 # An exact park name or close variant is required; address-only street matches are not enough.
 name_ok=name in display or similarity>=0.79
 addr=hit.get("address",{})
 town=norm(row["municipality"].replace(" Borough","").replace(" Township",""))
 loc=" ".join(str(addr.get(k,"")) for k in ("city","town","village","suburb","borough","municipality","county"))
 # Municipalities in postal addresses can differ, so don't demand municipality if exact name matches.
 return name_ok and ("delaware" in norm(loc) or town in display or similarity>=0.92)
updated=0
for i,row in enumerate(data):
 if row.get("latitude") is not None:continue
 municipality=row["municipality"]
 if municipality=="Delaware County": continue
 query=f'{row["name"]}, {municipality}, Delaware County, Pennsylvania'
 hits=get(query)
 time.sleep(1.15)
 accepted=next((h for h in hits if match(row,h)),None)
 if accepted:
  row["latitude"]=round(float(accepted["lat"]),7)
  row["longitude"]=round(float(accepted["lon"]),7)
  row["description"]="Approximate OpenStreetMap place-center pin; playground entrance and amenities not field verified."
  updated+=1
  print("MATCH",row["name"],row["latitude"],row["longitude"])
 else:print("REVIEW",row["name"],municipality)
print("Geocoded",updated,"of",len(data),"candidate places")
path.write_text("// Preliminary municipal directory, maintained in GitHub. Map pins are approximate OSM place centers, not verified entrances.\nimport type {Place} from \"./places\";\nexport const starterPlaces: Place[] = "+json.dumps(data,ensure_ascii=False,indent=2)+";\n")
