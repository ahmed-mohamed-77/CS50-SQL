

SELECT "id", "district", "locality", "families","households","population","male","female"
FROM census
WHERE "locality" LIKE '%rural%';
