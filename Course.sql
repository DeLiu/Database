create table Course(
id int primary key not null,
index (id),
coursetype_id int,
foreign key (coursetype_id) references CourseType(id),
coname varchar(50),
price double,
difficulty int)