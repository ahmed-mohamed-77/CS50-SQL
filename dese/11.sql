SELECT * FROM schools AS S
JOIN graduation_rates AS GR ON S.id = GR.school_id
JOIN districts AS D ON S.district_id = D.id
JOIN expenditures AS E ON D.id = E.district_id
