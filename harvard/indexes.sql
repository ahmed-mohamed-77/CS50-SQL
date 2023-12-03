CREATE INDEX student_inrollment ON enrollments("student_id", "course_id");

EXPLAIN QUREY PLAN
SELECT "courses"."title", "courses"."semester"
FROM "enrollments"
JOIN "courses" ON "enrollments"."course_id" = "courses"."id"
JOIN "students" ON "enrollments"."student_id" = "students"."id"
WHERE "students"."id" = 3;

drop INDEX course_name ON courses(id);
drop INDEX student_name ON students(id);

