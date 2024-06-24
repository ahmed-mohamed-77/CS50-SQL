CREATE TABLE IF NOT EXISTS "meteorite_temp" (
    "name" VARCHAR(50) NOT NULL,
    "id" INTEGER,
    "nametype" VARCHAR(25),
    "class" VARCHAR(15) NOT NULL,
    "mass" REAL,
    "discovery" VARCHAR(25),
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    CONSTRAINT meteorite_pk PRIMARY KEY ("id")
);


.import --csv --skip 1 meteorites.csv meteorite_temp



UPDATE  "meteorite_temp"
SET "lat" = ROUND("lat", 2),
    "long" = ROUND("long", 2),
    "mass" = ROUND("mass", 2);


UPDATE  "meteorite_temp"
SET "year" = NULLIF("year", ''),
    "lat" = NULLIF("lat", ''),
    "long" = NULLIF("long", ''),
    "mass" = NULLIF("mass", '');

UPDATE  "meteorite_temp"
SET "lat" = NULLIF("lat", 0),
    "long" = NULLIF("long", 0),
    "mass" = NULLIF("mass", 0);

SELECT * FROM meteorite_temp WHERE "lat" = 0 OR"long"= 0 OR "mass"= 0 ;
SELECT * FROM meteorite_temp WHERE "lat"= '' OR "long"= '' OR "mass"= ''OR "year" = '';


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


INSERT INTO "meteorite" ( "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT
    "name",
    "class",
    "mass",
    "discovery",
    "year" ,
    "lat" ,
    "long"
FROM "meteorite_temp"
WHERE nametype != 'Relict'
ORDER BY
    CAST(year AS REAL) ASC,
    name ASC;




DROP TABLE "meteorite_temp";
