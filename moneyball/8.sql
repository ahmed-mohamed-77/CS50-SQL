SELECT salary  FROM players AS PL
JOIN salaries AS S ON PL.id = S.playerid
JOIN performances AS P ON PL.id = P.player_id
WHERE COUNT(P.H)
