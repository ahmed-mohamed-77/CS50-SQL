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
    CONSTRAINT flight_check_FK FOREIGN KEY ("flight_id") REFERENCES ""("")
);

CREATE TABLE airlines(
    "id" INT NOT NULL,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL,

    CONSTRAINT airlines_PK PRIMARY KEY("id")
);

CREATE TABLE flights(
    "id" INT NOT NULL,
    
)
