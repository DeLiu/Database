create table Person(
id int primary key not null,
index (id),
cpr int unique key not null,
firstname varchar (100),
lastname varchar (50),
street varchar (100),
postal int,
city varchar (20));

create table Person_Phone(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
phone int);

create table Person_Email(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
email varchar (100));

create table EmployeePositions(
id int primary key not null,
index (id),
pname varchar (30));

create table Salaryrate(
id int primary key not null,
index (id),
hourly_wage double,
req_class int,
req_hours int,
req_experience int);

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
accessword varchar (256));

create table Tutor(
employee_id int,
index (employee_id),
foreign key (employee_id) references Employee(person_id)
on delete cascade,
numberclass int,
experience int);

create table Tutor_Qualification(
tutor_id int,
index (tutor_id),
foreign key (tutor_id) references Tutor(employee_id)
on delete cascade,
qualification varchar(50));

create table CourseType(
id int primary key not null,
index (id),
ctname varchar (50) unique key not null);

create table Course(
id int primary key not null,
index (id),
coursetype_id int,
foreign key (coursetype_id) references CourseType(id),
coname varchar(50),
price double,
difficulty int);

create table Course_Requirement(
course_id int,
index (course_id),
foreign key (course_id) references Course(id) 
on delete cascade,
req_course int);

create table CourseTutor(
tutor_id int not null,
foreign key (tutor_id) references Tutor(employee_id)
on delete cascade,
course_id int not null,
foreign key (course_id) references Course(id)
on delete cascade);

create table Participant(
person_id int,
index (person_id),
foreign key (person_id) references Person(id)
on delete cascade,
work_condition varchar(50));

create table Participant_PassedCourse(
participant_id int not null,
foreign key (participant_id) references Participant(person_id)
on delete cascade,
pass_course int);

create table Class_Room(
id int primary key not null,
index (id),
crname varchar(30) unique key not null,
seat int);

create table Class(
id int primary key not null,
index (id),
cname varchar(10) unique key not null,
class_room_id int,
foreign key (class_room_id) references Class_Room(id),
person_id int,
foreign key (person_id) references Tutor(employee_id),
course_id int,
foreign key (course_id) references Course(id),
startdate date,
enddate date);

create table Participant_Class(
class_id int not null,
foreign key (class_id) references Class(id)
on delete cascade,
participant_id int not null,
foreign key (participant_id) references Participant(person_id)
on delete cascade,
primary key (class_id, participant_id),
graduated bool,
grade int);

create table Pending(
id int primary key not null,
index (id),
person_id int,
foreign key (person_id) references Person(id)
on delete cascade,
course_id int,
foreign key (course_id) references Course(id));

create table P_invoice(
id int primary key not null,
index (id),
participant_id int,
foreign key (participant_id) references Participant(person_id),
total double,
paid bool);

create table P_invoiceline(
p_invoice_id int not null,
foreign key (p_invoice_id) references P_invoice(id)
on delete cascade,
course_id int not null,
foreign key (course_id) references Course(id),
subtotal double);

create table C_invoice(
id int primary key not null,
index (id),
class_id int,
foreign key (class_id) references Class(id),
total double,
paid bool);

create table C_invoiceline(
c_invoice_id int not null,
foreign key (c_invoice_id) references C_invoice(id)
on delete cascade,
participant_id int not null,
foreign key (participant_id) references Participant(person_id),
subtotal double);