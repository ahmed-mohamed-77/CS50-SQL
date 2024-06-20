SELECT T.name FROM teams AS T
JOIN performances AS PF ON T.id = PF.team_id
JOIN players AS P ON PF.player_id = P.id
WHERE P.first_name = 'Satchel' AND P.last_name = 'Paige';
