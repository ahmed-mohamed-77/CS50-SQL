SELECT "year", "HR" FROM performances
WHERE player_id = (
    SELECT "id" FROM players
    WHERE "first_name" = 'Cal' AND "last_name" = 'Ripken')
ORDER BY "year" DESC;


SELECT first_name, last_name from players
WHERE first_name = 'Ken' AND last_name IN ('%Jr%', '%jr%', '%JR%') ;
