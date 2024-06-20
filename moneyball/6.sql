SELECT T.name, P.H AS "total hits" FROM teams AS T
JOIN performances AS P ON T.id = P.team_id
WHERE P.year = 2001
ORDER BY P.H DESC
LIMIT 5;

