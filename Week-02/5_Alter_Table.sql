use versity;
select *
from employee;

-- alter table query:
-- adding a new column:
alter table employee
add city varchar(20);

set sql_safe_updates = 0;
update employee
set city = 'ctg'
where EmployeeID % 2 = 0; -- even number "EmployeeID" city set 'ctg'
set sql_safe_updates = 1;

-- renaming column:
alter table employee
change FirstName first_name varchar(20);

-- dropping a column:
alter table employee
drop column city;