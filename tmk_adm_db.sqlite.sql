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
DROP TABLE IF EXISTS "hist_fct_calls";
CREATE TABLE IF NOT EXISTS "hist_fct_calls" (
	"logId"	INTEGER,
	"ID"	INTEGER NOT NULL,
	"created_at"	TIMESTAMP,
	"user_action"	TEXT NOT NULL,
	"RecordState"	TEXT,
	"LastCallCode"	TEXT,
	"LastTryTime"	TIMESTAMP,
	"TELEFON1"	TEXT,
	"TELEFON2"	TEXT,
	"TELEFON3"	TEXT,
	"TELEFON4"	TEXT,
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
DROP TABLE IF EXISTS "dic_xls_marked_columns";
CREATE TABLE IF NOT EXISTS "dic_xls_marked_columns" (
	"column_name"	TEXT NOT NULL UNIQUE,
	"column_type"	TEXT NOT NULL,
	"target_schema"	INTEGER,
	PRIMARY KEY("column_name")
);
DROP TABLE IF EXISTS "fct_calls";
CREATE TABLE IF NOT EXISTS "fct_calls" (
	"logId"	INTEGER,
	"ID"	INTEGER NOT NULL,
	"RecordState"	TEXT,
	"LastCallCode"	TEXT,
	"LastTryTime"	TEXT,
	"TELEFON1"	TEXT NOT NULL,
	"TELEFON2"	TEXT,
	"TELEFON3"	TEXT,
	"TELEFON4"	TEXT,
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
	UNIQUE("TELEFON1","campcd") ON CONFLICT IGNORE,
	PRIMARY KEY("ID" AUTOINCREMENT)
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
DROP INDEX IF EXISTS "ix_log_hist_index";
CREATE INDEX IF NOT EXISTS "ix_log_hist_index" ON "log_hist" (
	"id"
);
DROP INDEX IF EXISTS "idx_fct_calls_campcd";
CREATE INDEX IF NOT EXISTS "idx_fct_calls_campcd" ON "fct_calls" (
	"campcd"
);
DROP INDEX IF EXISTS "idx_fct_calls_telefon1";
CREATE INDEX IF NOT EXISTS "idx_fct_calls_telefon1" ON "fct_calls" (
	"TELEFON1"	ASC
);
DROP INDEX IF EXISTS "idx_call_code";
CREATE UNIQUE INDEX IF NOT EXISTS "idx_call_code" ON "dim_call_code" (
	"call_code"	ASC
);
DROP INDEX IF EXISTS "idx_campcd_affinity";
CREATE UNIQUE INDEX IF NOT EXISTS "idx_campcd_affinity" ON "dim_campcd_affinity" (
	"campcd"	ASC
);
DROP TRIGGER IF EXISTS "fct_calls_before_insert";
CREATE TRIGGER fct_calls_before_insert 
  BEFORE INSERT ON fct_calls

BEGIN	
	INSERT INTO hist_fct_calls(
		logId,
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
		logId,
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
DROP TRIGGER IF EXISTS "fct_calls_before_update";
CREATE TRIGGER fct_calls_before_update 
  BEFORE UPDATE ON fct_calls

BEGIN	
	INSERT INTO hist_fct_calls(
		logId,
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
		logId,
		ID,
		'U',
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
	WHERE TELEFON1=NEW.TELEFON1 
	AND campcd=NEW.campcd;
END;
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
