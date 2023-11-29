CREATE VIEW available AS
SELECT "id", "property_type", "host_name", date
FROM listings
WHERE "bedrooms" = 1;
