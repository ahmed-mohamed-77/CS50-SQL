SELECT  ROUND(AVG(salary), 2) AS "average salary",	"year"
FROM salaries AS S
INNER JOIN players AS P ON P.id = S.player_id
WHERE P.first_name = 'cal' AND P.last_name ='Ripken'
GROUP BY "year"
ORDER BY "year" DESC;

SELECT  ROUND(AVG(salary), 2) AS "average salary",	"year"
FROM salaries
WHERE "player_id" =
    (SELECT id FROM players
    WHERE first_name LIKE '%cal%' AND last_name LIKE '%Rip%')
GROUP BY "year"
ORDER BY "year" DESC;
