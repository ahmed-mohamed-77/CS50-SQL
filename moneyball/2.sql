SELECT  ROUND(AVG(salary), 2) AS "average salary",	"year"
FROM salaries AS S
INNER JOIN players AS P ON P.id = S.player_id
WHERE first_name + ' ' + last_name ='Cal Ripken Jr'
GROUP BY "year"
ORDER BY "year" DESC;
