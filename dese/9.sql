SELECT D.name, E.per_pupil_expenditure FROM districts AS D
INNER JOIN expenditures AS E
ON D.id = E.district_id
GROUP BY D.name
ORDER BY E.per_pupil_expenditure;
