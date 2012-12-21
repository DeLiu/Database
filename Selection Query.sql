-- Select all employees
select id, cpr, firstname, lastname, street, house_number, postal, city from Person p
join Employee e on e.person_id = p.id

-- Select all employees with relevant data
select * from Person p
join Employee e on e.person_id = p.id
join Person_Phone pp on pp.person_id = p.id
join Person_Email pe on pe.person_id = p.id
join Employee_Position ep on ep.employee_id = p.id

-- Select a specific employee with relevant data
select * from Person p
join Employee e on e.person_id = p.id
join Person_Phone pp on pp.person_id = p.id
join Person_Email pe on pe.person_id = p.id
join Employee_Position ep on ep.employee_id = p.id
where p.id = 1 -- Any available id

-- Select all classes with relevant data
select id, c.name, cr.name, p.firstname, p.lastname, co.name, startdate, enddate from Class c
join Class_Room cr on c.class_room_id = cr.id
join Tutor t on c.tutor_id = t.employee_id
join Employee e on t.tutor_id = e.person_id
join Person p on e.person_id = p.id
join Course co on c.course_id = co.id

-- Select a specific class with relevant data
select id, c.name, cr.name, p.firstname, p.lastname, startdate, enddate from Class c
join Class_Room cr on c.class_room_id = cr.id
join Tutor t on c.tutor_id = t.employee_id
join Employee e on t.tutor_id = e.person_id
join Person p on e.person_id = p.id
where c.id = 38 -- Any available id