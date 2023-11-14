SELECT T.name, SUM(P.H) AS "total hits" FROM teams AS T
JOIN performances AS P ON T.id = P.team_id
WHERE P.year = 2001
GROUP BY P.team_id
ORDER BY P.H DESC
LIMIT 5;
