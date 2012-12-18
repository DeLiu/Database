create table Tutor_Qualification(
tutor_id int,
index (tutor_id),
foreign key (tutor_id) references Tutor(employee_id)
on delete cascade,
qualification varchar(50))