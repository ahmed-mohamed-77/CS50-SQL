SELECT S.salary FROM salaries AS S
JOIN teams AS T ON S.team_id = T.id
JOIN performances AS P ON T.id = P.team_id
WHERE P.year = 2001 AND P.H = (
    SELECT MAX(H) FROM performances
);

SELECT * FROM performances
WHERE year = 2001 AND H = (
    SELECT MAX(H) FROM performances
);
