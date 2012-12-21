-- Select all employees
select * from Person p
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
where p.id = 01