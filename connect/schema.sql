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
    "school_type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "founded_year" INT NOT NULL,

    CONSTRAINT school_PK PRIMARY KEY ("id")
);

CREATE TABLE companies(
    "id" INT NOT NULL,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,

    CONSTRAINT company_PK PRIMARY KEY("id")
);

CREATE TABLE users_connections(
    "user1_id" INT NOT NULL,
    "user2_id" INT NOT NULL,

    CONSTRAINT users_connections_PK PRIMARY KEY ("user1_id", "user2_id")
)

CREATE TABLE schools_users(
    "id" INT NOT NULL,
    "user_id" INT NOT NULL,
    "school_id" INT NOT NULL
    "start_date" DATETIME NOT NULL,
    "end_date" DATETIME NOT NULL,
    "degree" TEXT NOT NULL,

    CONSTRAINT schooluser_PK PRIMARY KEY ("id"),
    CONSTRAINT schooluser_user_PK FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    CONSTRAINT schooluser_school_PK FOREIGN KEY ("school_id") REFERENCES "schools"("id")
);

CREATE TABLE companies_users(
    "id" INT NOT NULL,
    "user_id" INT NOT NULL,
    "company_id" INT NOT NULL,
    "start_date" DATETIME NOT NULL,
    "end_date" DATETIME NOT NULL,
    "company_title" TEXT NOT NULL,

    CONSTRAINT companiesuser_PK PRIMARY KEY ("id"),
    CONSTRAINT companiesusers_users_FK FOREIGN KEY "user_id" REFERENCES "users"("id"),
    CONSTRAINT companiesusers_company_FK FOREIGN KEY "company_id" REFERENCES "companies"("id"),
);
