import { getPublishedPlaces } from "../lib/places";
import Explore from "./explore";
export default async function Home() {
 let places:Awaited<ReturnType<typeof getPublishedPlaces>>=[];
 let error=false;
 try { places=await getPublishedPlaces(); } catch { error=true; }
 return <Explore places={places} error={error}/>;
}
