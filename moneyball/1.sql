
SELECT  ROUND(AVG(salary), 2) AS "average salary",	"year" FROM salaries
GROUP BY "year"
ORDER BY "year" DESC;
