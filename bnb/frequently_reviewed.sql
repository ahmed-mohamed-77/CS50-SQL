


SELECT
    L.id,
    L.property_type,
    L.host_name,
    COUNT(R.id)
FROM "listings" AS L
JOIN "
