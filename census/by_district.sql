CREATE VIEW "by_district" AS
SELECT
    "district",
    SUM("families") AS "families",
    SUM("households") AS "households",
    SUM("population") AS "population",
    SUM("male") AS "male",
    SUM("female") AS "female"
FROM "census"
GROUP BY "district"
ORDER BY "families" ASC;

SELECT "district", "families"
FROM "by_district"
ORDER BY "families" ASC
LIMIT 1 OFFSET 1;
