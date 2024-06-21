SELECT * FROM schools AS S
JOIN districts AS D ON S.district_id = D.id;
WHERE S.city LIKE 'Mass%' AND D.city LIKE 'Mass%';

SELECT * FROM districts;
