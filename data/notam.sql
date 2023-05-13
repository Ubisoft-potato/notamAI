create table notam
(
    id          int auto_increment comment 'id of hunt'
        primary key,
    notam_id    varchar(255)                        not null comment 'NOTAM id',
    message     varchar(2048)                       not null comment 'NOTAM message',
    location    varchar(1024)                       not null comment 'NOTAM location',
    tag         varchar(255)                        not null comment 'NOTAM tag recognized by LLM',
    summary     varchar(255)                        not null comment 'NOTAM summary by LLM',
    create_time timestamp default CURRENT_TIMESTAMP not null comment 'create time',
    update_time timestamp default CURRENT_TIMESTAMP not null comment 'update time'
);

INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (1, 'V0230/23', '[US DOD PROCEDURAL NOTAM] INSTRUMENT APPROACH PROCEDURE AMENDMENT
 RNP RWY 24 INCREASE LAND MINIMA. RAISE LNAV/VNAV DA** CAT D TO
 1617/1700M 404 (500-1700M). CHG * NO-LIGHT NOTE TO READ: **WHEN ALS
 INOP, INCR CAT ABC RVR/VIS TO 1700M; CAT D RVR/VIS TO 1900M.
CREATED: 13 Apr 2023 11:21:00 
SOURCE: KQZC', 'ELLX', '', '', '2023-05-13 01:05:23', '2023-05-13 01:05:23');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (2, 'A2072/23', 'RWY 06/24, RWY EDGE MARKINGS MISSING ON 200 M BTN THR 06 AND TWY G
CREATED: 12 May 2023 03:11:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:23', '2023-05-13 01:05:23');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (3, 'A2068/23', 'TWY F NOT AVBL ACFT WTC H
CREATED: 11 May 2023 14:39:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:23', '2023-05-13 01:05:23');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (4, 'A1949/23', 'RWY 24 ILS CAT III OPERATIONS DOWNGRADED TO CAT I OPERATIONS
ONLY
CREATED: 05 May 2023 13:01:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:23', '2023-05-13 01:05:23');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (5, 'A1882/23', 'TRIGGER NOTAM - PERM AIRAC AMDT 004/2023 18 MAY 2023.
RWY REGULATIONS. NEW PARAGRAPH ON REDUCED RWY SEPARATION MINIMA
CREATED: 03 May 2023 12:31:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:23', '2023-05-13 01:05:23');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (6, 'A1834/23', 'RWY 06/24 VARIABLE FRICTION CONDITIONS EXPECTED DUE TO ASPHALT 
OVERLAY WORKS
CREATED: 02 May 2023 10:13:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (7, 'A1833/23', 'RWY 06/24 CLSD DUE TO WIP EXC FOR FLT WITH SPECIAL PERMISSION 
FROM ANA
CREATED: 02 May 2023 09:33:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (8, 'A1748/23', 'TWY D1 AND TWY D2, STOP BARS U/S DUE TO WIP.
CREATED: 26 Apr 2023 14:55:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (9, 'A1747/23', 'RWY 24 CAT II/III APPROACH LGT SWITCHED OFF DUE TO WIP.
CREATED: 26 Apr 2023 14:53:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (10, 'A1745/23', 'APRONS P5, P7, P10, CL LGT SWITCHED OFF DUE TO WIP.
CREATED: 26 Apr 2023 14:50:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (11, 'A1744/23', 'ALL TWYS, CL LGT SWITCHED OFF DUE TO WIP.
CREATED: 26 Apr 2023 14:41:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (12, 'A1742/23', 'RWY24, TDZ LGT SWITCHED OFF DUE TO WIP.
CREATED: 26 Apr 2023 14:28:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:24', '2023-05-13 01:05:24');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (13, 'A1741/23', 'RWY 06/24, RCLL SWITCHED OFF DUE TO WIP
CREATED: 26 Apr 2023 14:15:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:25', '2023-05-13 01:05:25');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (14, 'A1710/23', 'IFR TRAINING FLT NOT AUTH DUE TO CAPACITY REGULATIONS.
REF AIP BELGIUM AND LUXEMBOURG AD 2.20 ELLX LOCAL AERODROME 
REGULATIONS PARA 5.7 TRAINING AND TEST FLIGHTS
CREATED: 24 Apr 2023 20:00:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:25', '2023-05-13 01:05:25');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (15, 'A1317/23', 'REF AIP BELGIUM AND LUXEMBOURG ELLX AD 2.22 PARAGRAPH 3.1
STARTING PROCEDURES TO READ:
ALL OUTBOUND FLIGHTS SHALL CHECK
THEIR EOBT AND UPDATE VIA HANDLING OR ARO IF NECESSARY. IF CTOT
CANNOT BE MET REQUEST DELAY VIA HANDLING OR ARO.
PILOTS SHALL
CHECK ATIS IN ORDER TO SEE IF LUXEMBOURG DELIVERY IS
ACTIVE.
-ALL OUTBOUND FLIGHTS CONTACT LUXEMBOURG DELIVERY.
START-UP SHALL BE REQUESTED FROM LUXEMBOURG DELIVERY EOBT-15 MIN OR
CTOT-30 MIN EARLIEST IF ATTRIBUTED AND READY TO PUSH-BACK AND/OR
TAXI ACCORDINGLY. PILOTS SHALL REQUEST DEPARTURE CLEARANCE TO
LUXEMBOURG DELIVERY AFTER START-UP HAS BEEN GRANTED BY LUXEMBOURG
DELIVERY.
-IF LUXEMBOURG DELIVERY CLOSED BY ATIS, START-UP SHALL
BE REQUESTED FROM LUXEMBOURG TWR  EOBT-15 MIN OR CTOT-30 MIN
EARLIEST IF ATTRIBUTED AND READY TO PUSH-BACK AND/OR TAXI
IMMEDIATELY. PILOTS SHALL REQUEST THEIR DEPARTURE CLEARANCE AFTER
START-UP HAS BEEN GRANTED BY TWR.
ATC START-UP AND/OR PUSH-BACK
CLEARANCES ARE BASED ON THE ASSUMPTION THAT AN AVERAGE OF 15 MIN IS
REQUIRED FOR START-UP, PUSH-BACK, TAXI AND TAKE-OFF MANOEUVRES.
PILOTS SHALL REPORT THEIR PARKING STAND WITH THE REQUEST FOR
START-UP CLEARANCE. START-UP AND/OR PUSH-BACK SHALL BE PERFORMED
WITHOUT DELAY AFTER RECEPTION OF THE RESPECTIVE CLEARANCE. AN ATC
DEPARTURE CLEARANCE SHALL ONLY BE REQUESTED AFTER START-UP AND/OR
PUSH-BACK HAS BEEN GRANTED BY ATC.
CREATED: 05 Apr 2023 12:20:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:25', '2023-05-13 01:05:25');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (16, 'A1316/23', 'REF AIP BELGIUM AND LUXEMBOURG ELLX AD 2.18 TO READ FOR TWR
LUXEMBOURG DELIVERY:
-HOURS OF OPERATION: HS
-REMARKS:
CLEARANCE DELIVERY 8.33 KHZ CH
OPERATIONAL HOURS: 0500-2200
(0400-2100)
DOC: 5 NM - GND
SEE ELLX AD 2.22, PARAGRAPHE 3.1
CREATED: 05 Apr 2023 12:18:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:26', '2023-05-13 01:05:26');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (17, 'A1314/23', 'REDUCED RWY SEPARATION MINIMA ONLY APPLICABLE AS OF 01 JUN 2023.
REF AIRAC AIP AMDT 004/2023.
CREATED: 05 Apr 2023 11:25:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:26', '2023-05-13 01:05:26');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (18, 'A1212/23', 'CRANE ERECTED AT PSN 493833N 0061247E RADIUS 70M AT 1NM BRG
295DEG FM ELLX THR24, OLS PENETRATION 70M/230FT. MAX ALT
476M/1562FT, MAX HGT 46M/151FT. ICAO MARKINGS AND FIXED RED TYPE B
LGT AT NGT
CREATED: 29 Mar 2023 11:09:00 
SOURCE: EUECYIYN', 'ELLX', '', '', '2023-05-13 01:05:26', '2023-05-13 01:05:26');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (19, 'A2513/23', 'NEW COORDINATES FOR FOLLOWING ACFT STANDS INS POINTS :
I30 490054.27N 0023011.54E
I31 490054.13N 0023008.97E
I32 490053.99N 0023006.39E
I33 490053.81N 0023002.97E
I34 490053.66N 0023000.04E
I71 490101.69N 0023006.24E
I72 490101.83N 0023005.88E
I73 490101.53N 0023003.22E
I74 490101.64N 0023002.32E
I75 490101.38N 0023000.04E
I76 490101.45N 0022958.67E
I77 490101.22N 0022957.59E
I78 490101.24N 0022954.84E
I79 490101.06N 0022954.56E
M26 485959.46N 0023205.20E
M28 485959.85N 0023205.20E
N65 485930.81N 0023154.43E
N66 485932.59N 0023156.06E
N67 485932.64N 0023154.93E
N76 485927.68N 0023155.55E
N77 485927.74N 0023158.86E.
CREATED: 11 May 2023 07:37:00 
SOURCE: EUECYIYN', 'LFPG', '', '', '2023-05-13 01:05:26', '2023-05-13 01:05:26');
INSERT INTO notam_ai.notam (id, notam_id, message, location, tag, summary, create_time, update_time) VALUES (20, 'A2392/23', 'WORKS TO SEPARATE THE GLYCOL WATER AND THE SEWAGE NETWORKS OF THE 
SE1 AND SE3 DE-ICING AREAS - AIRAC AIP SUP 082/23 :
SUBJECT : CLOSURE OF THESE DE-ICING AREAS AND OF TAXIWAYS.
THIS AIP SUP IS AVBL AT WWW.SIA.AVIATION-CIVILE.GOUV.FR
CREATED: 04 May 2023 09:15:00 
SOURCE: EUECYIYN', 'LFPG', '', '', '2023-05-13 01:05:26', '2023-05-13 01:05:26');
