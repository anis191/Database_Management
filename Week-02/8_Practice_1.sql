use dummydb;
/*
Questions:
1.Determine the third highest salary and which employee receives it?
2.Determine the third lowest salary and which employee receives it?
3.Which employee has been hired after Steven?
4.With common table expression solve the question 1 and 2
*/
-- Ans 1:
select *
from employees
where salary = (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees
								where salary < (select max(salary)
												from employees)
								)
				);
-- Ans 2:
select *
from employees
where salary = (select min(salary)
				from employees
				where salary > (select min(salary)
								from employees
								where salary > (select min(salary)
												from employees)
								)
				);
/* Ans 3: (We solve this problem step by step, because it's a advance sub query) */
--  Step-->1
select *
from employees
order by hire_date;
--  Step-->2
select hire_date
from employees
where employee_id = (select employee_id
					from employees
					where first_name = 'Steven' and last_name = 'King');
-- Step-->3
select min(hire_date) 
from employees
where hire_date > (select hire_date
					from employees
					where employee_id = (select employee_id
										from employees
										where first_name = 'Steven' and last_name = 'King'
                                        )
					);
-- Final ans of question no --> 3
select *
from employees
where hire_date = (select min(hire_date)
				   from employees
				   where hire_date > (select hire_date
									  from employees
									  where employee_id = (select employee_id
														   from employees
														   where first_name = 'Steven' and last_name = 'King'
															)
										)
                    );
-- Ans 4: (Using common table expression)
with steven_em_id as
(
	select employee_id
	from employees
	where first_name = 'Steven' and last_name = 'King'
),
steven_hire_date as
(
	select hire_date
	from employees
	where employee_id = (select employee_id from steven_em_id)
),
min_date_after_steven as
(
select min(hire_date) as mn_date
from employees
where hire_date > (select hire_date from steven_hire_date)
)
select *
from employees
where hire_date in (select mn_date from min_date_after_steven);