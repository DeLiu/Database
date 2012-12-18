create table Participant_Class(
class_id int not null,
foreign key (class_id) references Class(id)
on delete cascade,
participant_id int not null,
foreign key (participant_id) references Participant(person_id)
on delete cascade,
primary key (class_id, participant_id),
graduated bool,
grade int)