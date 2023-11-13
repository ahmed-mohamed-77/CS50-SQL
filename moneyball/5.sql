SELECT T.name FROM teams AS T
JOIN performances AS P ON T.id = P.team_id
JOIN 
    SELECT "id" FROM players
    WHERE ("first_name" = 'Satchel' AND  "last_name" = 'Paige')

