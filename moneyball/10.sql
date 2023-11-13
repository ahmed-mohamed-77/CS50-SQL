SELECT
    PL.first_name,
    PL.last_name,
    S.salary,
    P.HR,
    S.year
FROM
    players AS PL
JOIN
    salaries AS S ON PL.id = S.player_id
JOIN
    performances AS P ON PL.id = P.player_id
WHERE
    S.year = P.year
ORDER BY
    P.player_id,
    S.year DESC,
    P.HR DESC,
    S.salary DESC;
