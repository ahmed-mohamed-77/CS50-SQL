SELECT
    PL.first_name,
    PL.last_name,
    S.salary / NULLIF(P.H, 0) AS "Dollars per Hit"
FROM
    players AS PL
JOIN
    salaries AS S ON PL.id = S.player_id
JOIN
    performances AS P ON PL.id = P.player_id
WHERE
    S.year = 2001 AND P.year = 2001 AND P.H > 0
GROUP BY
    PL.id, PL.last_name, S.salary,
ORDER BY
    "dollars per hit",
    P.first_name,
    P.last_name
LIMIT 10;

