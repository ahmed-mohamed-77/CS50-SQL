CREATE TABLE IF NOT EXISTS "users" (
    "id" INTEGER,
    "user_name" VARCHAR(100) NOT NULL,
    "password" VARCHAR(30) NOT NULL,

    CONSTRAINT user_pk PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "school" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "type" VARCHAR(50) NOT NULL,
    "founded_year" VARCHAR(15) NOT NULL,

    CONSTRAINT school_pk PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "companies"(
    "id" INTEGER,
    "company_industry" VARCHAR(50) NOT NULL,
    "company_location" VARCHAR(50) NOT NULL,

    CONSTRAINT companies_pk PRIMARY KEY ("id")
);
