SELECT D.name, SUM(E.per_pupil_expenditure)
FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
WHERE D.type ='Public School District'
GROUP BY D.name
ORDER BY SUM(E.per_pupil_expenditure) DESC
LIMIT 10;
