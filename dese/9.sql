
SELECT D.name
FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
GROUP BY D.name
ORDER BY SUM(E.pupils) ASC
LIMIT 1;
