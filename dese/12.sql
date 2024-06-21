SELECT D.name, SUM(E.per_pupil_expenditure), SE.exemplary FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
JOIN staff_evaluations AS SE ON D.id = SE.district_id
WHERE E.per_pupil_expenditure > (
    SELECT AVG("per_pupil_expenditure") FROM expenditures
) AND SE.exemplary > (
    SELECT AVG("exemplary") FROM staff_evaluations
)
GROUP BY D.name
ORDER BY SE.exemplary DESC, SUM(E.per_pupil_expenditure) DESC;
