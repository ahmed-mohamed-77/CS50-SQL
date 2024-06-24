CREATE TABLE IF NOT EXISTS "meteorite" (
    "id" INTEGER
    "name" VARCHAR(50) NOT NULL,
    "class" VARCHAR(15) NOT NULL,
    "mass" REAL NOT NULL,
    "discovery" VARCHAR(15) NOT NULL,
    "year" REAL NOT NULL,
    "lat" REAL NOT NULL,
    "long" REAL NOT NULL,

    CONSTRAINT meteorite_pk PRIMARY KEY ("id")
);

INSERT INTO "meteorite" ("id", "name" , "class" , "mass", "discovery", "year", "lat", "long")
SELECT "id", "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp";


