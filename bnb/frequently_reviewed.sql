


SELECT
    L.id,
    L.property_type,
    L.host_name,
    COUNT(R.id)
FROM "listings" AS L
JOIN "


CREATE TABLE IF NOT EXISTS "listings" (
    "id" INTEGER,
    "property_type" TEXT,
    "host_name" TEXT,
    "accommodates" INTEGER,
    "bedrooms" INTEGER,
    "description" TEXT,
    PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "availabilities" (
    "id" INTEGER,
    "listing_id" INTEGER,
    "date" NUMERIC,
    "available" INTEGER,
    "price" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("listing_id") REFERENCES "listings"("id")
);
CREATE TABLE IF NOT EXISTS "reviews" (
    "id" INTEGER,
    "listing_id" INTEGER,
    "date" NUMERIC,
    "reviewer_name" TEXT,
    "comments" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("listing_id") REFERENCES "listings"("id")
);
