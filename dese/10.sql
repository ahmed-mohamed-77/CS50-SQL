SELECT D.name, E.pupils FROM districts AS D
INNER JOIN expenditures AS E
ON D.id = E.district_id
WHERE D.state LIKE 'Public School%'
ORDER BY E.pupils DESC;
