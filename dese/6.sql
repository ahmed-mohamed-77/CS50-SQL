SELECT S.name, G.graduated FROM schools AS S
INNER JOIN graduation_rates AS G
ON S.id = G.school_id
WHERE G.graduated = 100;
