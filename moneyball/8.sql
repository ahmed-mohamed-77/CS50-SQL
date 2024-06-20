SELECT S.salary
FROM salaries AS S
JOIN players AS P ON S.player_id = P.id
JOIN performances AS PF ON P.id = PF.player_id AND S.year = PF.year
WHERE PF.year = 2001
  AND PF.H = (SELECT MAX(H) FROM performances)
  ;

SELECT "salary" FROM salaries
WHERE "year" = 2001 AND "H" = (SELECT MAX("H") FROM performances);


SELECT "salary" FROM salaries
WHERE  "H" = (SELECT MAX("H") FROM performances);


