SELECT
    T.name,
    ROUND(AVG(S.salary), 2 )AS "average salary"
FROM salaries AS S
JOIN teams AS T ON S.team_id = T.id
GROUP BY T.name
HAVING S.year = 2001
ORDER BY "average salary" ASC
LIMIT 5;


