SELECT S.salary
FROM salaries AS S
JOIN players AS P ON S.player_id = P.id
JOIN performances AS PF ON P.id = PF.player_id
WHERE PF.year = 2001
  AND S.year = 2001
  AND PF.HR = (SELECT MAX(HR) FROM performances WHERE year = 2001)
LIMIT 1;
