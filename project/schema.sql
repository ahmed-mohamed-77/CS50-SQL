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

CREATE TABLE employees(
    "employee_id" INT,
    "branch_id" INT,
    "position" VARCHAR(25) NOT NULL,
    PRIMARY KEY ("employee_id"),
    FOREIGN KEY ("employee_id") REFERENCES people("id"),
    FOREIGN KEY ("branch_id") REFERENCES branchs("id")
);

CREATE TABLE customers(
    "customer_id" INT,
    "customer_type" VARCHAR(25),
    PRIMARY KEY ("customer_id"),
    FOREIGN KEY ("customer_id") REFERENCES people("id")
);

CREATE TABLE branchs(
    "id" INT,
    "branch_name" VARCHAR(20) NOT NULL,
    "branch_code" INT NOT NULL,
    "address" VARCHAR(25) NOT NULL,
    "phone_number" VARCHAR(15) NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE accounts(
    "account_id" INT,
    "customer_id" INT,
    "transaction_id" INT,
    "account_number" VARCHAR(20) NOT NULL,
    "account_type" VARCHAR(20) NOT NULL,
    "current_balance" NUMERIC(10,2) NOT NULL,
    "open_date" DATETIME DEFAULT DATETIME NOT NULL,
    "close_date" DATETIME DEFAULT DATETIME DEFAULT NULL,
    "account_status" VARCHAR(20) DEFAULT 'active' NOT NULL,
    "branch_id" INT,
    PRIMARY KEY ("account_id"),
    FOREIGN KEY ("customer_id") REFERENCES customers("customer_id"),
    FOREIGN KEY ("branch_id") REFERENCES branchs("id"),
    FOREIGN KEY ("transaction_id") REFERENCES transactions("transaction_id")
);

CREATE TABLE transactions(
    "transaction_id" INT,
    "employee_id" INT ,
    "transaction_type" VARCHAR(20) NOT NULL,
    "aomunt" NUMERIC(10,2) NOT NULL,
    "date" DATETIME DEFAULT DATETIME NOT NULL,
    PRIMARY KEY("transaction_id"),
    FOREIGN KEY ("employee_id") REFERENCES employees("employee_id")
);

CREATE TABLE loans(
    "loan_id" INT,
    "employee_id" INT,
    "customer_id" INT,
    "loan_payment_id" INT,
    "loan_type" VARCHAR(20) NOT NULL,
    "loan_amount" NUMERIC(10,2) NOT NULL,
    "interset_rate" NUMERIC(10,2) NOT NULL,
    "start_date" DATETIME DEFAULT TIMESTAMP NOT NULL,
    "end_date" DATETIME DEFAULT TIMESTAMP NOT NULL,
    "loan_status" VARCHAR(20) NOT NULL,
    PRIMARY KEY ("loan_id"),
    FOREIGN KEY ("customer_id") REFERENCES customers("customer_id"),
    FOREIGN KEY ("employee_id") REFERENCES employees("employee_id"),
    FOREIGN KEY ("loan_payment_id") REFERENCES loan_payments("loan_payment_id")
);

CREATE TABLE loan_payments(
    "loan_payment_id" INT,
    "scheduled_payment_date" DATETIME NOT NULL,
    "payment_amount" NUMERIC(10,2) NOT NULL,
    "principal_amount" NUMERIC(10,2) NOT NULL,
    "interest_amount" NUMERIC(10,2) NOT NULL,
    "paid_amount" NUMERIC(10,2) NOT NULL,
    "paid_date" DATETIME NOT NULL,
    PRIMARY KEY("loan_payment_id")
);

-- Inserting data into peoples table
INSERT INTO peoples (id, first_name, last_name, email, address, phone, role)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123 Main St', '555-1234', 'Customer'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak St', '555-5678', 'Employee'),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', '789 Pine St', '555-9101', 'Customer'),
(4, 'Alice', 'Williams', 'alice.williams@example.com', '101 Maple St', '555-1122', 'Employee'),
(5, 'Charlie', 'Brown', 'charlie.brown@example.com', '202 Elm St', '555-3344', 'Customer'),
(6, 'Eva', 'Davis', 'eva.davis@example.com', '303 Cedar St', '555-5566', 'Employee'),
(7, 'Frank', 'Miller', 'frank.miller@example.com', '404 Walnut St', '555-7788', 'Customer'),
(8, 'Grace', 'Taylor', 'grace.taylor@example.com', '505 Birch St', '555-9900', 'Employee'),
(9, 'Henry', 'Anderson', 'henry.anderson@example.com', '606 Pine St', '555-1122', 'Customer'),
(10, 'Ivy', 'Clark', 'ivy.clark@example.com', '707 Oak St', '555-3344', 'Employee'),
(11, 'Jack', 'Roberts', 'jack.roberts@example.com', '808 Elm St', '555-5566', 'Customer'),
(12, 'Kelly', 'Hill', 'kelly.hill@example.com', '909 Maple St', '555-7788', 'Employee'),
(13, 'Liam', 'Wilson', 'liam.wilson@example.com', '1011 Pine St', '555-9900', 'Customer'),
(14, 'Mia', 'Martinez', 'mia.martinez@example.com', '1112 Oak St', '555-1122', 'Employee'),
(15, 'Noah', 'Johnson', 'noah.johnson@example.com', '1213 Elm St', '555-3344', 'Customer'),
(16, 'Olivia', 'Davis', 'olivia.davis@example.com', '1314 Cedar St', '555-5566', 'Employee'),
(17, 'Owen', 'Anderson', 'owen.anderson@example.com', '1415 Walnut St', '555-7788', 'Customer'),
(18, 'Penelope', 'Brown', 'penelope.brown@example.com', '1516 Birch St', '555-9900', 'Employee'),
(19, 'Quinn', 'Miller', 'quinn.miller@example.com', '1617 Pine St', '555-1122', 'Customer'),
(20, 'Robert', 'Taylor', 'robert.taylor@example.com', '1718 Oak St', '555-3344', 'Employee'),
(21, 'Samantha', 'White', 'samantha.white@example.com', '1819 Elm St', '555-5566', 'Customer'),
(22, 'Thomas', 'Hill', 'thomas.hill@example.com', '1920 Cedar St', '555-7788', 'Employee'),
(23, 'Victoria', 'Roberts', 'victoria.roberts@example.com', '2021 Walnut St', '555-9900', 'Customer'),
(24, 'William', 'Martinez', 'william.martinez@example.com', '2122 Birch St', '555-1122', 'Employee'),
(25, 'Xavier', 'Wilson', 'xavier.wilson@example.com', '2223 Pine St', '555-3344', 'Customer'),
(26, 'Yasmine', 'Anderson', 'yasmine.anderson@example.com', '2324 Oak St', '555-5566', 'Employee'),
(27, 'Zachary', 'Davis', 'zachary.davis@example.com', '2425 Elm St', '555-7788', 'Customer'),
(28, 'Ava', 'Brown', 'ava.brown@example.com', '2526 Cedar St', '555-9900', 'Employee'),
(29, 'Benjamin', 'Miller', 'benjamin.miller@example.com', '2627 Walnut St', '555-1122', 'Customer'),
(30, 'Chloe', 'Taylor', 'chloe.taylor@example.com', '2728 Birch St', '555-3344', 'Employee'),
(31, 'David', 'Johnson', 'david.johnson@example.com', '2829 Pine St', '555-5566', 'Customer'),
(32, 'Emily', 'Clark', 'emily.clark@example.com', '2930 Oak St', '555-7788', 'Employee'),
(33, 'Fiona', 'Miller', 'fiona.miller@example.com', '3031 Elm St', '555-9900', 'Employee'),
(34, 'George', 'Taylor', 'george.taylor@example.com', '3132 Cedar St', '555-1122', 'Customer'),
(35, 'Hannah', 'Roberts', 'hannah.roberts@example.com', '3233 Walnut St', '555-3344', 'Employee'),
(36, 'Ian', 'Martinez', 'ian.martinez@example.com', '3334 Birch St', '555-5566', 'Customer'),
(37, 'Jessica', 'Wilson', 'jessica.wilson@example.com', '3435 Pine St', '555-7788', 'Employee'),
(38, 'Kyle', 'Anderson', 'kyle.anderson@example.com', '3536 Oak St', '555-9900', 'Customer'),
(39, 'Lily', 'Davis', 'lily.davis@example.com', '3637 Elm St', '555-1122', 'Employee'),
(40, 'Mason', 'Brown', 'mason.brown@example.com', '3738 Cedar St', '555-3344', 'Customer'),
(41, 'Natalie', 'Miller', 'natalie.miller@example.com', '3839 Walnut St', '555-5566', 'Employee'),
(42, 'Oscar', 'Taylor', 'oscar.taylor@example.com', '3940 Birch St', '555-7788', 'Customer'),
(43, 'Pamela', 'Roberts', 'pamela.roberts@example.com', '4041 Pine St', '555-9900', 'Employee'),
(44, 'Quentin', 'Martinez', 'quentin.martinez@example.com', '4142 Oak St', '555-1122', 'Customer'),
(45, 'Rachel', 'Wilson', 'rachel.wilson@example.com', '4243 Elm St', '555-3344', 'Employee'),
(46, 'Samuel', 'Anderson', 'samuel.anderson@example.com', '4344 Cedar St', '555-5566', 'Customer'),
(47, 'Tara', 'Davis', 'tara.davis@example.com', '4445 Walnut St', '555-7788', 'Employee'),
(48, 'Ulysses', 'Brown', 'ulysses.brown@example.com', '4546 Birch St', '555-9900', 'Customer'),
(49, 'Vivian', 'Miller', 'vivian.miller@example.com', '4647 Pine St', '555-1122', 'Employee'),
(50, 'Winston', 'Taylor', 'winston.taylor@example.com', '4748 Oak St', '555-3344', 'Customer'),
(51, 'Xander', 'Martinez', 'xander.martinez@example.com', '4849 Elm St', '555-5566', 'Employee'),
(52, 'Yvonne', 'Wilson', 'yvonne.wilson@example.com', '4950 Cedar St', '555-7788', 'Customer'),
(53, 'Zane', 'Roberts', 'zane.roberts@example.com', '5051 Walnut St', '555-9900', 'Employee'),
(54, 'Abigail', 'Brown', 'abigail.brown@example.com', '5152 Birch St', '555-1122', 'Customer'),
(55, 'Bryan', 'Davis', 'bryan.davis@example.com', '5253 Pine St', '555-3344', 'Employee'),
(56, 'Cassandra', 'Anderson', 'cassandra.anderson@example.com', '5354 Oak St', '555-5566', 'Customer'),
(57, 'Derek', 'Miller', 'derek.miller@example.com', '5455 Elm St', '555-7788', 'Employee'),
(58, 'Emily', 'Taylor', 'emily.taylor@example.com', '5556 Cedar St', '555-9900', 'Customer'),
(59, 'Felix', 'Martinez', 'felix.martinez@example.com', '5657 Walnut St', '555-1122', 'Employee'),
(60, 'Gabrielle', 'Wilson', 'gabrielle.wilson@example.com', '5758 Birch St', '555-3344', 'Customer'),
(61, 'Henry', 'Roberts', 'henry.roberts@example.com', '5859 Pine St', '555-5566', 'Employee'),
(62, 'Isabel', 'Brown', 'isabel.brown@example.com', '5960 Oak St', '555-7788', 'Customer'),
(63, 'Jackson', 'Davis', 'jackson.davis@example.com', '6061 Elm St', '555-9900', 'Employee'),
(64, 'Katherine', 'Anderson', 'katherine.anderson@example.com', '6162 Cedar St', '555-1122', 'Customer'),
(65, 'Liam', 'Miller', 'liam.miller@example.com', '6263 Walnut St', '555-3344', 'Employee'),
(66, 'Mia', 'Taylor', 'mia.taylor@example.com', '6364 Birch St', '555-5566', 'Customer'),
(67, 'Nathan', 'Martinez', 'nathan.martinez@example.com', '6465 Pine St', '555-7788', 'Employee'),
(68, 'Olivia', 'Wilson', 'olivia.wilson@example.com', '6566 Oak St', '555-9900', 'Customer'),
(69, 'Preston', 'Roberts', 'preston.roberts@example.com', '6667 Elm St', '555-1122', 'Employee'),
(70, 'Quinn', 'Brown', 'quinn.brown@example.com', '6768 Cedar St', '555-3344', 'Customer'),

