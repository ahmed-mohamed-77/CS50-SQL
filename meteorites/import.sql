-- create temp table for inserting
CREATE TABLE meteorites_temp(
    "name" TEXT,
    "id" INT,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" INT,
    "lat" NUMERIC,
    "long" NUMERIC
);


-- import csv file to the temp table
.mode csv
.import --csv --skip 1 meteorites.csv meteorites_temp

-- round up decimals
UPDATE meteorites_temp SET "mass" = ROUND("mass", 2);
UPDATE meteorites_temp SET "lat" = ROUND("lat", 2);
UPDATE meteorites_temp SET "long" = ROUND("long", 2);

-- Replace empty values with NULL
UPDATE meteorites_temp SET "mass" = NULL WHERE "mass" = '';
UPDATE meteorites_temp SET "year" = NULL WHERE "year" = '';
UPDATE meteorites_temp SET "lat" = NULL WHERE "lat" = '';
UPDATE meteorites_temp SET "long" = NULL WHERE "long" = '';

-- create the meteorites table

CREATE TABLE meteorites(
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC,
    CONSTRAINT meteorites_PK PRIMARY KEY ("id")
);

-- INSERT INTO meteorites TABLE AND SORT IT
INSERT INTO meteorites (
    "id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "id", "name", "class", "mass", "discovery", "year", "lat", "long"
FROM meteorites_temp
ORDER BY "id" ASC ,"name" ASC, "year" ASC;

-- DELETE THE TEMP TABLE

DROP TABLE "meteorites_temp";


/*
ERRORS -->
:( no meteorites of type "relict" found in "meteorites" table
    Found relict meteorite Brunflo from 1980
:( "meteorites" table properly sorts elements and assigns IDs
    expected "1, Apache Junc...", not "1, 1880, Aache..."
*/
