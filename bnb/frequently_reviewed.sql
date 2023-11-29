CREATE VIEW frequently_reviewed AS
SELECT
    L.id,
    L.property_type,
    L.host_name
FROM
    listings AS L
JOIN
    reviews AS R ON R.listing_id = L.id
GROUP BY
    L.id
ORDER BY
    COUNT(R.listing_id) DESC, L.property_type, L.host_name
LIMIT 100;
