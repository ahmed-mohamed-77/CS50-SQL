-- In this SQL file, write (and comment!) the schema of your database,
-- including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc.
-- statements that compose it

DROP TABLE IF EXISTS peoples;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS branchs;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS loans;
DROP TABLE IF EXISTS loan_payments;


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


-- Inserting data into employees table with positions
INSERT INTO employees ("position")
VALUES
('Manager'),
('Sales Associate'),
('Customer Service Representative'),
('Financial Analyst'),
('IT Specialist'),
('Human Resources Manager'),
('Operations Supervisor'),
('Marketing Coordinator'),
('Branch Manager'),
('Accountant'),
('Business Development Manager'),
('Software Developer'),
('Administrative Assistant'),
('Data Analyst'),
('Project Manager'),
('Network Administrator'),
('Recruitment Specialist'),
('Financial Planner'),
('Technical Support Specialist'),
('Sales Manager'),
('Business Analyst'),
('Software Engineer'),
('Marketing Specialist'),
('Financial Planner'),
('Database Administrator'),
('Logistics Coordinator'),
('Project Manager'),
('Network Administrator'),
('Recruitment Specialist'),
('IT Specialist'),
('Human Resources Manager'),
('Operations Supervisor'),
('Marketing Coordinator'),
('Branch Manager'),
('Accountant'),
('Business Development Manager'),
('Administrative Assistant'),
('Data Analyst'),
('Technical Support Specialist'),
('Sales Manager'),
('HR Specialist'),
('Project Manager'),
('Network Administrator'),
('Recruitment Specialist'),
('IT Specialist'),
('Human Resources Manager'),
('Operations Supervisor'),
('Marketing Coordinator'),
('Branch Manager');

