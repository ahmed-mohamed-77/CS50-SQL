-- In this SQL file,
-- write (and comment!) the typical SQL queries users will run
-- on your database

-- Add the new column
ALTER TABLE branchs
ADD COLUMN "people_id" INTEGER;

-- Add the foreign key constraint
ALTER TABLE branchs
ADD CONSTRAINT fk_people_id FOREIGN KEY ("people_id") REFERENCES peoples("id");
-- CANNOT ADD HAVING TO RE INSERT DATA TO THAT COLUMN
ALTER TABLE branchs
DROP COLUMN "people_id" INTEGER;

-- testing my views
SELECT * FROM account_tracing;
SELECT * FROM which_branch;

-- join my view

SELECT B.id AS "Branch_id", P.id AS "Customer_id",
    B.branch_name,B.branch_code,P.first_name,
    P.last_name,C.customer_type,E.employee_id FROM  which_branch
JOIN
    employees AS E ON E.branch_id = B.id;
