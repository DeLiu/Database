insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (01, 1410921713, 'Niko', 'Enderman', 'Derpvej', 69, 6600, 'Æblerød');
insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (02, 2112121502, 'Pia', 'Jacobsen', 'Jernbanegade', 13, 7160, 'Tørring');
insert into Person (id, cpr, firstname, lastname, street, house_number, postal, city)
	values (03, 231163, 'John', 'Smith', 'Tardisvej', 11, 6600, 'Æblerød');

select * from Person;


insert into Person_Phone (person_id, phone)
	values (01, 20811393);
insert into Person_Phone (person_id, phone)
	values (02, 31922404);
insert into Person_Phone (person_id, phone)
	values (03, 36257794);

select * from Person_Phone;


insert into Person_Email (person_id, email)
	values (01, 'enderman@derpymail.com');

insert into Person_Email (person_id, email)
	values (02, 'nesbocaj@ymail.com');

insert into Person_Email (person_id, email)
	values (03, 'doctor@tardis.com');

select * from Person_Email;


insert into Employee_Position (id, name)
	values (01, 'office assistant');

insert into Employee_Position (id, name)
	values (02, 'tutor');

insert into Employee_Position (id, name)
	values (03, 'principal');

select * from Employee_Position;


insert into Salaryrate (id, hourly_wage, required_class, required_hours, required_experience)
	values(01, 100.00, 0, 40, 2);

insert into Salaryrate (id, hourly_wage, required_class, required_hours, required_experience)
	values(02, 107.25, 5, 45, 4);

insert into Salaryrate (id, hourly_wage, required_class, required_hours, required_experience)
	values(03, 150.00, 0, 40 , 3);

select * from Salaryrate;

insert into Employee (person_id, initials, position_id, salaryrate_id, working_hours, accessword)
	values (01, 'NE', 01, 01, 42, '46ecbdea62dfd3e928936f68f670e18df2b4f221'); -- salt: NE, Password: Minecraft, pepper: Derp

insert into Employee (person_id, initials, position_id, salaryrate_id, working_hours, accessword)
	values (02, 'PJ', 02, 02, 40, 'e5589c427f77c78cbcf9423f852ec3191945d41f'); -- salt: PJ, Password: PaJamas, pepper: Derp

insert into Employee (person_id, initials, position_id, salaryrate_id, working_hours, accessword)
	values (03, 'JS', 03, 03, 45, 'd255d6e14e349b46a8d5b0916a5bd4923401af60'); -- salt: JS, Password: RoseTyler, pepper: Derp

select * from Employee;