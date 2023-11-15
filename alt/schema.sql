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
    "flight_id" BIG INT NOT NULL
)



