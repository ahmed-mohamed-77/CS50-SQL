SELECT S.salary AS "the salary of the player"
FROM players AS PL
JOIN salaries AS S ON PL.id = S.player_id
JOIN performances AS P ON PL.id = P.player_id
WHERE P.H = (SELECT MAX(HR) FROM performances WHERE year = 2001)
  AND S.year = 2001
ORDER BY S.salary DESC
LIMIT 1;
