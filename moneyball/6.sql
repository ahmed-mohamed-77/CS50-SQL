SELECT T.name, SUM(PF.H) AS "total hits"
FROM teams AS T
JOIN performances AS PF ON T.id = PF.team_id
WHERE PF.year = 2001
GROUP BY T.name
ORDER BY "total hits" DESC
LIMIT 5;
