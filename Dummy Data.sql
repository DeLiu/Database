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
	values(01, 100.00, 