SELECT D.name , E.per_pupil_expenditure, S.exemplary FROM districts AS D
INNER JOIN expenditures AS E ON D.id = E.district_id
INNER JOIN staff_evaluations AS S ON D.id = S.district_id
ORDER BY S.exemplary DESC, E.per_pupil_expenditure DESC;

