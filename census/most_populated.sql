CREATE VIEW "by_district" AS
SELECT
    "district",
    COUNT("families") AS "Families",
    COUNT("households") AS "Households",
    COUNT("population") AS "Population",
    COUNT("male") AS "Male",
    COUNT("female") AS "Female"
FROM "census"
WHERE "locality" LIKE '%Nepal%'
GROUP BY "district"
ORDER BY "district" DESC;
