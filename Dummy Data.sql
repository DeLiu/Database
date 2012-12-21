insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (01, 1410921713, 'Niko', 'Enderman', 'Derpvej', 69, 6600, 'Æblerød');

insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (02, 2112121502, 'Pia', 'Jacobsen', 'Jernbanegade', 13, 7160, 'Tørring');

insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (03, 2310813497, 'John', 'Smith', 'Tardisvej', 60, 6600, 'Æblerød');

insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (04, 2810613222, 'William', 'Mortensen', 'Hellovej', 71, 7000, 'Fredericia');

insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (05, 2201410889, 'Jens', 'Hansen', 'Worldvej', 22, 6000, 'Kolding');

insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (06, 2010280055, 'Sofie', 'Uglemose', 'Herpvej', 38, 7100, 'Vejle');


insert into Person_Phone (person_id, phone)
	values (01, 20811393);

insert into Person_Phone (person_id, phone)
	values (02, 31922404);

insert into Person_Phone (person_id, phone)
	values (03, 36257794);

insert into Person_Phone (person_id, phone)
	values (04, 44568534);

insert into Person_Phone (person_id, phone)
	values (05, 34786734);

insert into Person_Phone (person_id, phone)
	values (06, 76887942);


insert into Person_Email (person_id, email)
	values (01, 'enderman@derpymail.com');

insert into Person_Email (person_id, email)
	values (02, 'nesbocaj@ymail.com');

insert into Person_Email (person_id, email)
	values (03, 'doctor@tardis.com');

insert into Person_Email (person_id, email)
	values (04, 'sexyb1tch69@aol.com');

insert into Person_Email (person_id, email)
	values (05, 'fuuuuu@mail.dk');

insert into Person_Email (person_id, email)
	values (06, 'sofie43556@gmail.com');


insert into Employee_Position (id, name)
	values (01, 'office assistant');

insert into Employee_Position (id, name)
	values (02, 'tutor');

insert into Employee_Position (id, name)
	values (03, 'principal');


insert into Salaryrate (id, hourly_wage, required_class, required_hours, required_experience)
	values(01, 100.00, 0, 40, 2);

insert into Salaryrate (id, hourly_wage, required_class, required_hours, required_experience)
	values(02, 107.25, 5, 45, 4);

insert into Salaryrate (id, hourly_wage, required_class, required_hours, required_experience)
	values(03, 150.00, 0, 40, 3);


insert into Employee (person_id, initials, position_id, salaryrate_id, working_hours, accessword)
	values (01, 'NE', 01, 01, 42, '46ecbdea62dfd3e928936f68f670e18df2b4f221'); -- salt: NE, Password: Minecraft, pepper: Derp

insert into Employee (person_id, initials, position_id, salaryrate_id, working_hours, accessword)
	values (02, 'PJ', 02, 02, 40, 'e5589c427f77c78cbcf9423f852ec3191945d41f'); -- salt: PJ, Password: PaJamas, pepper: Derp

insert into Employee (person_id, initials, position_id, salaryrate_id, working_hours, accessword)
	values (03, 'JS', 03, 03, 45, 'd255d6e14e349b46a8d5b0916a5bd4923401af60'); -- salt: JS, Password: RoseTyler, pepper: Derp


insert into Tutor (employee_id, number_of_classes, experience)
	values(02, 6, 8);


insert into Tutor_Qualification (tutor_id, qualification)
	values(02, 'matematik');

insert into Tutor_Qualification (tutor_id, qualification)
	values(02, 'dansk 2');

insert into Tutor_Qualification (tutor_id, qualification)
	values(02, 'geografi');


insert into Course_Type (id, name)
	values (01, 'dansk 1');

insert into Course_Type (id, name)
	values (02, 'matematik');

insert into Course_Type (id, name)
	values (03, 'spansk 3');


insert into Course (id, course_type_id, name, price, difficulty)
	values (01, 02, 'Grundlæggende Matematik', 250.00, 1);

insert into Course (id, course_type_id, name, price, difficulty)
	values (02, 03, 'Spansk 3', 230.50, 3);

insert into Course (id, course_type_id, name, price, difficulty)
	values (03, 01, 'Dansk 1', 200.00, 1);


insert into Course_Requirement (course_id, required_course)
	values(02, 49);


insert into Course_Tutor (tutor_id, course_id)
	values(02, 01);

insert into Course_Tutor (tutor_id, course_id)
	values(02, 03);

select * from Course_Tutor;

insert into Participant (person_id, work_condition)
	values (04, 'pentionist');

insert into Participant (person_id, work_condition)
	values (05, 'arbejdsløs');

insert into Participant (person_id, work_condition)
	values (06, 'i arbejde');


insert into table Participant_Passed_Course (participant_id, passed_course)
	values (04, 01);
	
insert into table Participant_Passed_Course (participant_id, passed_course)
	values (05, 02);

insert into table Participant_Passed_Course (participant_id, passed_course)
	values (06, 03);


insert into Class_Room (id, name, number_of_seats)
	values (01, 'b132', 50);
	
insert into Class_Room (id, name, number_of_seats)
	values (02, 'a128', 50);
	
insert into Class_Room (id, name, number_of_seats)
	values (03, '203', 50);


insert into Class (id, name, class_room_id, person_id, course_id, start_date, end_date)
	values (01, 'MAT', 03, 02, 01, 2012-09-21, 2012-12-21);
	
	insert into Class (id, name, class_room_id, person_id, course_id, start_date, end_date)
	values (02, '3S', 02, 02, 02, 2012-10-14, 2013-01-26);
	
	insert into Class (id, name, class_room_id, person_id, course_id, start_date, end_date)
	values (03, '1D', 01, 02, 03, 2012-07-21, 2012-10-01);
	
	
	
	
	
	
	
	
	
	
	
	