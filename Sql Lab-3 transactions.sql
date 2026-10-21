SELECT * FROM bank.transactions;
alter table transactions add column acoount_id int;
alter table transactions add constraint fkkk foreign key (account_id) references accounts(Account_id);