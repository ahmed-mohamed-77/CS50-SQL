SELECT P.first_name, P.last_name, S.salary FROM players AS P
JOIN salaries AS S ON P.id = S.player_id

