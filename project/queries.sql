-- In this SQL file,
-- write (and comment!) the typical SQL queries users will run
-- on your database

ALTER TABLE branchs
ADD COLUMN "people_id" INTEGER,
ADD CONSTRAINT fk_people_id FOREIGN KEY ("people_id") REFERENCES peoples("id");
