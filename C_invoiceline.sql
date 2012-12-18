create table C_invoiceline(
c_invoice_id int not null,
foreign key (c_invoice_id) references C_invoice(id)
on delete cascade,
participant_id int not null,
foreign key (participant_id) references Participant(person_id),
subtotal double)