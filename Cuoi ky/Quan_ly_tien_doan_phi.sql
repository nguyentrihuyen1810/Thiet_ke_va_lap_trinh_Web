create database funds;
use funds;

create table if not exists `account` (
	account_id bigint primary key auto_increment,
    username varchar(255) unique not null,
    `password` varchar(255)
);

create table if not exists `role` (
	role_id bigint primary key auto_increment,
    role_name varchar(255)
);

create table if not exists account_role (
	account_role_id bigint primary key auto_increment,				
	account_id bigint,				
	role_id bigint not null,				
	foreign key (account_id) references `account`(account_id),				
	foreign key (role_id) references `role`(role_id)	 			
);

create table if not exists semester (
	semester_id bigint primary key auto_increment,
    semester_name varchar(20)
);

create table if not exists course (
	course_id bigint primary key auto_increment,
    course_name varchar(255)
);

create table if not exists student (
	student_id bigint primary key auto_increment,
    student_code varchar(10),
    student_name longtext,
    student_class longtext,
    student_birthday date,
    student_status bit,
    student_semester_id bigint,
    student_course_id bigint,
    student_account_id bigint,
	foreign key (student_semester_id) references semester (semester_id),
	foreign key (student_course_id) references course (course_id),
    foreign key (student_account_id) references `account`(account_id)
);

-- coi lai
-- create table if not exists branch (
-- 	branch_id bigint primary key auto_increment,
--     branch_quantity int,
--     branch_quantity_yes int,
-- 	branch_price double,
--     branch_total double,
--     branch_course_id bigint,
--     branch_account_id bigint,
--     foreign key (branch_course_id) references course(course_id),
-- 	foreign key (branch_account_id) references `account`(account_id)
-- );

insert into `account` (username, `password`) values ('branch', '123123'),
													('19CNTT', '123123'),
													('20CNTT', '123123');
                                                    
insert into `role` (role_name) values ('ROLE_BRANCH'),
									  ('ROLE_CLASS');  
                                      
insert into account_role (account_id, role_id) values ('1', '1'),
													  ('2', '2'),
													  ('3', '2');
                                                      
insert into semester (semester_name) values ('Kỳ 1'),
										    ('Kỳ 2'),
										    ('Kỳ 3'),
										    ('Kỳ 4'),
										    ('Kỳ 5'),
										    ('Kỳ 6'),
										    ('Kỳ 7'),
										    ('Kỳ 8');
                                         
insert into course (course_name) values ('K19'),
										('K20');
                                        
insert into student (student_code, student_name, student_class, student_birthday, student_status, student_semester_id, student_course_id, student_account_id) 
values ('SV-001', 'Ngô Ðức Tuấn', '19CNTT', '2001-10-04', 1, 1, 1, 1),
	   ('SV-002', 'Bùi Việt Hùng', '19CNTT', '2001-05-18', 0, 1, 1, 2),
	   ('SV-003', 'Lương Minh Sơn', '19CNTT', '2001-12-05', 1, 1, 1, 2),
	   ('SV-004', 'Nguyễn Bích Như', '19CNTT', '2001-06-17', 0, 1, 1, 2),
	   ('SV-005', 'Trần Phương Linh', '19CNTT', '2001-09-26', 1, 1, 1, 2),
	   ('SV-006', 'Lê Duy An', '20CNTT', '2002-04-05', 0, '1', 2, 3),
	   ('SV-007', 'Phạm Thanh Thúy', '20CNTT', '2002-10-27', 1, 1, 2, 3),
	   ('SV-008', 'Hoàng Thiên An', '20CNTT', '2002-02-09', 0, 1, 2, 3),
	   ('SV-009', 'Phan Tấn Khang', '20CNTT', '2002-07-30', 1, 1, 2, 3),
       ('SV-010', 'Vũ Phương Nhi', '20CNTT', '2002-02-24', 0, '1', 2, 3);

-- coi lai       
-- insert into branch (branch_quantity, branch_quantity_yes, branch_price, branch_total, branch_account_id, branch_course_id)
-- values ('5', '3', '25000', '75000', '1', '1'),
-- 	   ('5', '2', '25000', '50000', '1', '2');
       
-- list student 19CNTT       
-- select * from student where student_class like '19CNTT';   

-- list student 20CNTT
-- select * from student where student_class like '20CNTT';

-- list all class
-- select branch_id, branch_quantity, branch_quantity_yes, branch_price, branch_total, course_name, student_class, student_name from branch 
-- right join course on course.course_id = branch.branch_course_id
-- right join student on student.student_course_id = course.course_id
-- group by student_class;

-- create student
-- insert into product(student_code, student_name, student_class, student_birthday, student_status, student_semester_id, student_course_id, student_account_id)
-- values (?, ?, ?, ?, ?, ?, ?, ?);

-- update student
-- update product set student_code = ?, student_name = ?, student_class = ?, student_birthday = ?, student_status = ?, student_semester_id = ?, student_course_id = ?, 
-- student_account_id = ? where student_id = ?;

-- delete student
-- delete from student where student_id = ?;