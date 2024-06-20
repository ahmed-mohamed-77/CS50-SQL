WITH PlayerCostPerHit AS (
    SELECT
        P.id,
        P.first_name,
        P.last_name,
        (S.salary * 1.0 / PF.H) AS cost_per_hit
    FROM players AS P
    JOIN salaries AS S ON P.id = S.player_id
    JOIN performances AS PF ON P.id = PF.player_id
    WHERE S.year = 2001 AND PF.year = 2001
    ORDER BY cost_per_hit ASC
    LIMIT 10
),
PlayerCostPerRBI AS (
    SELECT
        P.id,
        P.first_name,
        P.last_name,
        (S.salary * 1.0 / PF.RBI) AS cost_per_rbi
    FROM players AS P
    JOIN salaries AS S ON P.id = S.player_id
    JOIN performances AS PF ON P.id = PF.player_id
    WHERE S.year = 2001 AND PF.year = 2001
    ORDER BY cost_per_rbi ASC
    LIMIT 10
)
SELECT DISTINCT
    first_name,
    last_name
FROM (
    SELECT first_name, last_name FROM PlayerCostPerHit
    UNION
    SELECT first_name, last_name FROM PlayerCostPerRBI
)
ORDER BY last_name;
