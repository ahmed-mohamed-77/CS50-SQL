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

    CONSTRAINT airlines_pk PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS "flights" (
    "id" INTEGER PRIMARY KEY,
    "flight_number" VARCHAR(50) NOT NULL,
    "airline_operation" VARCHAR(50) NOT NULL,
    "departing_from" VARCHAR(50) NOT NULL,
    "heading_to" VARCHAR(50) NOT NULL,
    "expected_departure" TIMESTAMP NOT NULL,
    "expected_arrival" TIMESTAMP NOT NULL,

    CONSTRAINT flights_pk PRIMARY KEY ("id")
);


