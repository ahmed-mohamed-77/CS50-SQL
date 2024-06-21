DESE would like you to determine in what cities additional public schools might be needed.

In 5.sql, write a SQL query to find cities with 3 or fewer public schools. Your query should return
the names of the cities and the number of public schools within them, ordered from greatest number of
public schools to least. If two cities have the same number of public schools, order them alphabetically.

SELECT "city" , COUNT("type") FROM schools
WHERE "type" = 'Public School' AND COUNT("type") <= 3
GROUP BY "city"
ORDER BY COUNT("type") DESC, "city" ASC;
