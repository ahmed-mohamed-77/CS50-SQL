CREATE TABLE IF NOT EXISTS "passengers" (
    "id" INTEGER,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "age" INTEGER NOT NULL,

    CONSTRAINT passenger_id PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "check_ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "date" strftime("%d - %m - %Y", "date") NOT NULL,
    "time" strftime("%I:%M:%S: %f", "time") NOT NULL,

    CONSTRAINT check_ins_pk PRIMARY KEY ("id"),
    CONSTRAINT check_ins_fk FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id")
);


Airlines
ATL’s a hub for many domestic and international airlines: names like Delta, British Airways, Air France, Korean Air, and Turkish Airlines. The list goes on.
So here’s what we track:

The name of the airline
The “concourse” or, shall I say, the section of our airport where the airline operates. We have 7 concourses: A, B, C, D, E, F, and T.

CREATE TABLE IF NOT EXISTS "airlines" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "section" CHECK ("section" IN (A, B, C, D, E, F,T))

    CONSTRAINT airlines_pk PRIMARY KEY ("id"),
)
