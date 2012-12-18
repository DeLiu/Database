create table Class_Room(
id int primary key not null,
index (id),
crname varchar(30) unique key not null,
seat int)