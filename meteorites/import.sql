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


INSERT INTO "meteorite" ("id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT
    CAST(id AS INTEGER),
    name,
    class,
    CAST(mass AS REAL),
    discovery,
    CAST(year AS REAL),
    CAST(lat AS REAL),
    CAST(long AS REAL)
FROM "meteorites_temp";

CREATE TRIGGER add_null
AFTER INSERT ON "meteorite"
FOR EACH ROW
BEGIN
    UPDATE "meteorite"
    SET
        "mass" = CASE WHEN NEW."mass" = '' THEN NULL ELSE NEW."mass" END,
        "year" = CASE WHEN NEW."year" = '' THEN NULL ELSE NEW."year" END,
        "lat" = CASE WHEN NEW."lat" = '' THEN NULL ELSE NEW."lat" END,
        "long" = CASE WHEN NEW."long" = '' THEN NULL ELSE NEW."long" END
    WHERE "id" = NEW."id";
END;
