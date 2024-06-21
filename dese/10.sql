 write a SQL query to find the 10 public school districts with the highest per-pupil expenditures.
 Your query should return the names of the districts and the per-pupil expenditure for each.


SELECT D.name, 
FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
