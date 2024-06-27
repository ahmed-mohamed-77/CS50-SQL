CREATE VIEW "by_district" AS
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



By District
In by_district.sql, write a SQL statement to create a view named by_district. This view should contain the sums for each numeric column in census, grouped by district. Ensure the view contains each of the following columns:

district, which is the name of the district.
families, which is the total number of families in the district.
households, which is the total number of households in the district.
population, which is the total population of the district.
male, which is the total number of people identifying as male in the district.
female, which is the total number of people identifying as female in the district.
Which district has the second lowest number of families? And how many does it have? Using your by_district view, you should find that the Mustang district has only 3,751 families.
