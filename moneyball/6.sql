SELECT T.name, P.H FROM teams AS T
JOIN performances AS P ON T.id = P.team_id
WHERE P.year = 2001
ORDER BY P.H DESC;
