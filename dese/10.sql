SELECT D.name, E.per_pupil_expenditure FROM districts AS D
INNER JOIN expenditures AS E
ON D.id = E.district_id
WHERE D.type LIKE 'Public School%'
ORDER BY E.pupils DESC
LIMIT 10;
