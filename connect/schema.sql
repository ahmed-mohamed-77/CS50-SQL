CREATE TABLE users(
    "id" INT,
    "first_name" TEXT NOT NULL,
    "Last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,

    CONSTRAINT user_PK PRIMARY KEY ("id")
);

CREATE TABLE schools(
    "id" INT,
    "name" TEXT NOT NULL UNIQUE,
    "school_type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "founded_year" INT NOT NULL,

    CONSTRAINT school_PK PRIMARY KEY ("id")
);

CREATE TABLE companies(
    "id" INT,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,

    CONSTRAINT company_PK PRIMARY KEY("id")
);

CREATE TABLE users_connections(
    "user1_id" INT,
    "user2_id" INT,

    CONSTRAINT users_connections_PK PRIMARY KEY ("user1_id", "user2_id"),
    CONSTRAINT users_connections_users_FK FOREIGN KEY ("user1_id") REFERENCES "users"("id"),
    CONSTRAINT users_connections_users_FK FOREIGN KEY ("user2_id") REFERENCES "users"("id")

);

CREATE TABLE schools_users(
    "user_id" INT,
    "school_id" INT,
    "start_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "degree" TEXT NOT NULL,

    CONSTRAINT schooluser_PK PRIMARY KEY ("user_id", "school_id"),
    CONSTRAINT schooluser_user_PK FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    CONSTRAINT schooluser_school_PK FOREIGN KEY ("school_id") REFERENCES "schools"("id")
);

CREATE TABLE companies_users(
    "user_id" INT,
    "company_id" INT,
    "start_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "company_title" TEXT NOT NULL,

    CONSTRAINT companiesuser_PK PRIMARY KEY ("user_id", "company_id"),
    CONSTRAINT companiesusers_users_FK FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    CONSTRAINT companiesusers_company_FK FOREIGN KEY ("company_id") REFERENCES "companies"("id")
);
