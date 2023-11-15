CREATE TABLE meteorites(
    "id" INT,
    "name" TEXT NOT NULL,
    "class" TEXT
    "mass" NUMERIC(5, 2)
    "discovery" TEXT NOT NULL CHECK ("discovery" IN ('Fell', 'Found'))
    "year" INT
    "lat" NUMERIC(5, 2),
    "long" NUMERIC(5, 2),

    CONSTRAINT meteorites_PK PRIMARY KEY ("id")
)
