
CREATE TABLE IF NOT EXISTS "meteorite_temp" (
    "name" VARCHAR(50) NOT NULL,
    "id" INTEGER,
    "nametype" VARCHAR(25),
    "class" VARCHAR(15) NOT NULL,
    "mass" REAL ,
    "discovery" VARCHAR(25) ,
    "year" INTEGER,
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
SET "lat" = ROUND("lat", 2);

UPDATE "meteorite_temp"
SET "long" = ROUND("long", 2);

UPDATE "meteorite_temp"
SET "mass" = ROUND("mass", 2);


INSERT INTO "meteorite" ("id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT
    "id"
    "name",
    "class",
    NULLIF(mass, '') AS mass,
    discovery,
    NULLIF(year , '') AS year,
    NULLIF(lat , '') AS lat,
    NULLIF(long , '') AS long
FROM "meteorites_temp"
WHERE nametype != 'Relict'
ORDER BY
    CAST(year AS REAL) ASC,
    name ASC;




DROP TABLE "meteorites_temp";
