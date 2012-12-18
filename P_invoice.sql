create table P_invoice(
id int primary key not null,
index (id),
participant_id int,
foreign key (participant_id) references Participant(person_id),
total double,
paid bool)