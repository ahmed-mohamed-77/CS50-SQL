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

CREATE TRIGGER add_null_and_round_decimal
AFTER INSERT ON "meteorite"
FOR EACH ROW
BEGIN
    UPDATE "meteorite"
    SET
        "mass" = CASE
                    WHEN NEW."mass" = '' THEN NULL
                    ELSE ROUND(NEW."mass", 2)
                 END,
        "lat" = CASE
                    WHEN NEW."lat" = '' THEN NULL
                    ELSE ROUND(NEW."lat", 2)
                END,
        "long" = CASE
                     WHEN NEW."long" = '' THEN NULL
                     ELSE ROUND(NEW."long", 2)
                 END
    WHERE "id" = NEW."id";
END;
