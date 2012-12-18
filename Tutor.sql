create table Tutor(
employee_id int,
index (employee_id),
foreign key (employee_id) references Employee(person_id)
on delete cascade,
numberclass int,
experience int)