CREATE TABLE passengers(
    "id" INT NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INT NOT NULL,

    CONSTRAINT passinger_PK PRIMARY KEY ("id")
);

CREATE TABLE check-ins(
    "id" INT NOT NULL,
    "passenger_id" BIG INT NOT NULL,
    "datetime" DATETIME NOT NULL,
    "flight_id" BIG INT NOT NULL,

    CONSTRAINT check-ins_PK PRIMARY KEY (id),
    CONSTRAINT passenger_check_FK FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
    CONSTRAINT flight_check_FK FOREIGN KEY ("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE airlines(
    "id" INT NOT NULL,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL,

    CONSTRAINT airlines_PK PRIMARY KEY("id")
);

CREATE TABLE flights(
    "id" INT NOT NULL,
    "flights_id" INT NOT NULL,
    "airline_id" INT NOT NULL,
    "from_airport_code" TEXT NOT NULL,
    "to_airport_code" TEXT NOT NULL,
    "departure" DATETIME NOT NULL,
    "arrival" DATETIME NOT NULL,

    CONSTRAINT flights_PK PRIMARY KEY ("id"),
    CONSTRAINT flights_airline_FK FOREIGN KEY ("airline_id") REFERENCES "airlines"("id")
)
