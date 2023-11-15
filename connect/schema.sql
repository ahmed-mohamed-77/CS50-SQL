CREATE TABLE users(
    "id" INT NOT NULL,
    "first_name" TEXT NOT NULL,
    "Last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,

    CONSTRAINT user_PK PRIMARY KEY ("id")
);

CREATE TABLE schools(
    "id" INT NOT NULL,
    "name" TEXT NOT NULL UNIQUE,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year" INT NOT NULL,

    CONSTRAINT school_PK PRIMARY KEY ("id")
);

CREATE TABLE companies(
    "id" INT NOT NULL,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,

    CONSTRAINT company_PK PRIMARY KEY("id")
);
