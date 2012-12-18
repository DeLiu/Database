create table Person_Email(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
email varchar (100))