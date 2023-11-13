SELECT T.name, COUNT(P.H) FROM teams AS T
JOIN performances AS P ON T.id = P.team_id
WHERE P.year = 2001
GROUP BY P.player_id
ORDER BY P.H DESC;
