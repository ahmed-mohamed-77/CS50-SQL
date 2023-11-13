SELECT 	T.name, ROUND(AVG(S.salary), 2) AS  FROM teams AS T
JOIN salaries AS S ON T.id = S.team_id
