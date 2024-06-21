rite a SQL query to find the 10 cities with the most public schools.
Your query should return the names of the cities and the number of public schools within them


SELECT "city" , SUM("type") FROM schools
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY SUM("type") DESC, "city" ASC
LIMIT 10;
