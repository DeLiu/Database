create table Class(
id int primary key not null,
index (id),
cname varchar(10) unique key not null,
class_room_id int,
foreign key (class_room_id) references Class_Room(id),
person_id int,
foreign key (person_id) references Person(id),
course_id int,
foreign key (course_id) references Course(id),
startdate date,
enddate date)