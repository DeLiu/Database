create table Person_Phone(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
phone int)