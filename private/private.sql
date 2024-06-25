CREATE TABLE "triplet" (
    "sentence_id" INTEGER,
    "starting_character" INTEGER,
    "length_character" INTEGER
);

INSERT INTO "triplet" ("sentence_id", "starting_character", "length_character") VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

select "starting_character", "length_character"
