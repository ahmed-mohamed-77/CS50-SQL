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


CREATE TABLE IF NOT EXISTS "airlines" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "section" NOT NULL CHECK ("section" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),

    CONSTRAINT airlines_pk PRIMARY KEY ("id"),
);


Flights
We serve as many as 1,000 flights daily. To ensure that our passengers are never left wondering, we need to
give them all the critical details about their flight. Here’s what we’d like to store:

The flight number. For example, “900”. Just know that we sometimes re-use flight numbers.
The airline operating the flight. You can keep it simple and assume one flight is operated by one airline.
The code of the airport they’re departing from. For example, “ATL” or “BOS”.
The code of the airport they’re heading to
The expected departure date and time (to the minute, of course!)
The expected arrival date and time, to the very same accuracy


CREATE TABLE IF NOT EXISTS "flights" (
    "id" INTEGER,
    "flight_number" varchar(50) NOT NULL,
    "airline_operation" VARCHAR(50) NOT NULL,
    "departing_from" VARCHAR(50) NOT NULL,
    "heading_to" VARCHAR(50) NOT NULL,
    "expected_departure" ,
    "expected_arrival" ,

    CONSTRAINT flights_pk PRIMARY KEY ("id"),
);


