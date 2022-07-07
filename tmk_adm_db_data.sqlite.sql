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
DROP INDEX IF EXISTS "ix_log_hist_index";
CREATE INDEX IF NOT EXISTS "ix_log_hist_index" ON "log_hist" (
	"id"
);
DROP VIEW IF EXISTS "v_phones_max_last_try_time";
CREATE VIEW v_phones_max_last_try_time as
with t1 as
(
select TELEFON1, max(LastTryTime) as max_LastTryTime, min(ID) as ID
from fct_calls as f1
where f1.LastTryTime is  not null
group by TELEFON1
)
select * from fct_calls, t1
where fct_calls.ID = t1.ID;
DROP VIEW IF EXISTS "v_fct_calls";
CREATE VIEW v_fct_calls as

select * from fct_calls;
COMMIT;
