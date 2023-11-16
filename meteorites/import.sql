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

    CONSTRAINT meteorites_PK PRIMARY KEY "id"
);


