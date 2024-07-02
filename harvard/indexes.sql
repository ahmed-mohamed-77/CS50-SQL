EXPLAIN QUERY PLAN
SELECT * FROM "enrollments" AS E
JOIN courses AS C ON E.course_id = C.id
WHERE "student_id" = (
    SELECT "id" FROM "students" WHERE "id" = 2
) ;
