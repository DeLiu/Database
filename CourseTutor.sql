create table CourseTutor(
tutor_id int not null,
foreign key (tutor_id) references Tutor(employee_id)
on delete cascade,
course_id int not null,
foreign key (course_id) references Course(id)
on delete cascade)