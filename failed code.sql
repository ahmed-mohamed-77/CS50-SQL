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

-- sql moneyball sql-12
/*
  cannot fix even with chat-gpt
  could not find the needed query
*/
WITH PlayerStats AS (
    SELECT
        PL.id AS player_id,
        PL.first_name,
        PL.last_name,
        S.salary,
        P.H,
        P.RBI,
        CASE
            WHEN P.H > 0 THEN ROUND(S.salary / P.H, 2)
            ELSE NULL
        END AS "dollars per hit",
        CASE
            WHEN P.RBI > 0 THEN ROUND(S.salary / P.RBI, 2)
            ELSE NULL
        END AS "dollars per RBI"
    FROM
        players AS PL
    JOIN
        salaries AS S ON PL.id = S.player_id
    JOIN
        performances AS P ON PL.id = P.player_id
    WHERE
        S.year = 2001 AND P.year = 2001
)
SELECT
    PS.first_name,
    PS.last_name
FROM
    PlayerStats AS PS
WHERE
    PS.H > 0 AND PS.RBI > 0
ORDER BY
    PS.player_id
LIMIT 10;
