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

--round up decimals
u
