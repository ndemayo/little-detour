-- Little Detour starter database schema for Supabase PostgreSQL
-- Apply in Supabase SQL Editor after reviewing. No sample places are presented as verified.
create extension if not exists pgcrypto;

create table if not exists public.places (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text unique not null,
  category text not null check (category in ('playground','park','trail','indoor','museum','library','splash_pad','other')),
  description text,
  street_address text,
  municipality text,
  county text,
  state text not null default 'PA',
  postal_code text,
  latitude double precision check (latitude between -90 and 90),
  longitude double precision check (longitude between -180 and 180),
  amenities text[] not null default '{}',
  age_min integer check (age_min >= 0),
  age_max integer check (age_max >= 0),
  website_url text,
  source_url text,
  verification_status text not null default 'unverified' check (verification_status in ('unverified','source_checked','field_verified')),
  last_verified_at timestamptz,
  is_published boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index if not exists places_county_category_idx on public.places(county,category);
create index if not exists places_published_idx on public.places(is_published);

create table if not exists public.events (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  place_id uuid references public.places(id) on delete set null,
  venue_name text,
  address text,
  municipality text,
  county text,
  latitude double precision check (latitude between -90 and 90),
  longitude double precision check (longitude between -180 and 180),
  starts_at timestamptz not null,
  ends_at timestamptz not null,
  source_url text,
  verification_status text not null default 'unverified' check (verification_status in ('unverified','source_checked','field_verified')),
  is_published boolean not null default false,
  created_at timestamptz not null default now(),
  constraint events_time_order check (ends_at >= starts_at)
);
create index if not exists events_upcoming_idx on public.events(starts_at) where is_published = true;

-- Public clients may only read published content. No client-side writes.
alter table public.places enable row level security;
alter table public.events enable row level security;
create policy "Read published places" on public.places for select to anon, authenticated using (is_published = true);
create policy "Read published events" on public.events for select to anon, authenticated using (is_published = true);

-- Admin mutations will be implemented server-side with authenticated authorization.
