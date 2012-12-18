create table Participant_PassedCourse(
participant_id int not null,
foreign key (participant_id) references Participant(person_id)
on delete cascade,
pass_course int)