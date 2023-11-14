SELECT 	T.name, ROUND(AVG(S.salary), 2) AS "average salary"
FROM teams AS T
JOIN salaries AS S ON T.id = S.team_id
WHERE S.year = 2001
GROUP BY T.name
ORDER BY "average salary"
LIMIT 5;
