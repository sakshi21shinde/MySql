SELECT * FROM bank.accounts;
alter table accounts add constraint pk primary key (Account_id);
alter table accounts add column branch_id int;
alter table accounts add constraint fkkkkk foreign key (branch_id) references branches(Branch_id);