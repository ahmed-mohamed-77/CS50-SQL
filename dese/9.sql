Another parent wants to send their child to a district with few other students.
In 9.sql, write a SQL query to find the name (or names) of the school district(s)
 with the single least number of pupils. Report only the name(s).


SELECT D.name, SUM(E.pupils) FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
GROUP BY D.name
ORDER BY SUM(E.pupils) ASC;
