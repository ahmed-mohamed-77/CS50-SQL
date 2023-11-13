SELECT S.name, E.per_pupil_expenditure, G.graduated
FROM districts AS D
INNER JOIN expenditures AS E ON D.id = E.district_id
INNER JOIN schools AS S ON D.id = S.district_id
INNER JOIN graduation_rates AS G ON S.id = G.school_id
;
