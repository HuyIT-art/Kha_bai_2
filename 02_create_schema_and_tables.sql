-- Tạo schema
create schema university;

-- Bảng Students
create table university.students (
    student_id int generated always as identity primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    birth_date date,
    email text not null unique
);

-- Bảng Courses
create table university.courses (
    course_id int generated always as identity primary key,
    course_name varchar(100) not null,
    credits int
);

-- Bảng Enrollments
create table university.enrollments (
    enrollment_id int generated always as identity primary key,
    student_id int not null,
    course_id int not null,
    enroll_date date
);
