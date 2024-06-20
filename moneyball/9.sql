SELECT
    T.name,
    ROUND(AVG(S.salary), 2) AS "average salary"
FROM salaries AS S
JOIN teams AS T ON S.team_id = T.id
WHERE S.year = 2001
GROUP BY T.name
ORDER BY "average salary" ASC
LIMIT 5;
