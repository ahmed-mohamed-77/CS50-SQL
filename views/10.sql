SELECT DISTINCT "english_title" AS "filtered" FROM views
WHERE "english_title" LIKE "%in%"
ORDER BY "artist" DESC;
