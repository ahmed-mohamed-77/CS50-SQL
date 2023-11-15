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

CREATE TABLE schools_users(
    "id" INT NOT NULL,
    "user_id" INT NOT NULL,
    "start_date" DATETIME NOT NULL,
    "end_date" DATETIME NOT NULL,
    "type" TEXT NOT NULL,

    CONSTRAINT schooluser_PK PRIMARY KEY ("id"),
    CONSTRAINT schooluser_user_PK FOREIGN KEY ("user_id") REFERENCES "users"("id")
)
