
SELECT * FROM "albums"
WHERE "artists_id" = 1;  -- Replace 1 with the desired artist ID


SELECT * FROM "tracks"
WHERE "album_id" = 1;

-- 5. Retrieve All Tracks by a Specific Artist
SELECT * FROM "tracks"
WHERE "artists_id" = 1;  -- Replace 1 with the desired artist ID

-- 6. Retrieve All Playlists Created by a Specific User
SELECT * FROM "playlists"
WHERE "user_id" = 1;  -- Replace 1 with the desired user ID

-- 7. Retrieve All Tracks in a Specific Playlist
SELECT t.* FROM "tracks" t
JOIN "playlist_tracks" pt ON t."id" = pt."track_id"
WHERE pt."playlist_id" = 1;  -- Replace 1 with the desired playlist ID

-- 8. Retrieve All Tracks Liked by a Specific User
SELECT t.* FROM "tracks" t
JOIN "users_like" ul ON t."id" = ul."track_id"
WHERE ul."user_id" = 1;  -- Replace 1 with the desired user ID

-- 9. Retrieve All Tracks Played by a Specific User and When
SELECT t.*, uh."played_at" FROM "tracks" t
JOIN "user_history" uh ON t."id" = uh."track_id"
WHERE uh."user_id" = 1;  -- Replace 1 with the desired user ID

-- 10. Count the Number of Tracks in Each Album
SELECT a."name" AS "album_name", COUNT(t."id") AS "track_count"
FROM "albums" a
LEFT JOIN "tracks" t ON a."id" = t."album_id"
GROUP BY a."name";

-- 11. Find the Most Played Track
SELECT * FROM "tracks"
ORDER BY "played" DESC
LIMIT 1;

-- 12. Find the Top 5 Most Played Tracks
SELECT * FROM "tracks"
ORDER BY "played" DESC
LIMIT 5;

-- 13. Retrieve All Albums Released in a Specific Year
SELECT * FROM "albums"
WHERE "release_year" = 2024;  -- Replace 2024 with the desired year
-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database
