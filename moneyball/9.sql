SELECT 	T.name, ROUND(AVG(S.salary), 2) AS "average salary"
FROM teams AS T
JOIN salaries AS S ON T.id = S.team_id
ORDER BY "average salary"
LIMIT 5;
