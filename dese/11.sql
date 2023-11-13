SELECT name, pupils, per_pupil_expenditure, graduated
FROM districts AS D
INNER JOIN expenditures AS E ON D.id = E.district_id
INNER JOIN schools AS E ON D.id = S.district_id
