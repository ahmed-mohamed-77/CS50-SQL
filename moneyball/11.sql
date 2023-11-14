SELECT
    PL.first_name,
    PL.last_name,
    CASE
        WHEN P.H > 0 THEN ROUND(S.salary / P.H, 0)
        ELSE NULL
    END AS "dollars per hit"
FROM
    players AS PL
JOIN
    salaries AS S ON PL.id = S.player_id
JOIN
    performances AS P ON PL.id = P.player_id
WHERE
    S.year = 2001 AND P.year = 2001 AND P.H > 0
ORDER BY
    "dollars per hit"
LIMIT 10;
