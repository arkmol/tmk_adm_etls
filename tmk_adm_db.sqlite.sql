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
CREATE TABLE IF NOT EXISTS "hist_fct_calls" (
	"ID"	INTEGER NOT NULL,
	"created_at"	TIMESTAMP,
	"user_action"	TEXT NOT NULL,
	"RecordState"	TEXT,
	"LastCallCode"	TEXT,
	"LastTryTime"	TIMESTAMP,
	"TELEFON2"	TEXT,
	"TELEFON1"	TEXT,
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
	"campcd"	TEXT,
	"DataGodzinaKontaktu"	TEXT,
	"EmailPotwierdzony"	TEXT,
	"ImieNazwiskoPotwierdzone"	TEXT,
	"MiastoPotwierdzone"	TEXT,
	"WybranyDealer"	TEXT,
	"TelefonPotwierdzony"	TEXT,
	"NazwiskoPotwierdzone"	TEXT,
	"ImiePotwierdzone"	TEXT,
	"ImportId"	INTEGER,
	"ImportCreatedOn"	TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "fct_calls" (
	"ID"	INTEGER NOT NULL,
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
	PRIMARY KEY("ID" AUTOINCREMENT),
	UNIQUE("TELEFON1","campcd") ON CONFLICT IGNORE
);
CREATE TABLE IF NOT EXISTS "log_hist" (
	"id"	INTEGER NOT NULL,
	"fileName"	TEXT,
	"loadDate"	TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE INDEX IF NOT EXISTS "idx_fct_calls_telefon1" ON "fct_calls" (
	"TELEFON1"	ASC
);
CREATE INDEX IF NOT EXISTS "idx_fct_calls_campcd" ON "fct_calls" (
	"campcd"
);
CREATE INDEX IF NOT EXISTS "ix_log_hist_index" ON "log_hist" (
	"id"
);
CREATE TRIGGER fct_calls_before_insert 
  BEFORE INSERT ON fct_calls

BEGIN	
	INSERT INTO hist_fct_calls(
		ID,
		user_action,
		created_at,
		RecordState,
		LastCallCode,
		LastTryTime,
		TELEFON2,
		TELEFON1,
		TELEFON4,
		TELEFON3,
		Source,
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
		campcd,
		DataGodzinaKontaktu,
		EmailPotwierdzony,
		ImieNazwiskoPotwierdzone,
		MiastoPotwierdzone,
		WybranyDealer,
		TelefonPotwierdzony,
		NazwiskoPotwierdzone,
		ImiePotwierdzone,
		ImportId,
		ImportCreatedOn
	)
	SELECT
		ID,
		'D_I',
		DATETIME('NOW'),
		RecordState,
		LastCallCode,
		LastTryTime,
		TELEFON2,
		TELEFON1,
		TELEFON4,
		TELEFON3,
		Source,
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
		campcd,
		DataGodzinaKontaktu,
		EmailPotwierdzony,
		ImieNazwiskoPotwierdzone,
		MiastoPotwierdzone,
		WybranyDealer,
		TelefonPotwierdzony,
		NazwiskoPotwierdzone,
		ImiePotwierdzone,
		ImportId,
		ImportCreatedOn
	FROM fct_calls
	WHERE TELEFON1 = NEW.TELEFON1 
	AND campcd = NEW.campcd
	AND LastTryTime < NEW.LastTryTime;
	
	DELETE FROM fct_calls 
	WHERE TELEFON1 = NEW.TELEFON1 
	AND campcd = NEW.campcd
	AND LastTryTime < NEW.LastTryTime;

END;
COMMIT;
