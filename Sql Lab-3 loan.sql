SELECT * FROM bank.loan;
alter table loan add column customer_id int;
alter table loan add constraint fkk foreign key (customer_id) references customer(customer_id); 