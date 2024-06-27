
CREATE VIEW "total" AS
SELECT
    SUM("families") AS "Families",
    SUM("households") AS "Households",
    SUM("population") AS "Population",
    SUM("male") AS "Male",
    SUM("female") AS "Female"
FROM "census";
