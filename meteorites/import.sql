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
UPDATE TABLE meteorites_temp SET "mass" = ROUND("mass", 2);
UPDATE TABLE meteorites_temp SET "lat" = ROUND("lat", 2);
UPDATE TABLE meteorites_temp SET "long" = ROUND("long", 2);

-- Replace empty values with NULL
UPDATE TABLE meteorites_temp SET "mass" = 
UPDATE TABLE meteorites_temp SET "year" = 
UPDATE TABLE meteorites_temp SET "lat" = 
UPDATE TABLE meteorites_temp SET "long" = 

