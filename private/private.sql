SELECT SUBSTR("sentence", 98, 4) AS "encryption"
FROM "sentences"
WHERE id = 14;

SELECT SUBSTR("sentence", 3, 5) AS "encryption"
FROM "sentences"
WHERE id = 114;

SELECT SUBSTR("sentence", 72, 9) AS "encryption"
FROM "sentences"
WHERE id = 618;

SELECT SUBSTR("sentence", 7, 3) AS "encryption"
FROM "sentences"
WHERE id = 630;

SELECT SUBSTR("sentence", 12, 5) AS "encryption"
FROM "sentences"
WHERE id = 932;

SELECT SUBSTR("sentence", 50, 7) AS "encryption"
FROM "sentences"
WHERE id = 2230;

SELECT SUBSTR("sentence", 44, 10) AS "encryption"
FROM "sentences"
WHERE id = 2346;

SELECT SUBSTR("sentence", 14, 5) AS "encryption"
FROM "sentences"
WHERE id = 3041;

:( private.sql creates a view named "message" without error
    private.sql does not create a view named "message"
:| private.sql produces view that reveals secret message
    can't check until a frown turns upside down
