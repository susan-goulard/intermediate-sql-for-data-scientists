select last_name,
  email,
  cd.department_name,
  salary
from data_sci.employees e
  inner join data_sci.company_departments cd on e.department_id = cd.id
where e.salary > 120000