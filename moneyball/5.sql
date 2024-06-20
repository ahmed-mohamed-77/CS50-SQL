SELECT T.name FROM teams AS T
JOIN salaries AS S ON T.id = S.team_id
JOIN players AS P ON S.player_id = P.id
WHERE P.first_name = 'Satchel' AND P.last_name = 'Paige';


SELECT * FROM teams AS T
JOIN salaries AS S ON T.id = S.team_id
JOIN players AS P ON S.player_id = P.id;

SELECT first_name , last_name FROM players
WHERE first_name = 'Satchel' AND last_name = 'Paige';
