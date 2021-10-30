

create table lessons (
    id integer primary key,
    name character varying(255) not null,
    description text,
    front_end boolean default false,
    back_end boolean default false,
    price numeric(8,2) default 0.0,
    created_at timestamp without time zone not null,
    updated_at timestamp without time zone not null
);

INSERT INTO lessons (id, name, description, price, created_at, updated_at, back_end) 
VALUES (3, 'Python Lite', 'Python Lite is lighter version of Python.', 50, current_timestamp, current_timestamp, true);




CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    age numeric,
    location character varying(255) NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES 
(1, 'student1', 'middle1', 'last1', 18, 'manila'),
(2, 'student2', 'middle2', 'last2', 25, 'manila'),
(3, 'student3', 'middle3', 'last3', 48, 'makati'),
(4, 'student4', 'middle4', 'last4', 34, 'laguna'),
(5, 'student5', 'middle5', 'last5', 23, 'cebu'),
(6, 'student6', 'middle6', 'last6', 38, 'davao');


select count(id) from students;
select * from students where location = "manila";
select avg(age) from students;
select * from students order by id desc;




