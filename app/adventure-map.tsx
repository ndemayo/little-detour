"use client";
import {useEffect,useRef,useState} from "react";
import type {Place} from "../lib/places";
export default function AdventureMap({places}:{places:Place[]}){
 const el=useRef<HTMLDivElement>(null);
 const map=useRef<import("maplibre-gl").Map|null>(null);
 const [bounds,setBounds]=useState("");
 const [loaded,setLoaded]=useState(false);
 useEffect(()=>{
  if(!el.current)return;
  let disposed=false;
  let markers:import("maplibre-gl").Marker[]=[];
  import("maplibre-gl").then(({default:maplibregl})=>{
   if(disposed||!el.current)return;
   const m=new maplibregl.Map({container:el.current,center:[-75.36,39.92],zoom:10,style:{version:8,sources:{carto:{type:"raster",tiles:["https://tile.openstreetmap.org/{z}/{x}/{y}.png"],tileSize:256,attribution:'© <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}},layers:[{id:"basemap",type:"raster",source:"carto"}]}});
   map.current=m;
   m.addControl(new maplibregl.NavigationControl({showCompass:false}),"top-right");
   m.on("load",()=>{if(!disposed)setLoaded(true)});
   m.on("moveend",()=>{if(!disposed){const c=m.getCenter();setBounds(c.lat.toFixed(3)+", "+c.lng.toFixed(3))}});
   places.filter(p=>p.latitude!=null&&p.longitude!=null).forEach(p=>{
    const popup=new maplibregl.Popup({offset:20}).setHTML('<strong>'+escapeHtml(p.name)+'</strong><br/>'+escapeHtml(p.municipality||""));
    markers.push(new maplibregl.Marker({color:"#638d77"}).setLngLat([p.longitude!,p.latitude!]).setPopup(popup).addTo(m));
   });
  }).catch(()=>{if(!disposed)setLoaded(false)});
  return ()=>{disposed=true;markers.forEach(x=>x.remove());map.current?.remove();map.current=null};
 },[places]);
 return <div className="map-shell"><div ref={el} className="map-canvas" role="region" aria-label="Interactive map of the Philadelphia suburbs"/>{!loaded&&<div className="map-loading">Loading adventure map…</div>}<div className="map-overlay"><span className="map-kicker">EXPLORE THE NEIGHBORHOOD</span><strong>Your next detour starts here.</strong><small>{places.filter(p=>p.latitude!=null&&p.longitude!=null).length} mapped activities · {bounds||"Greater Philadelphia"}</small></div></div>;
}
function escapeHtml(s:string){return s.replace(/[&<>"']/g,c=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]!));}
