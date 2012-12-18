create table P_invoiceline(
p_invoice_id int not null,
foreign key (p_invoice_id) references P_invoice(id)
on delete cascade,
course_id int not null,
foreign key (course_id) references Course(id),
subtotal double)