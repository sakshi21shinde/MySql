SELECT * FROM bank.transactions;
ALTER TABLE bank.transactions
DROP COLUMN acoount_id;

insert into transactions values(301,"2025-05-10",5000.00,"Deposite",201),(302,"2025-05-11",2500.00,"Withdraw",202),
(303,"2025-05-12",10000.00,"Deposite",203),(304,"2025-05-13",3000.00,"Withdraw",204),
(305,"2025-05-14",7000.00,"Deposite",205);

delete from transactions where Transaction_id=302;