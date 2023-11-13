SELECT "city", COUNT("type") FROM schools
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING  COUNT("type") BETWEEN 3 AND 1
ORDER BY COUNT("type") DESC;


, "city" ASC
