-- In this SQL file, write (and comment!) the schema of your database,
-- including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc.
-- statements that compose it


CREATE TABLE peoples(
    "id" INT,
    "first_name" VARCHAR(15) NOT NULL,
    "last_name" VARCHAR(15) NOT NULL,
    "email" VARCHAR(55) NOT NULL,
    "address" VARCHAR(60) NOT NULL,
    "phone" VARCHAR(15) NOT NULL,
    "role" VARCHAR(9) CHECK("role" = 'Customer' OR "role" = 'Employee') NOT NULL,
    PRIMARY KEY ("id")
);
IF peoples("role") = 'Employee' THEN
CREATE TABLE employees(
    "employee_id" INT,
    "branch_id" INT,
    "position" VARCHAR(25) NOT NULL,
    PRIMARY KEY ("employee_id"),
    FOREIGN KEY "employee_id" REFERENCES people("id"),
    FOREIGN KEY "branch_id" REFERENCES branchs("id")
);

CREATE TABLE customers(
    "customer_id" INT,
    "customer_type" VARCHAR(25),
    PRIMARY KEY ("customer_id")
);

CREATE TABLE branchs(
    "id" INT,
    "branch_name" VARCHAR(20) NOT NULL,
    "branch_code" INT NOT NULL,
    "address" VARCHAR(25) NOT NULL,
    "phone_number" VARCHAR(15) NOT NULL,
    PRIMARY KEY("id")
)
