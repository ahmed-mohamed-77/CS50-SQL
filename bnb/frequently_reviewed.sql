CREATE VIEW frequently_reviewed AS
SELECT "id", "property_type", "host_name", COUNT("reviews")
FROM listings AS L
JOIN reviews AS R ON R."id" = L."listing_id"
GROUP BY "property_type"
ORDER BY "property_type", "host_name"
LIMIT 100;
