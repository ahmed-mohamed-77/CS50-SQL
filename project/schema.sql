-- In this SQL file, write (and comment!) the schema of your database,
-- including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc.
-- statements that compose it

DROP TABLE IF EXISTS peoples;
DROP TABLE IF EXISTS branchs;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS loans;
DROP TABLE IF EXISTS loan_payments;


CREATE TABLE peoples (
    "id" INTEGER ,
    "first_name" VARCHAR(15) NOT NULL,
    "last_name" VARCHAR(15) NOT NULL,
    "email" VARCHAR(55) NOT NULL,
    "address" VARCHAR(60) NOT NULL,
    "phone" VARCHAR(15) NOT NULL,
    "role" VARCHAR(9) CHECK("role" = 'Customer' OR "role" = 'Employee') NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE branchs (
    "id" INTEGER ,
    "branch_name" VARCHAR(20) NOT NULL,
    "branch_code" INTEGER NOT NULL,
    "address" VARCHAR(25) NOT NULL,
    "phone_number" VARCHAR(15) NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE employees (
    "employee_id" INTEGER ,
    "branch_id" INTEGER,
    "position" VARCHAR(25) NOT NULL,
    PRIMARY KEY ("employee_id", "branch_id"),
    FOREIGN KEY ("employee_id") REFERENCES peoples("id"),
    FOREIGN KEY ("branch_id") REFERENCES branchs("id")
);

CREATE TABLE customers (
    "customer_id" INTEGER ,
    "customer_type" VARCHAR(25),
    PRIMARY KEY ("customer_id"),
    FOREIGN KEY ("customer_id") REFERENCES peoples("id")
);

CREATE TABLE transactions (
    "transaction_id" INTEGER ,
    "employee_id" INTEGER ,
    "transaction_type" VARCHAR(20) NOT NULL,
    "amount" NUMERIC(10,2) NOT NULL,
    "date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY("transaction_id"),
    FOREIGN KEY ("employee_id") REFERENCES employees("employee_id")
);

CREATE TABLE transactions (
    "transaction_id" INTEGER ,
    "employee_id" INTEGER ,
    "transaction_type" VARCHAR(20) NOT NULL,
    "amount" NUMERIC(10,2) NOT NULL,
    "date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY("transaction_id"),
    FOREIGN KEY ("employee_id") REFERENCES employees("employee_id")
);

CREATE TABLE accounts (
    "account_id" INTEGER ,
    "customer_id" INTEGER,
    "transaction_id" INTEGER,
    "account_number" VARCHAR(20) NOT NULL,
    "account_type" VARCHAR(20) NOT NULL,
    "current_balance" NUMERIC(10,2) NOT NULL,
    "open_date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "close_date" DATETIME DEFAULT NULL,
    "account_status" VARCHAR(20) DEFAULT 'active' NOT NULL,
    "branch_id" INTEGER,
    PRIMARY KEY ("account_id"),
    FOREIGN KEY ("customer_id") REFERENCES customers("customer_id"),
    FOREIGN KEY ("branch_id") REFERENCES branchs("id"),
    FOREIGN KEY ("transaction_id") REFERENCES transactions("transaction_id")
);

-- CREATE TABLE loans (
--     "loan_id" INTEGER ,
--     "employee_id" INTEGER,
--     "customer_id" INTEGER,
--     "loan_payment_id" INTEGER,
--     "loan_type" VARCHAR(20) NOT NULL,
--     "loan_amount" NUMERIC(10,2) NOT NULL,
--     "interest_rate" NUMERIC(10,2) NOT NULL,
--     "start_date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
--     "end_date" DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
--     "loan_status" VARCHAR(20) NOT NULL,
--     PRIMARY KEY ("loan_id"),
--     FOREIGN KEY ("customer_id") REFERENCES customers("customer_id"),
--     FOREIGN KEY ("employee_id") REFERENCES employees("employee_id"),
--     FOREIGN KEY ("loan_payment_id") REFERENCES loan_payments("loan_payment_id")
-- );

-- CREATE TABLE loan_payments (
--     "loan_payment_id" INTEGER ,
--     "scheduled_payment_date" DATETIME NOT NULL,
--     "payment_amount" NUMERIC(10,2) NOT NULL,
--     "principal_amount" NUMERIC(10,2) NOT NULL,
--     "interest_amount" NUMERIC(10,2) NOT NULL,
--     "paid_amount" NUMERIC(10,2) NOT NULL,
--     "paid_date" DATETIME NOT NULL,
--     PRIMARY KEY("loan_payment_id")
-- );


INSERT INTO peoples ( first_name, last_name, email, address, phone, role)
VALUES
( 'John', 'Doe', 'john.doe@example.com', '123 Main St', '555-1234', 'Customer'),
( 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak St', '555-5678', 'Employee'),
( 'Bob', 'Johnson', 'bob.johnson@example.com', '789 Pine St', '555-9101', 'Customer'),
( 'Alice', 'Williams', 'alice.williams@example.com', '101 Maple St', '555-1122', 'Employee'),
( 'Charlie', 'Brown', 'charlie.brown@example.com', '202 Elm St', '555-3344', 'Customer'),
( 'Eva', 'Davis', 'eva.davis@example.com', '303 Cedar St', '555-5566', 'Employee'),
( 'Frank', 'Miller', 'frank.miller@example.com', '404 Walnut St', '555-7788', 'Customer'),
( 'Grace', 'Taylor', 'grace.taylor@example.com', '505 Birch St', '555-9900', 'Employee'),
( 'Henry', 'Anderson', 'henry.anderson@example.com', '606 Pine St', '555-1122', 'Customer'),
( 'Ivy', 'Clark', 'ivy.clark@example.com', '707 Oak St', '555-3344', 'Employee'),
( 'Jack', 'Roberts', 'jack.roberts@example.com', '808 Elm St', '555-5566', 'Customer'),
( 'Kelly', 'Hill', 'kelly.hill@example.com', '909 Maple St', '555-7788', 'Employee'),
( 'Liam', 'Wilson', 'liam.wilson@example.com', '1011 Pine St', '555-9900', 'Customer'),
( 'Mia', 'Martinez', 'mia.martinez@example.com', '1112 Oak St', '555-1122', 'Employee'),
( 'Noah', 'Johnson', 'noah.johnson@example.com', '1213 Elm St', '555-3344', 'Customer'),
( 'Olivia', 'Davis', 'olivia.davis@example.com', '1314 Cedar St', '555-5566', 'Employee'),
( 'Owen', 'Anderson', 'owen.anderson@example.com', '1415 Walnut St', '555-7788', 'Customer'),
( 'Penelope', 'Brown', 'penelope.brown@example.com', '1516 Birch St', '555-9900', 'Employee'),
( 'Quinn', 'Miller', 'quinn.miller@example.com', '1617 Pine St', '555-1122', 'Customer'),
( 'Robert', 'Taylor', 'robert.taylor@example.com', '1718 Oak St', '555-3344', 'Employee'),
( 'Samantha', 'White', 'samantha.white@example.com', '1819 Elm St', '555-5566', 'Customer'),
( 'Thomas', 'Hill', 'thomas.hill@example.com', '1920 Cedar St', '555-7788', 'Employee'),
( 'Victoria', 'Roberts', 'victoria.roberts@example.com', '2021 Walnut St', '555-9900', 'Customer'),
( 'William', 'Martinez', 'william.martinez@example.com', '2122 Birch St', '555-1122', 'Employee'),
( 'Xavier', 'Wilson', 'xavier.wilson@example.com', '2223 Pine St', '555-3344', 'Customer'),
( 'Yasmine', 'Anderson', 'yasmine.anderson@example.com', '2324 Oak St', '555-5566', 'Employee'),
( 'Zachary', 'Davis', 'zachary.davis@example.com', '2425 Elm St', '555-7788', 'Customer'),
( 'Ava', 'Brown', 'ava.brown@example.com', '2526 Cedar St', '555-9900', 'Employee'),
( 'Benjamin', 'Miller', 'benjamin.miller@example.com', '2627 Walnut St', '555-1122', 'Customer'),
( 'Chloe', 'Taylor', 'chloe.taylor@example.com', '2728 Birch St', '555-3344', 'Employee'),
( 'David', 'Johnson', 'david.johnson@example.com', '2829 Pine St', '555-5566', 'Customer'),
( 'Emily', 'Clark', 'emily.clark@example.com', '2930 Oak St', '555-7788', 'Employee'),
( 'Fiona', 'Miller', 'fiona.miller@example.com', '3031 Elm St', '555-9900', 'Employee'),
( 'George', 'Taylor', 'george.taylor@example.com', '3132 Cedar St', '555-1122', 'Customer'),
( 'Hannah', 'Roberts', 'hannah.roberts@example.com', '3233 Walnut St', '555-3344', 'Employee'),
( 'Ian', 'Martinez', 'ian.martinez@example.com', '3334 Birch St', '555-5566', 'Customer'),
( 'Jessica', 'Wilson', 'jessica.wilson@example.com', '3435 Pine St', '555-7788', 'Employee'),
( 'Kyle', 'Anderson', 'kyle.anderson@example.com', '3536 Oak St', '555-9900', 'Customer'),
( 'Lily', 'Davis', 'lily.davis@example.com', '3637 Elm St', '555-1122', 'Employee'),
( 'Mason', 'Brown', 'mason.brown@example.com', '3738 Cedar St', '555-3344', 'Customer'),
( 'Natalie', 'Miller', 'natalie.miller@example.com', '3839 Walnut St', '555-5566', 'Employee'),
( 'Oscar', 'Taylor', 'oscar.taylor@example.com', '3940 Birch St', '555-7788', 'Customer'),
( 'Pamela', 'Roberts', 'pamela.roberts@example.com', '4041 Pine St', '555-9900', 'Employee'),
( 'Quentin', 'Martinez', 'quentin.martinez@example.com', '4142 Oak St', '555-1122', 'Customer'),
( 'Rachel', 'Wilson', 'rachel.wilson@example.com', '4243 Elm St', '555-3344', 'Employee'),
( 'Samuel', 'Anderson', 'samuel.anderson@example.com', '4344 Cedar St', '555-5566', 'Customer'),
( 'Tara', 'Davis', 'tara.davis@example.com', '4445 Walnut St', '555-7788', 'Employee'),
( 'Ulysses', 'Brown', 'ulysses.brown@example.com', '4546 Birch St', '555-9900', 'Customer'),
( 'Vivian', 'Miller', 'vivian.miller@example.com', '4647 Pine St', '555-1122', 'Employee'),
( 'Winston', 'Taylor', 'winston.taylor@example.com', '4748 Oak St', '555-3344', 'Customer'),
( 'Xander', 'Martinez', 'xander.martinez@example.com', '4849 Elm St', '555-5566', 'Employee'),
( 'Yvonne', 'Wilson', 'yvonne.wilson@example.com', '4950 Cedar St', '555-7788', 'Customer'),
( 'Zane', 'Roberts', 'zane.roberts@example.com', '5051 Walnut St', '555-9900', 'Employee'),
( 'Abigail', 'Brown', 'abigail.brown@example.com', '5152 Birch St', '555-1122', 'Customer'),
( 'Bryan', 'Davis', 'bryan.davis@example.com', '5253 Pine St', '555-3344', 'Employee'),
( 'Cassandra', 'Anderson', 'cassandra.anderson@example.com', '5354 Oak St', '555-5566', 'Customer'),
( 'Derek', 'Miller', 'derek.miller@example.com', '5455 Elm St', '555-7788', 'Employee'),
( 'Emily', 'Taylor', 'emily.taylor@example.com', '5556 Cedar St', '555-9900', 'Customer'),
( 'Felix', 'Martinez', 'felix.martinez@example.com', '5657 Walnut St', '555-1122', 'Employee'),
( 'Gabrielle', 'Wilson', 'gabrielle.wilson@example.com', '5758 Birch St', '555-3344', 'Customer'),
( 'Henry', 'Roberts', 'henry.roberts@example.com', '5859 Pine St', '555-5566', 'Employee'),
( 'Isabel', 'Brown', 'isabel.brown@example.com', '5960 Oak St', '555-7788', 'Customer'),
( 'Jackson', 'Davis', 'jackson.davis@example.com', '6061 Elm St', '555-9900', 'Employee'),
( 'Katherine', 'Anderson', 'katherine.anderson@example.com', '6162 Cedar St', '555-1122', 'Customer'),
( 'Liam', 'Miller', 'liam.miller@example.com', '6263 Walnut St', '555-3344', 'Employee'),
( 'Mia', 'Taylor', 'mia.taylor@example.com', '6364 Birch St', '555-5566', 'Customer'),
( 'Nathan', 'Martinez', 'nathan.martinez@example.com', '6465 Pine St', '555-7788', 'Employee'),
( 'Olivia', 'Wilson', 'olivia.wilson@example.com', '6566 Oak St', '555-9900', 'Customer'),
( 'Preston', 'Roberts', 'preston.roberts@example.com', '6667 Elm St', '555-1122', 'Employee'),
('Quinn', 'Brown', 'quinn.brown@example.com', '6768 Cedar St', '555-3344', 'Customer'),
( 'Rebecca', 'Davis', 'rebecca.davis@example.com', '6869 Walnut St', '555-5566', 'Employee'),
( 'Simon', 'Anderson', 'simon.anderson@example.com', '6970 Birch St', '555-7788', 'Customer'),
( 'Tessa', 'Miller', 'tessa.miller@example.com', '7071 Pine St', '555-9900', 'Employee'),
( 'Ulysses', 'Taylor', 'ulysses.taylor@example.com', '7172 Oak St', '555-1122', 'Customer'),
( 'Victoria', 'Martinez', 'victoria.martinez@example.com', '7273 Elm St', '555-3344', 'Employee'),
( 'William', 'Wilson', 'william.wilson@example.com', '7374 Cedar St', '555-5566', 'Customer'),
( 'Xander', 'Roberts', 'xander.roberts@example.com', '7475 Walnut St', '555-7788', 'Employee'),
( 'Yasmine', 'Brown', 'yasmine.brown@example.com', '7576 Birch St', '555-9900', 'Customer'),
( 'Zachary', 'Davis', 'zachary.davis@example.com', '7677 Pine St', '555-1122', 'Employee'),
( 'Alice', 'Miller', 'alice.miller@example.com', '7778 Oak St', '555-3344', 'Customer'),
( 'David 81', 'Rodriguez 81', 'david81@example.com', 'Address 81', 'Phone 81', 'Customer'),
( 'Isabella 82', 'Martinez 82', 'isabella82@example.com', 'Address 82', 'Phone 82', 'Employee'),
( 'Joseph 83', 'Hernandez 83', 'joseph83@example.com', 'Address 83', 'Phone 83', 'Customer'),
( 'Mia 84', 'Lopez 84', 'mia84@example.com', 'Address 84', 'Phone 84', 'Employee'),
( 'Thomas 85', 'Gonzalez 85', 'thomas85@example.com', 'Address 85', 'Phone 85', 'Customer'),
( 'Emily 86', 'Perez 86', 'emily86@example.com', 'Address 86', 'Phone 86', 'Employee'),
( 'Charles 87', 'Wilson 87', 'charles87@example.com', 'Address 87', 'Phone 87', 'Customer'),
( 'Abigail 88', 'Anderson 88', 'abigail88@example.com', 'Address 88', 'Phone 88', 'Employee'),
( 'Christopher 89', 'Thomas 89', 'christopher89@example.com', 'Address 89', 'Phone 89', 'Customer'),
( 'Ella 90', 'Taylor 90', 'ella90@example.com', 'Address 90', 'Phone 90', 'Employee'),
( 'Daniel 91', 'Moore 91', 'daniel91@example.com', 'Address 91', 'Phone 91', 'Customer'),
( 'Scarlett 92', 'Martin 92', 'scarlett92@example.com', 'Address 92', 'Phone 92', 'Employee'),
( 'Matthew 93', 'Jackson 93', 'matthew93@example.com', 'Address 93', 'Phone 93', 'Customer'),
( 'Sophie 94', 'Thompson 94', 'sophie94@example.com', 'Address 94', 'Phone 94', 'Employee'),
( 'Anthony 95', 'White 95', 'anthony95@example.com', 'Address 95', 'Phone 95', 'Customer'),
( 'Harper 96', 'Harris 96', 'harper96@example.com', 'Address 96', 'Phone 96', 'Employee'),
( 'Andrew 97', 'Clark 97', 'andrew97@example.com', 'Address 97', 'Phone 97', 'Customer'),
( 'Evelyn 98', 'Lewis 98', 'evelyn98@example.com', 'Address 98', 'Phone 98', 'Employee'),
( 'Joshua 99', 'Robinson 99', 'joshua99@example.com', 'Address 99', 'Phone 99', 'Customer'),
( 'Lily 100', 'Walker 100', 'lily100@example.com', 'Address 100', 'Phone 100', 'Employee');

INSERT INTO branchs ( branch_name, branch_code, address, phone_number)
VALUES
( 'Main Branch', 12345, '123 Main St', '555-1234'),
( 'North Branch', 67890, '456 North St', '555-6789'),
( 'East Branch', 23456, '789 East St', '555-2345'),
( 'West Branch', 78901, '987 West St', '555-7890'),
( 'South Branch', 34567, '654 South St', '555-3456'),
( 'Central Branch', 89012, '321 Central St', '555-8901'),
( 'Downtown Branch', 45678, '876 Downtown St', '555-4567'),
( 'Suburban Branch', 90123, '543 Suburban St', '555-9012'),
( 'Rural Branch', 56789, '210 Rural St', '555-5678'),
( 'Urban Branch', 12345, '987 Urban St', '555-1234'),
( 'Tech Park Branch', 67890, '654 Tech Park St', '555-6789'),
( 'Financial District Branch', 23456, '321 Financial St', '555-2345'),
( 'Shopping Mall Branch', 78901, '876 Mall St', '555-7890'),
( 'Industrial Area Branch', 34567, '543 Industrial St', '555-3456'),
( 'Residential Area Branch', 89012, '210 Residential St', '555-8901'),
( 'Medical Center Branch', 45678, '987 Medical St', '555-4567'),
( 'Educational Zone Branch', 90123, '654 Education St', '555-9012'),
( 'Sports Complex Branch', 56789, '321 Sports St', '555-5678'),
( 'Cultural Center Branch', 12345, '876 Culture St', '555-1234'),
( 'Green Park Branch', 67890, '543 Green St', '555-6789'),
( 'Tech Hub Branch', 34567, '111 Tech Hub St', '555-1111'),
( 'Innovation Park Branch', 89012, '222 Innovation Park St', '555-2222'),
( 'Financial Hub Branch', 45678, '333 Financial Hub St', '555-3333'),
( 'Business District Branch', 90123, '444 Business District St', '555-4444'),
( 'Shopping Center Branch', 56789, '555 Shopping Center St', '555-5555'),
( 'Science Park Branch', 12345, '666 Science Park St', '555-6666'),
( 'Technology Square Branch', 67890, '777 Technology Square St', '555-7777'),
( 'Entertainment Zone Branch', 23456, '888 Entertainment Zone St', '555-8888'),
( 'Healthcare Hub Branch', 78901, '999 Healthcare Hub St', '555-9999'),
( 'Art District Branch', 34567, '101 Art District St', '555-1010');


INSERT INTO employees ("employee_id", "branch_id", "position")
VALUES
(2,1,'Manager'),
(4,2,'Sales Associate'),
(6,3,'Customer Service Representative'),
(8,4,'Financial Analyst'),
(10,5,'IT Specialist'),
(12,6,'Human Resources Manager'),
(14,7,'Operations Supervisor'),
(16,8,'Marketing Coordinator'),
(18,9,'Branch Manager'),
(20,10,'Accountant'),
(22,11,'Business Development Manager'),
(24,12,'Software Developer'),
(26,13,'Administrative Assistant'),
(28,14,'Data Analyst'),
(30,15,'Project Manager'),
(32,16,'Network Administrator'),
(33,17,'Recruitment Specialist'),
(35,18,'Financial Planner'),
(37,19,'Technical Support Specialist'),
(39,20,'Sales Manager'),
(41,21,'Business Analyst'),
(43,22,'Software Engineer'),
(45,23,'Marketing Specialist'),
(47,24,'Financial Planner'),
(49,25,'Database Administrator'),
(51,26,'Logistics Coordinator'),
(53,27,'Project Manager'),
(55,28,'Network Administrator'),
(57,29,'Recruitment Specialist'),
(59,30,'IT Specialist'),
(61,1,'Human Resources Manager'),
(63,2,'Operations Supervisor'),
(65,3,'Marketing Coordinator'),
(67,4,'Branch Manager'),
(69,5,'Accountant'),
(71,6,'Business Development Manager'),
(73,7,'Administrative Assistant'),
(75,8,'Data Analyst'),
(77,9,'Technical Support Specialist'),
(79,10,'Sales Manager'),
(82,11,'HR Specialist'),
(84,12,'Project Manager'),
(86,13,'Network Administrator'),
(88,14,'Recruitment Specialist'),
(90,15,'IT Specialist'),
(92,16,'Human Resources Manager'),
(94,17,'Operations Supervisor'),
(96,18,'Marketing Coordinator'),
(98,19,'Branch Manager'),
(100,20,'Branch Manager');



INSERT INTO customers ("customer_id", "customer_type")
VALUES
(1, 'Individual'),
(3, 'Business'),
(5, 'Individual'),
(7, 'Business'),
(9, 'Individual'),
(11, 'Business'),
(13, 'Individual'),
(15, 'Business'),
(17, 'Individual'),
(19, 'Business'),
(21, 'Individual'),
(23, 'Business'),
(25, 'Individual'),
(27, 'Business'),
(29, 'Individual'),
(31, 'Business'),
(34, 'Individual'),
(36, 'Business'),
(38, 'Individual'),
(40, 'Business'),
(42, 'Individual'),
(44, 'Business'),
(46, 'Individual'),
(48, 'Business'),
(50, 'Individual'),
(52, 'Business'),
(54, 'Individual'),
(56, 'Business'),
(58, 'Individual'),
(60, 'Business'),
(62, 'Individual'),
(64, 'Business'),
(66, 'Individual'),
(68, 'Business'),
(70, 'Individual'),
(72, 'Business'),
(74, 'Individual'),
(76, 'Business'),
(78, 'Individual'),
(80, 'Business'),
(81, 'Individual'),
(83, 'Business'),
(85, 'Individual'),
(87, 'Business'),
(89, 'Individual'),
(91, 'Business'),
(93, 'Individual'),
(95, 'Business'),
(97, 'Individual'),
(99, 'Business');


INSERT INTO transactions ("employee_id", "transaction_type", "amount", "date")
VALUES
    (2, 'Deposit', 1000.00, '2023-01-01 12:00:00'),
    (4, 'Withdrawal', 500.50, '2023-02-15 14:30:00'),
    (6, 'Transfer', 200.25, '2023-12-05 09:45:00'),
    (8, 'Deposit', 750.75, '2023-03-20 18:20:00'),
    (10, 'Withdrawal', 300.00, '2023-11-10 08:15:00'),
    (12, 'Transfer', 150.50, '2023-05-25 16:30:00'),
    (14, 'Deposit', 1200.00, '2023-07-12 10:45:00'),
    (16, 'Withdrawal', 450.25, '2023-08-18 14:30:00'),
    (18, 'Deposit', 800.50, '2023-04-05 09:00:00'),
    (20, 'Transfer', 600.00, '2023-06-30 11:30:00'),
    (22, 'Deposit', 950.25, '2023-09-15 13:45:00'),
    (24, 'Withdrawal', 200.75, '2023-10-22 17:00:00'),
    (26, 'Transfer', 300.25, '2023-11-05 14:00:00'),
    (28, 'Deposit', 550.50, '2023-12-20 16:30:00'),
    (30, 'Withdrawal', 150.75, '2023-02-01 09:15:00'),
    (32, 'Transfer', 700.00, '2023-03-15 11:30:00'),
    (33, 'Deposit', 250.25, '2023-04-10 14:45:00'),
    (35, 'Withdrawal', 400.50, '2023-05-25 17:00:00'),
    (37, 'Deposit', 800.75, '2023-06-30 10:30:00'),
    (39, 'Transfer', 1000.00, '2023-08-15 13:45:00'),
    (41, 'Deposit', 300.50, '2023-09-20 16:00:00'),
    (43, 'Deposit', 1000.00, '2023-01-01 12:00:00'),
    (45, 'Withdrawal', 500.50, '2023-02-15 14:30:00'),
    (47, 'Transfer', 200.25, '2023-12-05 09:45:00'),
    (49, 'Deposit', 750.75, '2023-03-20 18:20:00'),
    (51, 'Withdrawal', 300.00, '2023-11-10 08:15:00'),
    (53, 'Transfer', 150.50, '2023-05-25 16:30:00'),
    (55, 'Deposit', 1200.00, '2023-07-12 10:45:00'),
    (57, 'Withdrawal', 450.25, '2023-08-18 14:30:00'),
    (59, 'Deposit', 800.50, '2023-04-05 09:00:00'),
    (61, 'Transfer', 600.00, '2023-06-30 11:30:00'),
    (63, 'Deposit', 950.25, '2023-09-15 13:45:00'),
    (65, 'Withdrawal', 200.75, '2023-10-22 17:00:00'),
    (67, 'Transfer', 300.25, '2023-11-05 14:00:00'),
    (69, 'Deposit', 550.50, '2023-12-20 16:30:00'),
    (71, 'Withdrawal', 150.75, '2023-02-01 09:15:00'),
    (73, 'Transfer', 700.00, '2023-03-15 11:30:00'),
    (75, 'Deposit', 250.25, '2023-04-10 14:45:00'),
    (77, 'Withdrawal', 400.50, '2023-05-25 17:00:00'),
    (79, 'Deposit', 800.75, '2023-06-30 10:30:00'),
    (82, 'Transfer', 1000.00, '2023-08-15 13:45:00'),
    (84, 'Deposit', 300.50, '2023-09-20 16:00:00'),
    (86, 'Withdrawal', 650.25, '2023-10-05 19:15:00'),
    (88, 'Deposit', 200.50, '2023-11-25 17:45:00'),
    (90, 'Transfer', 450.75, '2023-01-05 09:00:00'),
    (92, 'Transfer', 850.00, '2023-02-20 11:15:00'),
    (94, 'Withdrawal', 300.25, '2023-03-15 14:30:00'),
    (96, 'Deposit', 700.50, '2023-04-30 16:45:00'),
    (98, 'Withdrawal', 150.75, '2023-06-10 09:00:00'),
    (100, 'Deposit', 500.00, '2023-07-25 11:15:00');


INSERT INTO accounts ("customer_id", "transaction_id", "account_number", "account_type", "current_balance", "branch_id", "account_status")
VALUES
    (1, 1, 'ACCT1001', 'Savings', 1500.25, 1, 'active'),
    (3, 2, 'ACCT1002', 'Checking', 500.50, 2, 'active'),
    (5, 3, 'ACCT1003', 'Savings', 2000.75, 3, 'active'),
    (7, 4, 'ACCT1004', 'Checking', 100.00, 1, 'active'),
    (9, 5, 'ACCT1005', 'Savings', 3500.25, 2, 'active'),
    (11, 6, 'ACCT1006', 'Checking', 800.50, 3, 'active'),
    (13, 7, 'ACCT1007', 'Savings', 6000.75, 1, 'active'),
    (15, 8, 'ACCT1008', 'Checking', 1200.25, 2, 'active'),
    (17, 9, 'ACCT1009', 'Savings', 250.50, 3, 'active'),
    (19, 10, 'ACCT1010', 'Checking', 3000.75, 1, 'active'),
    (21, 11, 'ACCT1011', 'Savings', 450.25, 2, 'active'),
    (23, 12, 'ACCT1012', 'Checking', 700.50, 3, 'active'),
    (25, 13, 'ACCT1013', 'Savings', 800.00, 1, 'active'),
    (27, 14, 'ACCT1014', 'Checking', 1600.25, 2, 'active'),
    (29, 15, 'ACCT1015', 'Savings', 1000.50, 3, 'active'),
    (31, 16, 'ACCT1016', 'Checking', 2000.75, 1, 'active'),
    (34, 17, 'ACCT1017', 'Savings', 300.25, 2, 'active'),
    (36, 18, 'ACCT1018', 'Checking', 4500.50, 3, 'active'),
    (38, 19, 'ACCT1019', 'Savings', 700.75, 1, 'active'),
    (40, 20, 'ACCT1020', 'Checking', 850.00, 2, 'active'),
    (42, 21, 'ACCT1021', 'Savings', 1200.25, 3, 'active'),
    (44, 22, 'ACCT1022', 'Checking', 1500.50, 1, 'active'),
    (46, 23, 'ACCT1023', 'Savings', 1800.75, 2, 'active'),
    (48, 24, 'ACCT1024', 'Checking', 200.00, 3, 'active'),
    (50, 25, 'ACCT1025', 'Savings', 3000.25, 1, 'active'),
    (52, 26, 'ACCT1026', 'Checking', 500.50, 2, 'active'),
    (54, 27, 'ACCT1027', 'Savings', 700.75, 3, 'active'),
    (56, 28, 'ACCT1028', 'Checking', 900.00, 1, 'active'),
    (58, 29, 'ACCT1029', 'Savings', 1200.25, 2, 'active'),
    (60, 30, 'ACCT1030', 'Checking', 1500.50, 3, 'active'),
    (62, 31, 'ACCT1031', 'Savings', 1800.75, 1, 'active'),
    (64, 32, 'ACCT1032', 'Checking', 2000.00, 2, 'active'),
    (66, 33, 'ACCT1033', 'Savings', 2200.25, 3, 'active'),
    (68, 34, 'ACCT1034', 'Checking', 2500.50, 1, 'active'),
    (70, 35, 'ACCT1035', 'Savings', 2800.75, 2, 'active'),
    (72, 36, 'ACCT1036', 'Checking', 3000.00, 3, 'active'),
    (74, 37, 'ACCT1037', 'Savings', 3200.25, 1, 'active'),
    (76, 38, 'ACCT1038', 'Checking', 3500.50, 2, 'active'),
    (78, 39, 'ACCT1039', 'Savings', 3700.75, 3, 'active'),
    (80, 40, 'ACCT1040', 'Checking', 4000.00, 1, 'active'),
    (81, 41, 'ACCT1041', 'Savings', 4200.25, 2, 'active'),
    (83, 42, 'ACCT1042', 'Checking', 4500.50, 3, 'active'),
    (85, 43, 'ACCT1043', 'Savings', 4800.75, 1, 'active'),
    (87, 44, 'ACCT1044', 'Checking', 5000.00, 2, 'active'),
    (89, 45, 'ACCT1045', 'Savings', 5200.25, 3, 'active'),
    (91, 46, 'ACCT1046', 'Checking', 5500.50, 1, 'active'),
    (93, 47, 'ACCT1047', 'Savings', 5800.75, 2, 'active'),
    (95, 48, 'ACCT1048', 'Checking', 6000.00, 3, 'active'),
    (97, 49, 'ACCT1049', 'Savings', 6200.25, 1, 'active'),
    (99, 50, 'ACCT1050', 'Checking', 6500.50, 2, 'active');


CREATE VIEW account_tracing AS
SELECT
    A.account_id, A.customer_id, A.transaction_id,  T.employee_id, T.transaction_type, A.account_type
FROM
    accounts AS A
JOIN
    transactions AS T ON A.transaction_id = T.transaction_id;


CREATE VIEW which_branch AS
SELECT
    B.id AS "Branch_id", P.id AS "Customer_id",
    B.branch_name,B.branch_code,P.first_name,
    P.last_name,C.customer_type
FROM
    peoples AS P
JOIN
    customers AS C ON C.customer_id = P.id
JOIN
    accounts AS A ON A.account_id = C.customer_id
JOIN
    branchs AS B ON A.branch_id = B.id;

CREATE INDEX peoples_names ON peoples("id","first_name", "last_name");
