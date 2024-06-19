SELECT
    (SELECT "50m" FROM Normals WHERE latitude = 20 AND longitude = 55),
    (SELECT "50m" FROM Normals WHERE latitude = 20 AND longitude = 75),
    (SELECT "50m" FROM Normals WHERE latitude = 0 AND longitude = 55),
    (SELECT "50m" FROM Normals WHERE latitude = 0 AND longitude = 75)
FROM Normals;
