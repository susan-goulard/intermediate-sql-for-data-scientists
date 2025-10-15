--filter on a specific employee
--select last_name, department_id, salary
--from data_sci.employees
--where last_name='boyd'
--pattern matching
select last_name,
  department_id,
  salary
from data_sci.employees --starts with b
  --where last_name like 'b%'
  --starts with b, ends with s
where last_name like 'b%s' --and salary>100000
  or salary > 100000
order by salary
select sum(salary)
from data_sci.employee
where salary >= 100000