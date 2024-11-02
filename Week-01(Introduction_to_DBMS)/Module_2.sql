use college;
-- Update query:
select *
from students
where Roll=1;

set sql_safe_updates = 0; -- OFF
update students
set Name = 'Anus Islam',GPA = 3.43
where Roll = 1;
set sql_safe_updates = 1; -- On

-- Delete query:
/* Delete full record of roll 19 */
set sql_safe_updates = 0; -- OFF
delete from students
where Roll = 19;
set sql_safe_updates = 1; -- On