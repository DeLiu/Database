create table C_invoice(
id int primary key not null,
index (id),
class_id int,
foreign key (class_id) references Class(id),
total double,
paid bool)