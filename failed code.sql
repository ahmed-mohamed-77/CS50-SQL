-- sql moneyball sql-8
/*
How much would the A’s need to pay to get the best home run hitter this past season?
In 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.

Your query should return a table with one column, the salary of the player.
*/
SELECT S.salary
FROM players AS PL
JOIN salaries AS S ON PL.id = S.player_id
JOIN performances AS P ON PL.id = P.player_id
WHERE P.H = (SELECT MAX(HR) FROM performances WHERE year = 2001)
  AND S.year = 2001
GROUP BY P.HR
ORDER BY S.salary DESC
LIMIT 1;
