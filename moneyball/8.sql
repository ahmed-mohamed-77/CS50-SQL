SELECT S.salary
FROM players AS PL
JOIN salaries AS S ON PL.id = S.player_id
JOIN performances AS P ON PL.id = P.player_id
WHERE P.H = (SELECT MAX(H) FROM performances WHERE year = 2001)
  AND P.year = 2001
ORDER BY S.salary DESC
LIMIT 1;
