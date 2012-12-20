create table Person (
	id int primary key not null,
	index (id),
	cpr int (10) unique key not null,
	firstname varchar (100),
	lastname varchar (50),
	street varchar (100),
	house_number int (3),
	postal int (4),
	city varchar (20)
);

create table Person_Phone (
	person_id int,
	index (person_id),
	foreign key (person_id) references Person(id)
	on delete cascade,
	phone int
);

create table Person_Email (
	person_id int,
	index (person_id),
	foreign key (person_id) references Person(id)
	on delete cascade,
	email varchar (100)
);

create table Employee_Position (
	id int primary key not null,
	index (id),
	name varchar (30)
);

create table Salaryrate (
	id int primary key not null,
	index (id),
	hourly_wage double,
	required_class int,
	required_hours int,
	required_experience int
);

create table Employee (
	person_id int,
	index (person_id),
	foreign key (person_id) references Person(id)
	on delete cascade,
	initials varchar(5) unique key not null,
	position_id int,
	foreign key (position_id) references Employee_Position(id),
	salaryrate_id int,
	foreign key (salaryrate_id) references Salaryrate(id),
	working_hours int,
	accessword varchar (256)
);

create table Tutor (
	employee_id int,
	index (employee_id),
	foreign key (employee_id) references Employee(person_id)
	on delete cascade,
	number_of_classes int,
	experience int
);

create table Tutor_Qualification (
	tutor_id int,
	index (tutor_id),
	foreign key (tutor_id) references Tutor(employee_id)
	on delete cascade,
	qualification varchar(50)
);

create table Course_Type (
	id int primary key not null,
	index (id),
	name varchar (50) unique key not null
);

create table Course (
	id int primary key not null,
	index (id),
	course_type_id int,
	foreign key (course_type_id) references CourseType(id),
	name varchar(50),
	price double,
	difficulty int
);

create table Course_Requirement (
	course_id int,
	index (course_id),
	foreign key (course_id) references Course(id) 
	on delete cascade,
	required_course int
);

create table Course_Tutor (
	tutor_id int not null,
	foreign key (tutor_id) references Tutor(employee_id)
	on delete cascade,
	course_id int not null,
	foreign key (course_id) references Course(id)
	on delete cascade
);

create table Participant (
	person_id int,
	index (person_id),
	foreign key (person_id) references Person(id)
	on delete cascade,
	work_condition varchar(50)
);

create table Participant_Passed_Course (
	participant_id int not null,
	foreign key (participant_id) references Participant(person_id)
	on delete cascade,
	passed_course int
);

create table Class_Room (
	id int primary key not null,
	index (id),
	name varchar(30) unique key not null,
	number_of_seats int
);

create table Class (
	id int primary key not null,
	index (id),
	name varchar(10) unique key not null,
	class_room_id int,
	foreign key (class_room_id) references Class_Room(id),
	person_id int,
	foreign key (person_id) references Tutor(employee_id),
	course_id int,
	foreign key (course_id) references Course(id),
	start_date date,
	end_date date
);

create table Participant_Class (
	class_id int not null,
	foreign key (class_id) references Class(id)
	on delete cascade,
	participant_id int not null,
	foreign key (participant_id) references Participant(person_id)
	on delete cascade,
	primary key (class_id, participant_id),
	graduated bool,
	grade int
);

create table Pending (
	id int primary key not null,
	index (id),
	person_id int,
	foreign key (person_id) references Person(id)
	on delete cascade,
	course_id int,
	foreign key (course_id) references Course(id)
);

create table Participant_Invoice (
	id int primary key not null,
	index (id),
	participant_id int,
	foreign key (participant_id) references Participant(person_id),
	total double,
	paid bool
);

create table Participant_Invoiceline (
	participant_invoice_id int not null,
	foreign key (participant_invoice_id) references Participant_invoice(id)
	on delete cascade,
	course_id int not null,
	foreign key (course_id) references Course(id),
	subtotal double
);

create table Class_Invoice (
	id int primary key not null,
	index (id),
	class_id int,
	foreign key (class_id) references Class(id),
	total double,
	paid bool
);

create table Class_Invoiceline (
	class_invoice_id int not null,
	foreign key (class_invoice_id) references Class_invoice(id)
	on delete cascade,
	participant_id int not null,
	foreign key (participant_id) references Participant(person_id),
	subtotal double
);
