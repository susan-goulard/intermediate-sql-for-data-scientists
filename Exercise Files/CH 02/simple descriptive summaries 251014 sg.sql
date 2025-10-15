select department_id,
  sum(salary),
  round(avg(salary), 0),
  round(var_pop(salary), 0),
  round(stddev_pop(salary), 0) as std_dev_salary
from data_sci.employees
group by department_id