"use client";
import { useState } from "react";
const categories=["All","Playgrounds","Parks & Trails","Indoor Fun","Events"];
export default function Home(){
 const [category,setCategory]=useState("All");
 const [search,setSearch]=useState("");
 return <main>
 <header className="header"><a href="/" className="logo">little<span>detour.</span></a><a href="#explore" className="navlink">Explore adventures ↗</a></header>
 <section className="hero"><div className="eyebrow">A LITTLE FRESH AIR. A LOT OF WONDER.</div><h1>Big adventures for <em>little explorers.</em></h1><p>Your guide to playgrounds, parks, rainy-day escapes and all the little moments that turn into big memories.</p><a href="#explore" className="cta">Find your next adventure ↗</a><div className="illustration" aria-hidden="true"><span className="sun">☀</span><span className="hill">✿ 🌿 ✿</span></div></section>
 <section className="explore" id="explore"><div className="eyebrow">LET'S GO SOMEWHERE</div><h2>Where to today?</h2><p>Discover the places that make childhood magical.</p><input className="search" aria-label="Search activities" placeholder="Search for an adventure..." value={search} onChange={e=>setSearch(e.target.value)}/><div className="categories">{categories.map(c=><button type="button" key={c} className={category===c?"active":""} onClick={()=>setCategory(c)}>{c}</button>)}</div><div className="placeholder"><div className="placeholder-icon">✦</div><h3>Adventures are on the way</h3><p>We're building a carefully researched local activity directory. Real listings, verified details and the interactive map are coming next.</p><small>Current selection: {category}{search?" · Search: "+search:""}</small></div></section>
 <footer><span className="logo">little<span>detour.</span></span><span>Big adventures for little explorers.</span></footer>
 </main>;
}