CREATE VIEW one_bedrooms AS
SELECT "id", "property_type", "host_name", "accommodates"
FROM listings
WHERE "accommodates" = 1
LIMIT 25;



DROP VIEW one_bedrooms;
