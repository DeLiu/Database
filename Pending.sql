create table Pending(
id int primary key not null,
index (id),
person_id int,
foreign key (person_id) references Person(id)
on delete cascade,
course_id int,
foreign key (course_id) references Course(id))