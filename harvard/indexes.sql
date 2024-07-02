EXPLAIN QUERY PLAN
SELECT * FROM enrollments
WHERE student_id = (
    SELECT id FROM students WHERE id = 2
);
