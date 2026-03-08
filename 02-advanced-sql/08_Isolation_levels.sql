-- 1. Isolation Levels -> Isolation levels control how multiple transactions interact with each other.
-- When many users run transactions at the same time, problems can happen like:
-- . Dirty Read
-- . Non-Repeatable Read
-- . Phantom Read
-- Isolation levels control how much one transaction can see another transaction's data.

-- How to set Isolation level

BEGIN;

set transaction isolation level serializable;

select * from sales.orders;

commit;