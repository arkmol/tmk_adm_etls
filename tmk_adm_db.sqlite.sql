BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Population" (
	"id"	INTEGER,
	"country"	TEXT,
	"population"	INT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "dic_affinities" (
	"Kategoria"	TEXT NOT NULL UNIQUE,
	"Kod kategorii"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("Kategoria")
);
CREATE TABLE IF NOT EXISTS "dic_phone_statuses" (
	"phone_statuses"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("phone_statuses")
);
CREATE TABLE IF NOT EXISTS "f1" (
	"RecordState"	TEXT,
	"LastCallCode"	TEXT,
	"LastTryTime"	TIMESTAMP,
	"TELEFON2"	TEXT,
	"TELEFON1"	TEXT NOT NULL,
	"TELEFON4"	TEXT,
	"TELEFON3"	TEXT,
	"Source"	TEXT,
	"LastName"	TEXT,
	"FirstName"	TEXT,
	"CustomerBusiness_Id"	TEXT,
	"PKD"	TEXT,
	"OPIS"	TEXT,
	"Wojewodztwo"	TEXT,
	"ApartmentNumber"	TEXT,
	"HouseNumber"	TEXT,
	"ZipCode"	TEXT,
	"Street"	TEXT,
	"City"	TEXT,
	"CompanyName"	TEXT,
	"mrktcd"	TEXT,
	"campcd"	TEXT NOT NULL,
	"DataGodzinaKontaktu"	TEXT,
	"EmailPotwierdzony"	TEXT,
	"ImieNazwiskoPotwierdzone"	TEXT,
	"MiastoPotwierdzone"	TEXT,
	"WybranyDealer"	TEXT,
	"TelefonPotwierdzony"	TEXT,
	"NazwiskoPotwierdzone"	TEXT,
	"ImiePotwierdzone"	TEXT,
	"ImportId"	INTEGER,
	"ImportCreatedOn"	TIMESTAMP,
	PRIMARY KEY("TELEFON1","campcd","LastCallCode")
);
CREATE TABLE IF NOT EXISTS "dic_xls_marked_columns" (
	"column_name"	TEXT NOT NULL UNIQUE,
	"column_type"	TEXT NOT NULL,
	PRIMARY KEY("column_name")
);
CREATE VIEW "v1" AS select a.LastCallCode ,b.phone_statuses from f1 as a
left join dic_phone_statuses as b on a.LastCallCode = b.phone_statuses;
COMMIT;
