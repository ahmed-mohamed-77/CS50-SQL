SELECT * FROM sentences
WHERE id = 14;

SELECT SUBSTR("My own complete happiness, and the home-centred interests which rise up
around the man who first finds himself master of his own establishment,were sufficient to
absorb all my attention; while Holmes, who loathed every form of society with his whole
Bohemian soul, remained in our lodgings in Baker Street, buried among his old books, and
alternating from week to week between cocaine and ambition, the drowsiness of the drug, and
the fierce energy of his own keen nature.", 98, 4) AS "encryption"
FROM "sentences"
WHERE id = 14;
