SELECT S.salary FROM salaries AS S
JOIN teams AS T ON S.team_id = T.id
JOIN performances AS P ON T.id = P.team_id
WHERE "H" = (
    SELECT MAX(H) FROM performances
    WHERE "year" = 2001
);

SELECT * FROM performances
WHERE "H" = (
    SELECT MAX(H) FROM performances
    WHERE "year" = 2001
);


SELECT * FROM performances
WHERE "H" = (
    SELECT MAX(H) FROM performances
);
