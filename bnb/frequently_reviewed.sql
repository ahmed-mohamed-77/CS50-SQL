CREATE VIEW frequently_reviewed AS
SELECT "id", "property_type", "host_name", "reviews"
FROM listings AS L
JOIN reviews AS R ON R."id" = L.""

