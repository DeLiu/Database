create table Person(
id int primary key not null,
index (id),
cpr int unique key not null,
firstname varchar (100),
lastname varchar (50),
street varchar (100),
postal int,
city varchar (20))