alter table university.enrollments
add constraint fk_enrollments_students
foreign key(student_id) references
university.students(student_id);

alter table university.enrollments
add constraint fk_courses_students
foreign key(course_id) references
university.courses(course_id);

--Xem database
select datname
from pg_database;
--Xem danh sach schema
select schema_name from information_schema.schemata;
--Xem cau truc bang Students, Courses, Enrollments
select *from information_schema.columns
where table_name = 'students';

select *from information_schema.columns
where table_name = 'courses';

select *from information_schema.columns
where table_name = 'enrollments';


