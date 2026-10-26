SELECT * FROM bank.branches;

-- Que Display branches whose Branch_id is between 2 and 4.
select * from branches 
where branch_id between 2 and 4;

-- Que Display only the branch name and branch phone number of all branches.
select Branch_name , Branch_phone
from branches;

-- Question
select * from branches
where Branch_address="Shibaji nagar,Pune";

-- Que display branches in branchId 1 and 4
select * from branches
where branch_id in (1,2,3,4);


