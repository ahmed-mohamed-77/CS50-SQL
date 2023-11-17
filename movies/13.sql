WITH KevinBaconMovies AS (
    SELECT DISTINCT m.id AS movie_id
    FROM people p
    JOIN stars s ON p.id = s.person_id
    JOIN movies m ON s.movie_id = m.id
    WHERE p.name = 'Kevin Bacon' AND p.birth = 1958
)

-- Step 2: Find all people who starred in the same movie(s) as Kevin Bacon
SELECT DISTINCT p.name
FROM people p
JOIN stars s ON p.id = s.person_id
JOIN KevinBaconMovies kbm ON s.movie_id = kbm.movie_id
WHERE p.name != 'Kevin Bacon'; 
