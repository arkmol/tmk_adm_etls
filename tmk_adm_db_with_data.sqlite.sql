BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "dic_affinities" (
	"Kategoria"	TEXT NOT NULL UNIQUE,
	"Kod kategorii"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("Kategoria")
);
CREATE TABLE IF NOT EXISTS "dic_phone_statuses" (
	"phone_statuses"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("phone_statuses")
);
CREATE TABLE IF NOT EXISTS "dic_xls_marked_columns" (
	"column_name"	TEXT NOT NULL UNIQUE,
	"column_type"	TEXT NOT NULL,
	PRIMARY KEY("column_name")
);
CREATE TABLE IF NOT EXISTS "log_hist" (
	"id"	INTEGER NOT NULL,
	"fileName"	TEXT,
	"insertedRows"	INTEGER,
	"loadDate"	TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
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
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('RecordState','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('LastCallCode','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('LastTryTime','datetime64[ns]');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('TELEFON2','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('TELEFON1','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('TELEFON4','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('TELEFON3','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('Source','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('LastName','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('FirstName','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('CustomerBusiness_Id','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('PKD','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('OPIS','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('Wojewodztwo','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('ApartmentNumber','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('HouseNumber','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('ZipCode','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('Street','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('City','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('CompanyName','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('mrktcd','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('campcd','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('DataGodzinaKontaktu','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('EmailPotwierdzony','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('ImieNazwiskoPotwierdzone','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('MiastoPotwierdzone','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('WybranyDealer','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('TelefonPotwierdzony','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('NazwiskoPotwierdzone','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('ImiePotwierdzone','string');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('ImportId','int64');
INSERT INTO "dic_xls_marked_columns" ("column_name","column_type") VALUES ('ImportCreatedOn','datetime64[ns]');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (42,'117 Volvo Używane_Polska_Kampania wsparciowa.xlsx',4453,'2022-05-03 14:36:03.470266');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (43,'118 Volvo Nowe_Polska_Kampania wsparciowa_część 1.xlsx',43345,'2022-05-03 14:38:45.645864');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (44,'118 Volvo Nowe_Polska_Kampania wsparciowa_część 2.xlsx',48450,'2022-05-03 14:41:48.725230');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (45,'118 Volvo Nowe_Polska_Kampania wsparciowa_część 3.xlsx',19965,'2022-05-03 14:43:11.441532');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (46,'161 Mitsubishi.xlsx',0,'2022-05-03 14:43:12.371353');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (47,'161 Mitsubishi_mod.xlsx',18,'2022-05-03 14:43:13.653524');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (48,'163 Land Rover_Kampania wsparciowa.xlsx',1992,'2022-05-03 14:43:27.376320');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (49,'165 Peugot osobowe_Kampania wsparciowa.xlsx',11796,'2022-05-03 14:44:38.630381');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (50,'19 Tchibo Biura.xlsx',0,'2022-05-03 14:44:42.294494');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (51,'19 Tchibo Biura_mod.xlsx',0,'2022-05-03 14:44:45.950588');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (52,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_1.xlsx',17763,'2022-05-03 14:46:07.682298');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (53,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_2.xlsx',29094,'2022-05-03 14:48:23.208209');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (54,'229 Volvo Elektryczne Hybryda_Kampania wsparciowa_część_3.xlsx',32109,'2022-05-03 14:51:00.557142');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (55,'27 PPE.xlsx',0,'2022-05-03 14:51:48.800720');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (56,'27 PPE_mod.xlsx',10420,'2022-05-03 14:52:49.889620');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (57,'36 SMEO Factoring.xlsx',0,'2022-05-03 14:54:59.506028');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (58,'36 SMEO Factoring_mod.xlsx',10599,'2022-05-03 14:57:20.537183');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (59,'57 YouLead.xlsx',0,'2022-05-03 14:57:23.322770');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (60,'57 YouLead_mod.xlsx',231,'2022-05-03 14:57:27.958752');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (61,'59 Play B2B Klient biznesowy.xlsx',0,'2022-05-03 14:57:59.365500');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (62,'59 Play B2B Klient biznesowy_mod.xlsx',615,'2022-05-03 14:58:33.875714');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (63,'60 Faktoria kampania_wsparciowa.xlsx',0,'2022-05-03 14:59:05.385914');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (64,'60 Faktoria kampania_wsparciowa_mod.xlsx',7426,'2022-05-03 14:59:52.643674');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (65,'Ecport_2022.03.23.xlsx',35965,'2022-05-03 15:01:55.050951');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (66,'Eksportuj 2022-04-19 193723.xlsx',32109,'2022-05-03 15:04:19.239527');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (67,'Eksportuj 2022-04-19 210819.xlsx',32109,'2022-05-03 15:06:54.351781');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (68,'Eksportuj 2022-04-19 213832.xlsx',0,'2022-05-03 15:06:54.778994');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (69,'Eksportuj 2022-04-19 213832_mod.xlsx',3,'2022-05-03 15:06:55.265895');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (70,'Eksportuj 2022-04-20 100827.xlsx',0,'2022-05-03 15:06:58.209766');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (71,'Eksportuj 2022-04-20 100827_mod.xlsx',14,'2022-05-03 15:07:01.541551');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (72,'Eksportuj 2022-04-20 101011.xlsx',0,'2022-05-03 15:07:22.716313');
INSERT INTO "log_hist" ("id","fileName","insertedRows","loadDate") VALUES (73,'Eksportuj 2022-04-20 101011_mod.xlsx',4905,'2022-05-03 15:07:59.706225');
CREATE INDEX IF NOT EXISTS "ix_log_hist_index" ON "log_hist" (
	"id"
);
COMMIT;
