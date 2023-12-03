CREATE INDEX student_inrollment ON enrollments("student_id", "course_id");

CREATE INDEX course_name ON courses("id", "department", "number", "semester");
CREATE INDEX student_name ON students("id", "name");
CREATE INDEX course_inrollment ON enrollments("course_id");


