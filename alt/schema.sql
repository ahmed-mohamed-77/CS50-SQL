CREATE TABLE IF NOT EXISTS "passengers" (
    "id" INTEGER,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "age" INTEGER NOT NULL,

    CONSTRAINT passenger_id PRIMARY KEY ("id")
);


Check-Ins
When passengers arrive at ATL, they’ll often “check in” to their flights. That’s them telling us they’re here and all set to board.
We’d like to keep a tidy log of such moments. And what would we need to log, you ask? Well, here’s what we need:

The exact date and time at which our passenger checked in
The flight they are checking in for, of course. Can’t lose track of where they’re headed, now can we?


CREATE TABLE IF NOT EXISTS "check_ins" (
    "id" INTEGER,
    "date"
)
