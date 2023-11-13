SELECT D.name, G.graduated FROM districts AS D
INNER JOIN graduation_rates AS G
ON D.id = G.school_id
WHERE (D.type = 'Charter District' OR
    D.type = 'Public School District')
AND G.graduated = 100;
