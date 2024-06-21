SELECT D.name, SUM(E.per_pupil_expenditure), SE.exemplary FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
JOIN staff_evaluations AS SE ON D.id = SE.district_id
WHERE 
GROUP BY D.name
