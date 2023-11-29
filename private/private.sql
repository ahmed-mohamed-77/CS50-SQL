CREATE TABLE triplets(
    "sentence_id" INT,
    "start_char" INT,
    "lengh" INT
);


INSERT INTO triplets("sentence_id", "start_char", "lengh")
VALUES (14, 98, 4),
       (114, 3, 5),
       (618, 72, 9),
       (630, 7, 3),
       (932, 12, 5),
       (2230, 50, 7),
       (2346, 44, 10),
       (3041, 14, 5);

CREATE VIEW message AS
SELECT SUBSTR("sentence", "start_char", "lengh") AS "phrase" FROM triplets AS T
JOIN sentences AS S ON S.id = T.sentence_id;
