CREATE VIEW "june_vacancies" AS
SELECT
    listings.id,
    property_type,
    host_name,
    COUNT(availabilities.date)
FROM "listings"
JOIN "availabilities" ON  availabilities.listing_id =  listings.id
WHERE availabilities.date LIKE '2023-06-%'
GROUP BY listings.id;
