CREATE VIEW june_vacancies AS
SELECT
L.id, L.property_type, L.host_name, A.date AS "days_vacant"
FROM listings AS L
JOIN availabilities AS A ON A.id = L.listing_id
WHERE (A.date BETWEEN '2023-06-01' AND '2023-06-30')
AND A.available = "TRUE";
