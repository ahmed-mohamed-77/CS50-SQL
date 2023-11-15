SELECT
    PL.first_name,
    PL.last_name,
    CASE
        WHEN P.H > 0 THEN S.salary / P.H
        ELSE NULL
    END AS "dollars per hit"
FROM
    players AS PL
JOIN
    salaries AS S ON PL.id = S.player_id
JOIN
    performances AS P ON PL.id = P.player_id
GROUP BY PL.id, PL.last_name, S.salary,
WHERE
    S.year = 2001 AND P.year = 2001 AND P.H > 0
ORDER BY
    "dollars per hit"
LIMIT 10;

SELECT playerID AS "First Name", nameLast AS "Last Name",
       salary / NULLIF(H AS "Dollars per Hit"
FROM (SELECT playerID, nameLast, salary, SUM(H) AS H
      FROM salaries JOIN batting ON salaries.playerID = batting.playerID AND salaries.yearID = batting.yearID
      WHERE batting.yearID = 2001 AND H > 0
      GROUP BY playerID, nameLast, salary)
ORDER BY "Dollars per Hit" ASC, "First Name" ASC, "Last Name" ASC
LIMIT 10;
