create table Course_Requirement(
course_id int,
index (course_id),
foreign key (course_id) references Course(id) 
on delete cascade,
req_course int)