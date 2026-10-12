-- Little Detour preliminary municipal inventory, October 2026
-- Run in Supabase SQL Editor. Safe to rerun; inserts only missing slugs.
-- Source-reviewed names; addresses may be intersections or incomplete.
-- Coordinates deliberately NULL until entrances are geocoded and checked.
-- Unverified entries remain unpublished; no made-up pins.

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('6th Avenue Park','ridley-township-6th-avenue-park','playground','6th Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Clymer Lane Park','ridley-township-clymer-lane-park','playground','Clymer Lane','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('James Pentimall Park','ridley-township-james-pentimall-park','playground','Darby Road','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Ridley Municipal Park','ridley-township-ridley-municipal-park','playground','Michigan Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('West Road Park','ridley-township-west-road-park','playground','West Road','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Balignac Park','ridley-township-balignac-park','playground','Balignac Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Father Nall Field','ridley-township-father-nall-field','playground','MacDade Boulevard and Morris Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Moore''s Lake Park','ridley-township-moore-s-lake-park','playground','Lakeview Drive','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('South Swarthmore Avenue Park','ridley-township-south-swarthmore-avenue-park','playground','South Swarthmore Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Blackrock Park','ridley-township-blackrock-park','playground','Michigan Avenue and Blackrock Road','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Hutchinson Avenue Park','ridley-township-hutchinson-avenue-park','playground','Hutchinson Avenue and Grand Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Randall Avenue Park','ridley-township-randall-avenue-park','playground','Randall Avenue and Sherman Avenue','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Tony Daliessio Park','ridley-township-tony-daliessio-park','playground','Smiley Street','Ridley Township','Delaware','https://www.ridleytwp.org/parks-and-recreation','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Eastlake Park','ridley-park-borough-eastlake-park','park','Ridley Park Lake','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Recreation Park (ABC Field)','ridley-park-borough-recreation-park-abc-field','park','Barker Street and Thayer Street','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Nevin Street Park','ridley-park-borough-nevin-street-park','park','Nevin Street and West Hinckley Avenue','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Firehouse Park','ridley-park-borough-firehouse-park','playground','East Ward Avenue behind firehouse','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Bonnes Park','ridley-park-borough-bonnes-park','park','East Hinckley Avenue near Burke Avenue','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Hetzel Park','ridley-park-borough-hetzel-park','playground','Hetzel Road','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Catania Brothers Park','ridley-park-borough-catania-brothers-park','playground','230 West Chester Pike','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Spirit of America Park','ridley-park-borough-spirit-of-america-park','park','Sellers Street and Felton Street','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Ridley Park Public Library','ridley-park-borough-ridley-park-public-library','library','107 East Ward Street','Ridley Park Borough','Delaware','https://ridleyparkborough.org/police-department/community-information/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Harrison Avenue Tot Lot','norwood-borough-harrison-avenue-tot-lot','playground','Harrison Avenue and West Winona Avenue','Norwood Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Kugler Memorial Park','norwood-borough-kugler-memorial-park','park','Mohawk Avenue and East Winona Avenue','Norwood Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Norwood Park','norwood-borough-norwood-park','park','Amosland Road and East Winona Avenue','Norwood Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Glenolden Park','glenolden-borough-glenolden-park','playground','Llanwellyn Avenue and Knowles Avenue','Glenolden Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Arnold Covert Park','darby-township-arnold-covert-park','park',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Lincoln Park Playground','darby-township-lincoln-park-playground','playground',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Conway Park Playground','darby-township-conway-park-playground','playground',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Lawrence Patterson Tot Lot','darby-township-lawrence-patterson-tot-lot','playground',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('James J. Sandone Park','darby-township-james-j-sandone-park','park',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Oakeola Park Playground','darby-township-oakeola-park-playground','playground',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Westbridge Park Playground','darby-township-westbridge-park-playground','playground',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Brookwood Park','darby-township-brookwood-park','park',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Spruce Street Tot Lot','darby-township-spruce-street-tot-lot','playground',NULL,'Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Madison & Beech Playground','darby-township-madison-beech-playground','playground','Madison Avenue and Beech Avenue','Darby Township','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Collingdale Park','collingdale-borough-collingdale-park','park','Jackson Avenue','Collingdale Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Community Center Park','collingdale-borough-community-center-park','park','MacDade Boulevard and Clifton Avenue','Collingdale Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Pusey Playground','collingdale-borough-pusey-playground','playground','Roberta Avenue','Collingdale Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Sharon Hill Memorial Park','sharon-hill-borough-sharon-hill-memorial-park','playground','116 Clifton Avenue','Sharon Hill Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Wiederwax Park','sharon-hill-borough-wiederwax-park','park','849 Elmwood Avenue','Sharon Hill Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Ramblers Field','sharon-hill-borough-ramblers-field','park','250 Calcon Hook Road','Sharon Hill Borough','Delaware',NULL,'unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Bishop Richard Allen Park','radnor-township-bishop-richard-allen-park','playground','227 Brook Street','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Bo Connor Park','radnor-township-bo-connor-park','playground','590 South Devon Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Clem Macrone Park','radnor-township-clem-macrone-park','playground','810 Conestoga Road','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Cowan Park','radnor-township-cowan-park','playground','201 Radnor Street','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Emlen Tunnell Park','radnor-township-emlen-tunnell-park','playground','57 Garrett Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Encke Park','radnor-township-encke-park','playground','305 Iven Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Fenimore Woods','radnor-township-fenimore-woods','playground','1194 Eagle Road','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('North Wayne Park','radnor-township-north-wayne-park','playground','North Wayne Avenue and Beechtree Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Odorisio Park','radnor-township-odorisio-park','playground','West Wayne Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Petrie Park','radnor-township-petrie-park','playground','107 Petrie Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Veterans & First Responders Park','radnor-township-veterans-first-responders-park','playground','406 East Lancaster Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Radnor Trail','radnor-township-radnor-trail','trail','492 Conestoga Road','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Willows Park','radnor-township-willows-park','park','490 Darby-Paoli Road','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Skunk Hollow Park','radnor-township-skunk-hollow-park','park','600 Darby-Paoli Road','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Radnor Nature Park','radnor-township-radnor-nature-park','park','20 Matsonford Road','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Radnor Skate Park','radnor-township-radnor-skate-park','park','301 Iven Avenue','Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Radnor Memorial Library','radnor-township-radnor-memorial-library','library',NULL,'Radnor Township','Delaware','https://www.radnor.com/government/departments/parks-recreation/parks-facilities','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Andy Lewis Community Park','haverford-township-andy-lewis-community-park','playground','Parkview Drive','Haverford Township','Delaware','https://www.haverfordtownship.org/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Bailey Park','haverford-township-bailey-park','park',NULL,'Haverford Township','Delaware','https://www.haverfordtownship.org/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Lawrence Road Park','haverford-township-lawrence-road-park','park',NULL,'Haverford Township','Delaware','https://www.haverfordtownship.org/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Grasslyn Park','haverford-township-grasslyn-park','park',NULL,'Haverford Township','Delaware','https://www.haverfordtownship.org/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Richland Farms Park','haverford-township-richland-farms-park','park',NULL,'Haverford Township','Delaware','https://www.haverfordtownship.org/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Rose Tree County Park','delaware-county-rose-tree-county-park','playground','1671 North Providence Road','Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Smedley County Park','delaware-county-smedley-county-park','park','20 Papermill Road','Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Kent Park','delaware-county-kent-park','park','3900 Bridge Street','Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Delco Woods','delaware-county-delco-woods','park','1797 Sproul Road','Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Upland County Park','delaware-county-upland-county-park','park','280 Sixth Street','Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Clayton County Park','delaware-county-clayton-county-park','park','3173 Garnet Mine Road','Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO public.places (name,slug,category,street_address,municipality,county,source_url,verification_status,is_published,description)
VALUES ('Glen Providence Park','delaware-county-glen-providence-park','park',NULL,'Delaware County','Delaware','https://delcopa.gov/parks/','unverified',false,'Municipal inventory candidate. Verify entrance, amenities, and public access before publishing.')
ON CONFLICT (slug) DO NOTHING;