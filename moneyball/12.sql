SELECT
    PL.first_name,
    PL.last_name
FROM
    players AS PL
JOIN
    salaries AS S ON PL.id = S.player_id
JOIN
    performances AS P ON PL.id = P.player_id
WHERE
  S.salary / NULLIF(P.H, 0)
  S.year = 2001
  AND P.year = 2001
  AND P.rbi > 0
ORDER BY
  "salary_per_rbi" ASC,
  PL.last_name ASC,
  PL.first_name ASC
LIMIT
  10;

