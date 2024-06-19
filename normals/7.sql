SELECT
    ROUND(AVG("0m"), 2) AS "Average Equator Ocean Surface Temperature"
FROM Normals
WHERE latitude BETWEEN -0.5 and 0.5;
