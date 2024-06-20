SELECT P.first_name, P.last_name, S.salary, PF.H
FROM players AS P
JOIN salaries AS S ON P.id = S.player_id
JOIN performances AS PF ON P.id = PF.player_id
