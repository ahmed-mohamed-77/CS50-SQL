SELECT
    P.first_name,
    P.last_name
FROM players AS P
JOIN salaries AS S ON P.id = S.player_id
JOIN performances AS PF ON P.id = PF.player_id AND S.year = PF.year

WHERE "RBI" = (
    SELECT ROUND(S.salary / PF.RBI, 2
FROM players AS P
JOIN salaries AS S ON P.id = S.player_id
JOIN performances AS PF ON P.id = PF.player_id AND S.year = PF.year
WHERE PF.year = 2001
)
ORDER BY P.id ASC, P.last_name ASC
LIMIT 10;
