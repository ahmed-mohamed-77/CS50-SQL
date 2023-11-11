
SELECT CONCAT("first_name", ' ',"last_name") AS "Player_Name", "final_game"
FROM players
WHERE "weight" >= 200
ORDER BY "Player_Name";
