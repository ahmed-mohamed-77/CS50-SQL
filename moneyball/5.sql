SELECT T.name FROM teams AS T
JOIN performances AS P ON T.id = P.team_id
JOIN players AS PL ON PL.id = P.player_id
WHERE (PL.first_name = 'Satchel' AND  PL.last_name = 'Paige');



