SELECT PL.first_name , PL.last_name , (S.salary / P.H) as "dollars per hit" FROM players AS PL
JOIN salaries AS S ON PL.id = S.player_id
JOIN performances AS P ON PL.id = P.player_id
WHERE P.year = 2001 AND P.H > 0
ORDER BY "dollars per hit", PL.first_name , PL.last_name;
