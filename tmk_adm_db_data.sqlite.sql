BEGIN TRANSACTION;
DROP TABLE IF EXISTS "dic_affinities";
CREATE TABLE IF NOT EXISTS "dic_affinities" (
	"Kategoria"	TEXT NOT NULL UNIQUE,
	"Kod kategorii"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("Kategoria")
);
DROP TABLE IF EXISTS "dic_phone_statuses";
CREATE TABLE IF NOT EXISTS "dic_phone_statuses" (
	"phone_statuses"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("phone_statuses")
);
DROP TABLE IF EXISTS "log_hist";
CREATE TABLE IF NOT EXISTS "log_hist" (
	"id"	INTEGER NOT NULL,
	"fileName"	TEXT,
	"insertedRows"	INTEGER,
	"loadDate"	TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "dic_xls_marked_columns";
CREATE TABLE IF NOT EXISTS "dic_xls_marked_columns" (
	"column_name"	TEXT NOT NULL UNIQUE,
	"column_type"	TEXT NOT NULL,
	"target_schema"	INTEGER,
	PRIMARY KEY("column_name")
);
DROP TABLE IF EXISTS "dim_campcd_affinity";
CREATE TABLE IF NOT EXISTS "dim_campcd_affinity" (
	"campcd"	TEXT NOT NULL,
	"kategoria"	TEXT,
	"kod_kategorii"	TEXT,
	PRIMARY KEY("campcd")
);
DROP TABLE IF EXISTS "dim_call_code";
CREATE TABLE IF NOT EXISTS "dim_call_code" (
	"call_code"	TEXT NOT NULL,
	"clean_call_code"	TEXT,
	PRIMARY KEY("call_code")
);
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Alkohole','AL');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Budownictwo','BU');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Developerzy','DE');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Dom i Wnętrze','HL');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('E-commerce/Handel','EC');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Edukacja','ED');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Energia','UT');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Finanse','FI');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Internet Technologies','IT');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Konferencje','CF');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Loterie','LO');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Media','MD');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Moda','FA');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Motoryzacja','AU');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('My Company','MC');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('RTV/AGD','HG');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Rozrywka/Styl życia','EN');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Społeczeństwo i Rząd','SG');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Telekomunikacja','TE');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Transport/Logistyka','TL');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Turystyka','TR');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Ubezpieczenia','IN');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Uroda','BE');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Usługi','SE');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Wierzytelności','DC');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Zdrowie','HE');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Zwierzęta','AN');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Środki czystości','CL');
INSERT INTO "dic_affinities" ("Kategoria","Kod kategorii") VALUES ('Żywność','FO');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Brak osoby docelowej');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Firma nie istnieje');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Firma zawieszona/ w likwidacji');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Nie spełnia założeń akcji');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Niezainteresowany - brak potrzeby');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Odmowa rozmowy');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Pomyłka');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Przekroczony LIMIT PRÓB');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('RODO');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('ZAINTERESOWANY LP');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('KONTAKT w sprawie INNEJ MARKI');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Mieszkanie prywatne');
INSERT INTO "dic_phone_statuses" ("phone_statuses") VALUES ('Poczta głosowa');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (1,'100 Revoplus.xlsx',0,'2022-07-07 19:27:14.207028');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (2,'101 Bibby Financial Services.xlsx',1088,'2022-07-07 19:27:28.426347');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (3,'102 AKAMAI.xlsx',1122,'2022-07-07 19:27:35.129816');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (4,'103 BMW Kampania wsparciowa.xlsx',44206,'2022-07-07 19:31:30.820308');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (5,'104 Orange B2B kampania wsparciowa.xlsx',71171,'2022-07-07 19:37:05.555888');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (6,'105 MAN kampania wsparciowa.xlsx',2776,'2022-07-07 19:37:56.402467');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (7,'106 Suzuki Kampania wsparciowa.xlsx',1795,'2022-07-07 19:38:09.651547');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (8,'107 Deweloper mazowieckie kampania wsparciowa.xlsx',2833,'2022-07-07 19:38:26.160034');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (9,'108 Allegro kampania wsparciowa.xlsx',1286,'2022-07-07 19:38:45.148002');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (10,'109 Synaeriz Sprzedaż.xlsx',437,'2022-07-07 19:38:52.720365');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (11,'117 Volvo Używane_Polska_Kampania wsparciowa.xlsx',4453,'2022-07-07 19:39:12.469077');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (12,'118 Volvo Nowe_Polska_Kampania wsparciowa_część 1.xlsx',43345,'2022-07-07 19:42:14.864610');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (13,'118 Volvo Nowe_Polska_Kampania wsparciowa_część 2.xlsx',48748,'2022-07-07 19:47:14.465005');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (14,'118 Volvo Nowe_Polska_Kampania wsparciowa_część 3.xlsx',19972,'2022-07-07 19:49:35.670900');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (15,'161 Mitsubishi.xlsx',18,'2022-07-07 19:49:53.171346');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (16,'161 Mitsubishi_mod.xlsx',18,'2022-07-07 19:49:54.688265');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (17,'163 Land Rover_Kampania wsparciowa.xlsx',2076,'2022-07-07 19:50:03.093922');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (18,'165 Peugot osobowe_Kampania wsparciowa.xlsx',14536,'2022-07-07 19:51:41.185181');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (19,'19 Tchibo Biura.xlsx',0,'2022-07-07 19:52:02.641678');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (20,'19 Tchibo Biura_mod.xlsx',0,'2022-07-07 19:52:06.907019');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (21,'209 Orlen Usługi Kurierskie Kampania Wsparciowa.xlsx',314,'2022-07-07 19:52:13.171417');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (22,'212 Volkswagen Financial Services Kampania Wsparciowa.xlsx',309,'2022-07-07 19:52:18.348017');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (23,'215 Mazda Kampania Wsparciowa.xlsx',2002,'2022-07-07 19:52:25.845195');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (24,'218 Inpost FulFilment TMK.xlsx',22475,'2022-07-07 19:54:03.252932');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (25,'219 Ford Kampania Wsparciowa.xlsx',47,'2022-07-07 19:54:24.863796');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (26,'220 BP KOMFORT PLUS Prepaid Kampania Wsparciowa.xlsx',0,'2022-07-07 19:54:37.060492');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (27,'224 KaizenFleet Kampania Wsparciowa.xlsx',1149,'2022-07-07 19:54:43.345768');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (28,'225 Inpost Abonamenty TMK.xlsx',3302,'2022-07-07 19:55:29.363042');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (29,'226 BP system e-TOLL Kampania Wsparciowa.xlsx',2285,'2022-07-07 19:55:51.751369');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (30,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_1.xlsx',18202,'2022-07-07 19:57:08.978043');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (31,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_2.xlsx',30876,'2022-07-07 19:59:34.888125');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (32,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_3.xlsx',38096,'2022-07-07 20:02:39.312761');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (33,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_4.xlsx',4998,'2022-07-07 20:03:28.094440');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (34,'230 Porsche Kampania Wsparciowa.xlsx',0,'2022-07-07 20:03:41.278753');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (35,'231 Webinar MCP Billenium Inperly.xlsx',0,'2022-07-07 20:03:48.157224');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (36,'233 Opel Kampania Wsparciowa.xlsx',8428,'2022-07-07 20:04:25.873059');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (37,'237 Fedex Kampania Wsparciowa.xlsx',7399,'2022-07-07 20:05:11.180170');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (38,'239 INEA Kampania Wsparciowa.xlsx',713,'2022-07-07 20:05:31.555055');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (39,'240 mBank Kampania Wsparciowa.xlsx',3926,'2022-07-07 20:05:50.254157');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (40,'241 Virgin Kampania Wsparciowa.xlsx',3087,'2022-07-07 20:06:10.723734');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (41,'242 Orange Smart Water Kampania Wsparciowa.xlsx',72,'2022-07-07 20:06:22.134306');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (42,'244 Viatris Kampania Wsparciowa.xlsx',478,'2022-07-07 20:06:34.610719');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (43,'245 INSTA 21 Developer Kampania Wsparciowa.xlsx',2027,'2022-07-07 20:06:50.605936');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (44,'247 Żabka wynajem lokali.xlsx',696,'2022-07-07 20:07:03.795158');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (45,'248 Play B2B małe firmy Kampanie wsparciowe.xlsx',6004,'2022-07-07 20:07:43.998430');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (46,'249 PZU Firma i Pracownicy B2B Kampania Wsparciowa.xlsx',1728,'2022-07-07 20:08:16.490344');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (47,'250 Renault Kampania Wsparciowa.xlsx',3713,'2022-07-07 20:08:41.709447');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (48,'251 Pekao B2B Kampania Wsparciowa.xlsx',128,'2022-07-07 20:08:52.133091');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (49,'252 Orlen Paliwa TMK.xlsx',1044,'2022-07-07 20:09:07.774020');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (50,'253 NJU kampania Wsparciowa.xlsx',0,'2022-07-07 20:09:17.666711');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (51,'255 Smart Lunch TMK.xlsx',1644,'2022-07-07 20:09:26.270449');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (52,'257 Luxmed TMK.xlsx',1972,'2022-07-07 20:09:39.315707');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (53,'258 LangMedia TMK.xlsx',1974,'2022-07-07 20:09:51.067913');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (54,'259 Dacia Kampania Wsparciowa.xlsx',4508,'2022-07-07 20:43:45.529270');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (55,'260 IDEA MONEY TMK.xlsx',977,'2022-07-07 20:44:05.545701');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (56,'261 E.ON Kampania Wsparciowa.xlsx',647,'2022-07-07 20:44:15.226660');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (57,'262 DHL Express TMK.xlsx',1155,'2022-07-07 20:44:35.873717');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (58,'264 Webinar Cloudware Polska MCP Z głową w chmurze Kampania Wsparciowa.xlsx',5328,'2022-07-07 20:45:08.733594');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (59,'265 Webinar ARP MCP Pieniądze dla firm w czasie kryzysu Kampania Wsparciowa.xlsx',3820,'2022-07-07 20:45:51.812133');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (60,'268 Webinar Fairtrade MCP Kampania Wsparciowa.xlsx',685,'2022-07-07 20:46:12.868847');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (61,'269 Lexus Kampania Wsparciowa.xlsx',1850,'2022-07-07 20:46:29.327963');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (62,'27 PPE.xlsx',0,'2022-07-07 20:47:56.564356');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (63,'27 PPE_mod.xlsx',10420,'2022-07-07 20:49:14.357314');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (64,'271 Nissan Kampania Wsparciowa.xlsx',5937,'2022-07-07 20:49:57.875873');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (65,'272 Deweloper  Śląsk Kampania wsparciowa.xlsx',592,'2022-07-07 20:50:19.670794');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (66,'273 Deweloper Warmińsko Mazurskie Kampania Wsparciowa.xlsx',3973,'2022-07-07 20:50:50.493323');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (67,'274 Spoticar Kampania Wsparciowa.xlsx',2991,'2022-07-07 20:51:17.796458');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (68,'275 TectumGroup TMK.xlsx',2036,'2022-07-07 20:51:47.202737');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (69,'280 GiGruop Kampania Wsparciowa.xlsx',674,'2022-07-07 20:52:08.217039');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (70,'281 Medicover B2B Webinar Kampania wsparciowa.xlsx',1984,'2022-07-07 20:52:22.935717');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (71,'283 Smartney TMK.xlsx',33,'2022-07-07 20:52:32.341844');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (72,'284 CreditAgricole Kampania Wsparciowa.xlsx',482,'2022-07-07 20:52:35.638477');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (73,'285 Euromaster Kampania Wsparciowa.xlsx',148,'2022-07-07 20:52:43.357038');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (74,'36 SMEO Factoring.xlsx',22654,'2022-07-07 20:55:31.634290');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (75,'36 SMEO Factoring_mod.xlsx',10599,'2022-07-07 20:59:01.600120');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (76,'57 YouLead.xlsx',0,'2022-07-07 20:59:24.022540');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (77,'57 YouLead_mod.xlsx',231,'2022-07-07 20:59:27.209094');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (78,'59 Play B2B Klient biznesowy.xlsx',0,'2022-07-07 21:00:06.391104');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (79,'59 Play B2B Klient biznesowy_mod.xlsx',615,'2022-07-07 21:00:46.736410');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (80,'60 Faktoria kampania_wsparciowa.xlsx',0,'2022-07-07 21:01:36.770989');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (81,'60 Faktoria kampania_wsparciowa_mod.xlsx',7426,'2022-07-07 21:02:24.254219');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (82,'61 International Automotive Business Meeting.xlsx',0,'2022-07-07 21:02:45.723520');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (83,'71 Jeep Kampania wsparciowa.xlsx',8191,'2022-07-07 21:03:19.437874');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (84,'76 Idea Money Kampania Wsparciowa.xlsx',6374,'2022-07-07 21:04:22.489971');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (85,'81 Medicover B2B Kampania wsparciowa.xlsx',10175,'2022-07-07 21:06:47.114983');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (86,'84 NN PPK.xlsx',11616,'2022-07-07 21:10:23.567104');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (87,'85 Finea Faktoring.xlsx',806,'2022-07-07 21:10:50.032455');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (88,'90 PZU SME.xlsx',31286,'2022-07-07 21:15:06.719904');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (89,'95 BP Plus kampania wsparciowa.xlsx',11690,'2022-07-07 21:16:43.678721');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (90,'96 Volvo dostępne od ręki Wawa Kampania wsparciowa.xlsx',9636,'2022-07-07 21:18:02.977856');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (91,'97 Lumixled.xlsx',10496,'2022-07-07 21:20:31.898984');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (93,'Eksportuj 2022-04-19 193723.xlsx',NULL,'2022-07-07 21:42:10.808479');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (94,'Eksportuj 2022-04-19 210819.xlsx',38333,'2022-07-07 21:48:48.216568');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (95,'Eksportuj 2022-04-19 213832.xlsx',3,'2022-07-07 21:49:22.698076');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (96,'Eksportuj 2022-04-19 213832_mod.xlsx',3,'2022-07-07 21:49:23.467180');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (97,'Eksportuj 2022-04-20 100827.xlsx',386,'2022-07-07 21:49:26.789517');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (98,'Eksportuj 2022-04-20 100827_mod.xlsx',236,'2022-07-07 21:49:33.722754');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (99,'Eksportuj 2022-04-20 101011.xlsx',6167,'2022-07-07 21:50:10.887692');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (100,'Eksportuj 2022-04-20 101011_mod.xlsx',6167,'2022-07-07 21:50:54.761161');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (101,'T-Mobile Kampania wsparciowa.xlsx',0,'2022-07-07 21:51:04.476145');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (102,'100 Revoplus_mod.xlsx',4450,'2022-07-07 22:04:13.053009');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (103,'19 Tchibo Biura_mod2.xlsx',0,'2022-07-07 22:10:52.668657');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (104,'220 BP KOMFORT PLUS Prepaid Kampania Wsparciowa_mod.xlsx',3396,'2022-07-07 22:39:08.919567');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (105,'230 Porsche Kampania Wsparciowa_mod.xlsx',0,'2022-07-07 22:44:26.825941');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (106,'231 Webinar MCP Billenium Inperly_mod.xlsx',452,'2022-07-07 22:47:06.030173');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (107,'253 NJU kampania Wsparciowa_mod.xlsx',712,'2022-07-07 22:48:54.046181');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (108,'61 International Automotive Business Meeting_mod.xlsx',314,'2022-07-07 22:50:52.796583');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (109,'T-Mobile Kampania wsparciowa_mod.xlsx',2295,'2022-07-07 22:52:56.064389');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (110,'Eksportuj 2022-04-20 101011_mod2.xlsx',6167,'2022-07-07 23:05:57.488153');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (111,'Eksportuj 2022-04-19 193723_mod.xlsx',38333,'2022-07-07 23:15:19.159415');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (112,'Ecport_2022.03.23.xlsx',37578,'2022-07-07 23:25:24.844452');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('RecordState','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('LastCallCode','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('LastTryTime','datetime64[ns]',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('TELEFON2','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('TELEFON1','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('TELEFON4','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('TELEFON3','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Source','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('LastName','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('FirstName','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('CustomerBusiness_Id','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('PKD','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('OPIS','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Wojewodztwo','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('ApartmentNumber','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('HouseNumber','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('ZipCode','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Street','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('City','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('CompanyName','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('mrktcd','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('campcd','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('DataGodzinaKontaktu','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('EmailPotwierdzony','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('ImieNazwiskoPotwierdzone','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('MiastoPotwierdzone','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('WybranyDealer','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('TelefonPotwierdzony','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('NazwiskoPotwierdzone','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('ImiePotwierdzone','string',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('ImportId','int64',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('ImportCreatedOn','datetime64[ns]',1);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Phone1','string',0);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Phone2','string',0);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Phone3','string',0);
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type","target_schema") VALUES ('Phone4','string',0);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('100',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('103',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('104',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('106',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('108',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('118',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('161',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('163',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('165',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('209',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('218',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('219',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('224',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('225',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('226',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('229',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('233',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('237',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('241',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('251',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('253',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('259',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('264',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('265',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('268',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('269',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('273',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('283',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('284',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('285',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('61',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('71',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('76',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('96',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('Ecport_2022.03.23.xlsx',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('Eksportuj',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T-Mobile',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P13',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P15',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P20',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P25',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P28',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P33',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P34',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P35',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P39',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P3D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P3F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P44',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P46',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P51',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P5B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P5D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P6C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P75',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P79',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P7M',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P7Q',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P7S',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P84',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P8A',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P8G',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P94',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P98',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P9C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P9G',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P9H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33P9I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PB3',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PB8',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PBA',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PBB',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PBD',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PBE',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PBF',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PCA',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T33PCC',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P13',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P17',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P19',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P1F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P1H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P1K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P1N',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P1P',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P21',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P23',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P26',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P2B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P2C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P30',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P31',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P34',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P38',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P3K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P46',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P4E',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P4N',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P4O',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P4P',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P52',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P54',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P55',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P5D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P5D   ',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P60',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P61',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P63',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P66',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P69',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P6G',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P70',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P73',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P74',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P76',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P78',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P79',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7G',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7M',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7N',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7O',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7R',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7S',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7T',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P7W',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P80',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P81',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P82',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P84',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P85',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P88',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P89',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P8H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P8I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P90',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P92',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P96',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P98',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P99',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9F ',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9L',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9O',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9P',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9S',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9U',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9W',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34P9X',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA0',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA1',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA2',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA3',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA4',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA6',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PA7',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAA',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAC',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAG',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAH',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAI',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAK',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAM',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PAN',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB0',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB0                       ',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB1',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB2',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB3',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB4',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB8',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PB9',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PBB',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PBD',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PBE',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC1',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC2',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC3',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC4',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC6',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC8',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PC9',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCA',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCC',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCE',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCF',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCG',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCI',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCJ',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCM',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCN',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCO',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T34PCR',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P10',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P11',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P12',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P14',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P16',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1A',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1F    ',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P1K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P21',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P23',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P25',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P27',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P28',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2A',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2E',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2G',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2J',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2L',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2M',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2N',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2P',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2R',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2T',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P2U',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P31',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P32',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3A',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3E',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3M',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3O',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3P',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3R',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3S',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P3U',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P43',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P46',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P48',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4E',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4J',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4L',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4N',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4O',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4P',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4T',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P4X',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P50',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P52',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P59',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5C',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5D',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5E',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5F',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5G',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5H',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5I',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5J',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5K',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P5N',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P60',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P62',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P63',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P6A',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P6B',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P6M',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P6S',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('T35P6U',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('Transport drogowy towarów',NULL,NULL);
INSERT INTO "dim_campcd_affinity" ("campcd","kategoria","kod_kategorii") VALUES ('dummy',NULL,NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Oddzwonienie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Niezainteresowany - brak potrzeby',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Odmowa rozmowy',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma nie istnieje',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Poczta głosowa',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Brak osoby docelowej',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Pomyłka',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Korzysta już z factoringu',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('RODO',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już klientem BIBBY FS',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mieszkanie prywatne',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Niezainteresowany - mają w firmie wdrożoną pracę zdalną',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Nie spełnia założen kampanii',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Korzysta już z podobnej usługi u konkurencji',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Niezainteresowany - "nie bo nie"',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY Enterprise Application Access',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma w likwidacji/ w trakcie zmian',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Niezainteresowany - Brak potrzeby',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Zainteresowany',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Oddzownienie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada inny model BMW',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada już proponowany model BMW',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('KONTAKTwsprawieINNEJMARKI',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma w likwidacji/ upadłości/ w trakcie zmian',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Niezainteresowany',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już klientem Orange',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Przekroczony LIMIT PRÓB',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Nie spełnia założeń akcji',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY LP',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma zawieszona/ w likwidacji',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada już INNY model',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Już sprzedają na allegro',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Ma już Volvo',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('KONTAKT w sprawie INNEJ MARKI',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('JUŻ KTOŚ DZOWNIŁ w sprawie tej lub innej marki',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada już proponowany model',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada już PROPONOWANY model',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już klientem VFS',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Sekretariat odmawia przełączenia',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Ma już auto tej marki',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Już współpracują z inPost',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Już współpracują z konkurencją',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mniej niż 200 paczek',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Korzysta z Allegro',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma w trakcie zmian',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Sprzedają na OLX, ALLEGRO, VINTED',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Duże gabaryty i palety',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Już ktoś dzownił z InPost w sprawie Abonamentów',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Towary wykluczone z transportu ',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Dropshipping',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Korzysta z kart paliwowych konkurencji',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Brokerska obsługa',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już klientem Virgin',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już klientem tej sieci',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mają już dofinansowanie posiłków',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mają już opiekę medyczną w innej firmie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Współpracują już  z Luxmed',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mniej niż 100 zatrudnionych',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mają już benefit językowy w innej firmie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('KONTAKT w sprawie INNEJ MARKI ',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada już INNY model tej marki',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Nie wystawiają fv z terminem płatności powyżej 14 dni',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już Klientem Idea Bank',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma zawieszona',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Już mają umowę z DHL',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Już zapisał się ',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Ma już tę markę',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Nie jest właścicielem licznika',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Małe OSD',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Grupa taryfowa A/G',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Zbyt duże zużycie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Brak osoby decyzyjnej - wynajem',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Oferta tylko na email',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest w Play',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Brak kryteriów > 6 miesięcy',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Zainteresowany LP',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Nie spełnia kryteriów - ORANGE',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Posiada markę JEEP',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mają już pakiet w innej firmie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mają już Medicover',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Ma już pakiet w innej firmie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Ma już Medicover',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Umowa o zarządzanie PPK już zawarta',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Nie spełnia warunków',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Brak kontaktu z osobą docelową',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Zainteresowany TRANSFER',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('BRAK OBOWIĄZKU PPK – MA PPE',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Niezainteresowany rozmową na temat PPK',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Ma już PPK w NN',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Sekretariat odmawia połączenia',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('W TRAKCIE ROZMÓW Z NN',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY PPK',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mała firma 20-49 zatrudnionych',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY - Firma będzie wdrażała PPK od Lipca 2020 - ZBIERA OFERTY',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mała firma będzie wdrażała PPK od kwietnia 2021',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma nie istnieje/ w likwidacji',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Oddzwonienie - wstępnie zainteresowany',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Budżetówka będzie wdrażała PPK marzec-kwiecień 2021',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Brak osoby wyznaczonej do wprowadzenia PPK',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY - Budżetówka będzie wdrażała PPK od 2021 - ZBIERA OFERTY',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Inny termin ubezpieczenia',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma w likwidacji',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Jest już w PZU',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ODDZWONIENIE - WSTĘPNIE ZAINTERESOWANY',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('JUŻ KTOŚ DZWONIŁ',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Działaność zawieszona',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Dubel - supervisor',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Zainteresowany Transfer',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Korzysta już z kart paliwowych BP',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Interesują klierta ew. INNE MODELE VOLVO',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Wynajmują powierzchnię',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma nie istnieje ',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Za mała powierzchnia oświetleniowa < 200 m2',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Mają już oświetlenie LED',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY oświetleniem LED  - umówione spotkanie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY panelami PV  - umówione spotkanie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Oddzownienie - wyślij email',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Firma w likwidacji/ zawieszona',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('ZAINTERESOWANY oświetleniem LED i panelami PV  - umówione spotkanie',NULL);
INSERT INTO "dim_call_code" ("call_code","clean_call_code") VALUES ('Są już klientem T-mobile',NULL);
DROP INDEX IF EXISTS "ix_log_hist_index";
CREATE INDEX IF NOT EXISTS "ix_log_hist_index" ON "log_hist" (
	"id"
);
DROP INDEX IF EXISTS "idx_call_code";
CREATE UNIQUE INDEX IF NOT EXISTS "idx_call_code" ON "dim_call_code" (
	"call_code"	ASC
);
DROP INDEX IF EXISTS "idx_campcd_affinity";
CREATE UNIQUE INDEX IF NOT EXISTS "idx_campcd_affinity" ON "dim_campcd_affinity" (
	"campcd"	ASC
);
DROP VIEW IF EXISTS "v_fct_calls";
CREATE VIEW v_fct_calls AS
SELECT
	ID,
	RecordState,
	LastCallCode,
	LastTryTime,
	TELEFON1,
	TELEFON2,
	TELEFON3,
	TELEFON4,
	"Source",
	LastName,
	FirstName,
	CustomerBusiness_Id,
	PKD,
	OPIS,
	Wojewodztwo,
	ApartmentNumber,
	HouseNumber,
	ZipCode,
	Street,
	City,
	CompanyName,
	mrktcd,
	fct_calls.campcd,
	DataGodzinaKontaktu,
	EmailPotwierdzony,
	ImieNazwiskoPotwierdzone,
	MiastoPotwierdzone,
	WybranyDealer,
	TelefonPotwierdzony,
	NazwiskoPotwierdzone,
	ImiePotwierdzone,
	ImportId,
	ImportCreatedOn,
	dim_call_code.clean_call_code,
	dim_campcd_affinity.kategoria,
	dim_campcd_affinity.kod_kategorii
FROM fct_calls
LEFT JOIN dim_call_code
ON fct_calls.LastCallCode = dim_call_code.call_code
LEFT JOIN dim_campcd_affinity
ON fct_calls.campcd = dim_campcd_affinity.campcd;
DROP VIEW IF EXISTS "v_phones_max_last_try_time";
CREATE VIEW v_phones_max_last_try_time as
WITH t1 AS
(
SELECT
	TELEFON1,
	max(LastTryTime) as max_LastTryTime,
	min(ID) AS ID
FROM
	fct_calls
WHERE
	LastTryTime IS NOT NULL
GROUP BY
	TELEFON1
)
SELECT
	t0.ID,
	t0.RecordState,
	t0.LastCallCode,
	t0.LastTryTime,
	t0.TELEFON1,
	t0.TELEFON2,
	t0.TELEFON3,
	t0.TELEFON4,
	t0.Source,
	t0.LastName,
	t0.FirstName,
	t0.CustomerBusiness_Id,
	t0.PKD,
	t0.OPIS,
	t0.Wojewodztwo,
	t0.ApartmentNumber,
	t0.HouseNumber,
	t0.ZipCode,
	t0.Street,
	t0.City,
	t0.CompanyName,
	t0.mrktcd,
	t0.campcd,
	t0.DataGodzinaKontaktu,
	t0.EmailPotwierdzony,
	t0.ImieNazwiskoPotwierdzone,
	t0.MiastoPotwierdzone,
	t0.WybranyDealer,
	t0.TelefonPotwierdzony,
	t0.NazwiskoPotwierdzone,
	t0.ImiePotwierdzone,
	t0.ImportId,
	t0.ImportCreatedOn,
	dim_call_code.clean_call_code,
	dim_campcd_affinity.kategoria,
	dim_campcd_affinity.kod_kategorii
FROM fct_calls AS t0
INNER JOIN t1
	ON t0.ID = t1.ID
LEFT JOIN dim_call_code
	ON t0.LastCallCode = dim_call_code.call_code
LEFT JOIN dim_campcd_affinity
	ON t0.campcd = dim_campcd_affinity.campcd;
COMMIT;
