CREATE VIEW "by_district" AS
SELECT
    "district",
    SUM("families") AS "Families",
    SUM("households") AS "Households",
    SUM("population") AS "Population",
    SUM("male") AS "Male",
    SUM("female") AS "Female"
FROM "census"
GROUP BY "district";


SELECT
    "district",
    SUM("families") AS "Families",
    SUM("households") AS "Households",
    SUM("population") AS "Population",
    SUM("male") AS "Male",
    SUM("female") AS "Female"
FROM "census"
GROUP BY "district"
ORDER BY "Families" ASC;
