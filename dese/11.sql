SELECT S.name, SUM(E.per_pupil_expenditure), GR.graduated FROM schools AS S
JOIN graduation_rates AS GR ON S.id = GR.school_id
JOIN districts AS D ON S.district_id = D.id
JOIN expenditures AS E ON D.id = E.district_id
GROUP BY S.name
ORDER BY SUM(E.per_pupil_expenditure) DESC, S.name ASC;
