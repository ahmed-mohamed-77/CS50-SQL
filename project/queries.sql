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

SELECT * FROM 
