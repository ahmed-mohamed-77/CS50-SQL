CREATE TABLE meteorites(
    "id" INT,
    "name" TEXT NOT NULL,
    "class" TEXT,
    "mass" NUMERIC(10, 2),
    "discovery" TEXT NOT NULL CHECK ("discovery" IN ('Fell', 'Found')),
    "year" INT,
    "lat" NUMERIC(10, 2),
    "long" NUMERIC(10, 2),

    CONSTRAINT meteorites_PK PRIMARY KEY ("id")
);

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


INSERT INTO meteorites (
    "id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "id", "name", "class", "mass", "discovery", "year", "lat", "long"
FROM meteorites_temp;

UPDATE meteorites_temp
SET "mass" = ...
WHERE ...

