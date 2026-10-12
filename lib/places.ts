import {starterPlaces} from "./starter-places";
export type Place = { id:string; name:string; slug:string; category:string; description:string|null; municipality:string|null; county:string|null; street_address?:string|null; source_url?:string|null; latitude:number|null; longitude:number|null; amenities:string[]; verification_status:string; };
export async function getPublishedPlaces():Promise<Place[]> {
 const url=process.env.NEXT_PUBLIC_SUPABASE_URL;
 const key=process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY;
 let published:Place[]=[];
 if(url && key){
  try {
   const endpoint=new URL("/rest/v1/places",url);
   endpoint.searchParams.set("select","id,name,slug,category,description,municipality,county,street_address,source_url,latitude,longitude,amenities,verification_status");
   endpoint.searchParams.set("is_published","eq.true");
   endpoint.searchParams.set("order","name.asc");
   endpoint.searchParams.set("limit","1000");
   const response=await fetch(endpoint.toString(),{headers:{"apikey":key,"Authorization":"Bearer "+key},next:{revalidate:300}});
   if(response.ok) published=await response.json() as Place[];
  }catch { /* Still show preliminary directory while backend is unavailable. */ }
 }
 const slugs=new Set(published.map(p=>p.slug));
 return [...published,...starterPlaces.filter(p=>!slugs.has(p.slug))];
}
