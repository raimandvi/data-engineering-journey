
create table accounts (
 	account_id int primary key,
	balance int
	 
);

insert into accounts values(1, 5000),
						   (2, 3000);

-- 1. Transaction in SQL -> A Transaction is a group of SQL operations executed as a single unit of work.
-- Either all operations succeed or none of them happen.
-- If any operation failes, the database rolls back to the previous state.

-- Example -> Suppose I transfer 500 Rs. from account A to Account B

BEGIN;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 500
where account_id = 2;

commit;

-- 2. Transaction Control Commands (These commands control transactions.)

-- BEGIN/START TRANSACTION -->    Start transaction
-- COMMIT                  -->    Save changes permanently
-- ROLLBACK                -->    Undo changes
-- SAVEPOINT               -->    Create rollback point

Begin;

update accounts set balance = balance + 1000 where account_id = 1;

savepoint sp1;

update accounts set balance = balance + 1000 where account_id = 2;

rollback to sp1;

commit;

Rollback;

--3. ACID Properties - ACID ensures database reliability and consistency.

--4. Atomicity  = All or nothing
-- If any part of the transaction fails -> entire transaction fails.



--5. Consistency -> Consistency ensures that the database remains valis before and after transaction.
-- example - Account balance cannot be negative.
-- If a transaction violates rules -> it will fail.



--6. Isolation -> Isolation ensures that multiple transactions do not interfere with each other.
-- Example - Two people booking same seat at same time.
-- Without isolation -> both may get the seat
-- Database isolation ensures:  Only one transaction succeeds.



--7. Durability -> Once a trasaction is COMMITED, it will never be lost, even if:
		-- . System crashes
		-- . Power failure
		-- . Database restart





