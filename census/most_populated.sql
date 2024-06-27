CREATE VIEW "most_populated" AS
SELECT
    "district",
    SUM("families") AS "families",
    SUM("households") AS "households",
    SUM("population") AS "population",
    SUM("male") AS "male",
    SUM("female") AS "female"
FROM "census"
WHERE "locality" LIKE '%Nepal%'
GROUP BY "district"
ORDER BY "population" DESC;


SELECT * FROM "census"
WHERE "district" = 'Kathmandu';


SELECT
    "district",
    SUM("families") AS "families",
    SUM("households") AS "households",
    SUM("population") AS "population",
    SUM("male") AS "male",
    SUM("female") AS "female"
FROM "census"
WHERE "district" = 'Kathmandu'
GROUP BY "district"
ORDER BY "population" DESC;


