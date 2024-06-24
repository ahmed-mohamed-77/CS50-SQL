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
