"use client";
import {useMemo,useState} from "react";
import type {Place} from "../lib/places";
const categories=["All","Playgrounds","Parks & Trails","Indoor Fun","Events"];
function labelFor(category:string){return ({playground:"Playgrounds",park:"Parks & Trails",trail:"Parks & Trails",indoor:"Indoor Fun",museum:"Indoor Fun",library:"Indoor Fun",splash_pad:"Playgrounds"} as Record<string,string>)[category]??"Other";}
export default function Explore({places,error}:{places:Place[],error:boolean}){
 const [category,setCategory]=useState("All");
 const [search,setSearch]=useState("");
 const filtered=useMemo(()=>places.filter(p=>(category==="All"||labelFor(p.category)===category)&&[p.name,p.municipality,p.county,p.description].some(v=>v?.toLowerCase().includes(search.toLowerCase()))),[places,category,search]);
 return <main>
 <header className="header"><a href="/" className="logo">little<span>detour.</span></a><a href="#explore" className="navlink">Explore adventures ↗</a></header>
 <section className="hero"><div className="eyebrow">A LITTLE FRESH AIR. A LOT OF WONDER.</div><h1>Big adventures for <em>little explorers.</em></h1><p>Your guide to playgrounds, parks, rainy-day escapes and all the little moments that turn into big memories.</p><a href="#explore" className="cta">Find your next adventure ↗</a><div className="illustration" aria-hidden="true"><span className="sun">☀</span><span className="hill">✿ 🌿 ✿</span></div></section>
 <section className="explore" id="explore"><div className="eyebrow">LET'S GO SOMEWHERE</div><h2>Where to today?</h2><p>Discover the places that make childhood magical.</p><input className="search" aria-label="Search activities" placeholder="Search for an adventure..." value={search} onChange={e=>setSearch(e.target.value)}/><div className="categories">{categories.map(c=><button type="button" key={c} className={category===c?"active":""} onClick={()=>setCategory(c)}>{c}</button>)}</div>
 {error?<div className="placeholder"><h3>Directory temporarily unavailable</h3><p>Please check back shortly.</p></div>:filtered.length?<div className="place-grid">{filtered.map(p=><article className="place-card" key={p.id}><div className="eyebrow">{labelFor(p.category)} · {p.verification_status.replaceAll("_"," ")}</div><h3>{p.name}</h3><p>{p.description||"Details coming soon."}</p><small>{[p.municipality,p.county].filter(Boolean).join(", ")}</small></article>)}</div>:<div className="placeholder"><div className="placeholder-icon">✦</div><h3>{places.length?"No matching adventures yet":"Adventures are on the way"}</h3><p>{places.length?"Try a different category or search term.":"We're building a carefully researched local activity directory. Verified listings and the interactive map are coming next."}</p></div>}
 </section><footer><span className="logo">little<span>detour.</span></span><span>Big adventures for little explorers.</span></footer>
 </main>;
}
