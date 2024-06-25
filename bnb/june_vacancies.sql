CREATE VIEW "june_vacancies" AS
SELECT
    L.id,
    property_type,
    host_name,
    COUNT(A.date)
FROM "listings" AS L
JOIN "availabilities" AS A ON L.id = A.listing_id
WHERE A.date LIKE '2023-06-%'
GROUP BY L.id, property_type, host_name;
