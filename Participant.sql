create table Participant(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
work_condition varchar(50))