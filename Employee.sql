create table Employee(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
initials varchar(5) unique key not null,
positions_id int,
foreign key (positions_id) references EmployeePositions(id),
salaryrate_id int,
foreign key (salaryrate_id) references Salaryrate(id),
working_hours int,
accessword varchar (256))
