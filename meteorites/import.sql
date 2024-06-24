CREATE TABLE IF NOT EXISTS "meteorite" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "class" VARCHAR(15) NOT NULL,
    "mass" REAL ,
    "discovery" NOT NULL CHECK("discovery" IN ('Fell', 'Found')),
    "year" REAL,
    "lat" REAL,
    "long" REAL,
    CONSTRAINT meteorite_pk PRIMARY KEY ("id")
);


INSERT INTO "meteorite" ("id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT
    CAST(id AS INTEGER),
    name,
    class,
    CAST(mass AS REAL),
    discovery,
    CAST(year AS REAL),
    CAST(lat AS REAL),
    CAST(long AS REAL)
FROM "meteorites_temp";

CREATE TRIGGER add_null AFTER INSERT
ON "meteorite"
BEGIN
 -- Trigger logic goes here....
    INSERT INTO "meteorite" ("mass", "year", "lat", "long")
    VALUES ('insert',
            NULL,
            CASE WHEN "mass" = '' THEN NULL ELSE NEW.username END,
            NULL,
            CASE WHEN "year" = '' THEN NULL ELSE NEW.password END);


END;
