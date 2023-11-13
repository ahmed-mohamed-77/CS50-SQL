SELECT D.name, E.pupils FROM districts AS D
INNER JOIN expenditures AS E
ON D.id = E.district_id
ORDER BY E.pupils
LIMIT 1;
