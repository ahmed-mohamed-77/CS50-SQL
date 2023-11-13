SELECT D.name, E.pupil FROM districts AS D
INNER JOIN expenditures AS E
ON D.id = E.district_id
ORDER BY E.pupil
LIMIT 1;
