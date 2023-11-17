SELECT "description" FROM crime_scene_reports
WHERE "month" = 7 AND "day" = 28 AND "street" = 'Humphrey Street';

SELECT * FROM crime_scene_reports
WHERE  "street" LIKE  'hump%';
