SELECT * FROM bank.accounts;
alter table accounts add column c_id int;
alter table accounts add constraint fk foreign key(c_id) references customer(customer_id);
