create table notam_tag
(
    id          int auto_increment comment 'id of hunt'
        primary key,
    tag         varchar(255) not null comment 'NOTAM tag name',
    description varchar(255) not null comment 'NOTAM tag description',
    class_name  varchar(255) not null comment 'NOTAM tag class name',
    level       varchar(255) not null comment 'NOTAM tag level'
);

INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (1, 'ATC status/hours', 'ATC operating hours, ATC Strike, ATC failure (ATC Zero). Including FIS/AFIS', ' ATC', 'C1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (2, 'ATC procedure', 'TWR/APP/ACC change of procedure, lost comms procedure, contingency, emergency, DCL departure clearance', ' ATC', 'C2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (3, 'ATC flow and delay', 'Flow control, enroute delays, expect holding', ' ATC', 'C3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (4, 'Radio', 'HF, VHF, CPDLC, Satcom, ATIS - u/s, freq changes etc. KHZ, MHZ.', ' ATC', 'C4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (5, 'Radar & ADS', 'Radar (PSR, MSSR, SMR, PAR, TAR), ADS (ADS-B, ADS-C) & MLAT', ' ATC', 'C5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (6, 'Met', 'Met service hours, VOLMET, Met Equipment, Met Strikes', ' ATC', 'C6');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (7, 'Airport status/hours', 'Airport Closed, Airport operating hours, AD AP not available', ' AIRPORT', 'P1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (8, 'Airport restriction', 'Not available as alternate, airport slots, PPR required, max aircraft weight, etc.', ' AIRPORT', 'P2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (9, 'Fire & Rescue', 'RFF Category change, Rescue equipment', ' AIRPORT', 'P3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (10, 'Fuel', 'All fuel related NOTAMs, JET, JETA1, Avgas, Hydrants, Tankering', ' AIRPORT', 'P4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (11, 'Apron & Parking', 'Apron, Stands, Gates, Followme, Apron lighting, docking, guidance, limited parking', ' AIRPORT', 'P5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (12, 'Airport Facilities', 'Equipment (GSE, Rwy/Twy equip, WDI etc.), Facilities Pax processing, Airport staff strike.', ' AIRPORT', 'P6');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (13, 'Airport Procedure', 'Manoeuvring, Handling, Deboarding, APU usage etc. NABT and noise curfew', ' AIRPORT', 'P7');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (14, 'WIP & Construction', 'Work in Progress, WIP, Construction, Building works, digging, men and equipment', ' AIRPORT', 'P8');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (15, 'Approach not available', 'Instrument approach not available, suspended eg. ILS, VOR/DME approach, RNP approach, LPV.', ' APPROACH', 'A1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (16, 'Approach degraded', 'Some part of ILS not working, no cirlcing, minima not available', ' APPROACH', 'A2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (17, 'Approach change', 'Chart change, Missed approach, RVR minina', ' APPROACH', 'A3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (18, 'Runway closed', 'Runway Closed/Hours', ' RUNWAY', 'R1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (19, 'Runway length', 'TODA, TORA, ASDA, LDA changed, Displaced THR, CWY, Width change.', ' RUNWAY', 'R2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (20, 'Runway strength', 'Runway PCN change, weight restriction.', ' RUNWAY', 'R3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (21, 'Runway lights', 'Including ALS/Approach lights, Stopbars, PAPI, VASI', ' RUNWAY', 'R4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (22, 'Runway condition', 'Poor suface, potholes, ungrooved, FOD, contamination (sand, ash), RWYCC', ' RUNWAY', 'R5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (23, 'Runway note', 'Eg. Runway for Arrivals/Departures only, any other minor changes, runway reopened. Runway markings go here too, signs changed, missing, obscured. Building turbulence (Windshear)', ' RUNWAY', 'R6');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (24, 'Taxiway closed', 'TWY closed, All taxiway closures.', ' TAXIWAY', 'T1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (25, 'Taxiway restriction', 'Taxiway limited to specific aircraft weight/MTOW, entry points, one-way taxiways', ' TAXIWAY', 'T2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (26, 'Taxiway lights', 'TWY taxiway Lights', ' TAXIWAY', 'T3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (27, 'Taxiway condition', 'Poor surface, potholes', ' TAXIWAY', 'T4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (28, 'Taxiway note', 'Taxiway Signs, markings, New named, new taxiway, re-opened. ', ' TAXIWAY', 'T5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (29, 'Navaid status', 'Navaids like VOR, NDB, TACAN. U/S, downgraded.', 'NAVIGATION', 'N1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (30, 'Arrival', 'STAR (Standard Instrument Arrival), any changes to arrival', 'NAVIGATION', 'N2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (31, 'Departure', 'SID, SID not avbl. change, any changes to departures', 'NAVIGATION', 'N3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (32, 'GPS', 'GPS outages, GPS jamming, RAIM, GNSS, EGNOS, WAAS', 'NAVIGATION', 'N4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (33, 'Route closed', 'Airway, ATS Route closed', ' AIRSPACE', 'S1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (34, 'Route restriction', 'Airway, ATS Route Open but some restriction', ' AIRSPACE', 'S2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (35, 'Route changed', 'Change to ATS Route, Airway definition', ' AIRSPACE', 'S3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (36, 'Special Use Airspace', 'SUA\'s - Danger, Prohibited, Restricted, TRA', ' AIRSPACE', 'S4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (37, 'Special Routes', 'Conditional routes. CDR open/closed. CDR1, CDR2, CDR3. Track Systems: Prefered routing, flight level allocation scheme (FLAS), User Prefered Routings (UPR), AUSOTS, Pacific OTS, NAR, NAT Tracks', ' AIRSPACE', 'S5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (38, 'Airspace structure', 'Change to specific area, eg. CTR, TMA, FIR, coordinates', ' AIRSPACE', 'S6');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (39, 'Aircraft activity', 'Air Display, Aerobatics, Balloon or Kite, Exercises, Air Refuelling, Glider, Paraglider, Hang Glider, Banner towing, Mass Movement of aircraft, Parachuting (PJE), Unmanned aircraft, Formation flight, Aerial Survey, Model Flying', ' HAZARDS', 'H1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (40, 'Explosives', 'Fireworks, Blasting, Demolition of explosives, Burning gas', ' HAZARDS', 'H2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (41, 'Missile, Gun or Rocket Firing', 'Military exercises involving any firing activity', ' HAZARDS', 'H3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (42, 'Obstacle - New', 'OBST Newly erected Obstacle, Crane, Wind Farm, Turbines, LIT OBST', ' HAZARDS', 'H4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (43, 'Obstacle - Light out', 'OBST Lights not working u/s Obstacle, Crane, Wind Farm, Turbines', ' HAZARDS', 'H5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (44, 'Wildlife', 'Birds, animals', ' HAZARDS', 'H6');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (45, 'Trigger Notam', 'Trigger Notam pointing to AIRAC change, AIC Sup, etc.', ' LIBRARY', 'L1');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (46, 'Checklist NOTAM', 'Q-KKKK/Checklist of valid NOTAMs', ' LIBRARY', 'L2');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (47, 'AIP Change', 'Change to AIP. Use also for AIC related NOTAM', ' LIBRARY', 'L3');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (48, 'AIP Chart Change', 'Small chart change ie not AIP, including enroute charts.', ' LIBRARY', 'L4');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (49, 'Flight Planning', 'Flight planning requirements, Field 18 of FPL', ' LIBRARY', 'L5');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (50, 'State Rule', 'National notices, Covid rules, Turkey-Greece notams', ' LIBRARY', 'L6');
INSERT INTO notam_ai.notam_tag (id, tag, description, class_name, level) VALUES (51, 'Security warnings', 'Risk warnings, Conflict Zones, Security related NOTAM', ' LIBRARY', 'L7');
