--doing awesome joins
select department_name,
  initcap(region_name),
  count(e.id) as num_employees,
  sum(salary),
  min(salary),
  max(salary)
from data_sci.employees e
  inner JOIN data_sci.company_departments cd on e.department_id = cd.id
  inner join data_sci.company_regions cr on e.region_id = cr.id
where salary >= 100000
  and cr.country_name = 'canada'
group by department_name,
  region_name
order by count(e.id) desc