SELECT "year", "HR" FROM  performances
WHERE "player_id" = (
    SELECT "id"FROM players
    WHERE ("first_name" = 'Ken' AND  "last_name" = 'Griffey')
        AND "birth_year" = '1969'
)
ORDER BY "year" DESC

    SELECT "id", "first_name" , "last_name" FROM players
    WHERE ("first_name" = 'Ken' AND  "last_name" = 'Griffey')
        AND "birth_year" = '1969';
