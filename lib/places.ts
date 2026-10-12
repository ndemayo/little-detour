export type Place = { id:string; name:string; slug:string; category:string; description:string|null; municipality:string|null; county:string|null; latitude:number|null; longitude:number|null; amenities:string[]; verification_status:string; };
export async function getPublishedPlaces():Promise<Place[]> {
 const url=process.env.NEXT_PUBLIC_SUPABASE_URL;
 const key=process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY;
 if(!url || !key) return [];
 const endpoint=new URL("/rest/v1/places",url);
 endpoint.searchParams.set("select","id,name,slug,category,description,municipality,county,latitude,longitude,amenities,verification_status");
 endpoint.searchParams.set("is_published","eq.true");
 endpoint.searchParams.set("order","name.asc");
 endpoint.searchParams.set("limit","250");
 const response=await fetch(endpoint.toString(),{headers:{"apikey":key,"Authorization":"Bearer "+key},next:{revalidate:300}});
 if(!response.ok) throw new Error("Activity directory temporarily unavailable");
 return await response.json() as Place[];
}
