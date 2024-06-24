
CREATE TABLE IF NOT EXISTS "meteorite_temp" (
    "name" VARCHAR(50) NOT NULL,
    "id" INTEGER,
    "nametype" VARCHAR(25),
    "class" VARCHAR(15) NOT NULL,
    "mass" REAL ,
    "discovery" VARCHAR(25) ,
    "year" REAL,
    "lat" REAL,
    "long" REAL,
    CONSTRAINT meteorite_pk PRIMARY KEY ("id")
);

.import --csv --skip 1 meteorites.csv meteorite_temp


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

UPDATE "meteorite_temp"
SET "year" = ROUND("year", 0);

select * from meteorite_temp  where nametype = 'Relict';

INSERT INTO "meteorite" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT
    name,
    class,
    NULLIF(CAST(mass AS REAL), '') AS mass,
    discovery,
    NULLIF(CAST(year AS REAL), '') AS year,
    NULLIF(CAST(lat AS REAL), '') AS lat,
    NULLIF(CAST(long AS REAL), '') AS long
FROM "meteorites_temp"
WHERE nametype != 'Relict'
ORDER BY
    CAST(year AS REAL) ASC,
    name ASC;


DROP TABLE "meteorites_temp";
