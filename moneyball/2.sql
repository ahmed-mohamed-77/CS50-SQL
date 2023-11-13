SELECT "salary", "year"
FROM salaries
WHERE "player_id" =
    (SELECT id FROM players
    WHERE first_name LIKE '%cal%' AND last_name LIKE '%Rip%')
GROUP BY "year"
ORDER BY "year" DESC;
