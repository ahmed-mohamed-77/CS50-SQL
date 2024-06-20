SELECT
    P.first_name,
    P.last_name,
    S.salary,
    PF.year,
    PF.HR
FROM players AS P
JOIN salaries AS S ON P.id = S.player_id
JOIN performances AS PF ON P.id = PF.player_id AND S.year = PF.year
ORDER BY P.id ASC, PF.year DESC, PF.HR DESC, S.salary DESC;
