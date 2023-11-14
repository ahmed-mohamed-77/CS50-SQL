SELECT
    S.salary
FROM
    salaries AS S
JOIN
    performances AS P ON S.player_id = P.player_id AND S.team_id = P.team_id AND S.year = P.year
WHERE
    P.year = 2001
ORDER BY
    P.HR DESC
LIMIT 1;
