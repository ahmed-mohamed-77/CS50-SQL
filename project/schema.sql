-- In this SQL file, write (and comment!) the schema of your database,
-- including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc.
-- statements that compose it


CREATE TABLE people(
    "id" INT,
    "first_name" VARCHAR(15) NOT NULL,
    "last_name" VARCHAR(15) NOT NULL,
    "email" VARCHAR(55) NOT NULL,
    "address" VARCHAR(60) NOT NULL,
    "phone" VARCHAR(15) NOT NULL,
    "role" VARCHAR(9) CHECK("role" = 'Customer' OR "role" = 'Employee') NOT NULL,
);

CREATE TABLE employee(
    "employee_id" INT,
    "branch_id" INT,
    "position" VARCHAR(25) NOT NULL
);

CREATE TABLE customers(
    "customer_id" INT,
    "customer_type" VARCHAR(25)
)
