SELECT P.first_name, P.last_name, S.salary FROM players AS P
JOIN salaries AS S ON P.id = S.player_id
WHERE S.year = 2001
ORDER BY S.salary, P.first_name,  P.last_name
LIMIT 50;
