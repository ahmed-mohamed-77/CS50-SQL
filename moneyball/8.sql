SELECT S.salary 
FROM players AS PL
JOIN salaries AS S ON PL.id = S.player_id
JOIN performances AS P ON PL.id = P.player_id
WHERE P.H = (SELECT MAX(HR) FROM performances WHERE year = 2001)
  AND S.year = 2001
GROUP BY P.HR
ORDER BY S.salary DESC
LIMIT 1;

SELECT "salary" FROM salaries
WHERE "player_id"
