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
