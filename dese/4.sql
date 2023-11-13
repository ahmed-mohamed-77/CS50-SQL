SELECT "city", COUNT("type") FROM schools
WHERE "type" ='Public School'
GROUP BY "city"
ORDER BY "city" DESC
LIMIT 10;
