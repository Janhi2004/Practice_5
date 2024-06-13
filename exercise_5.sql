# Write your MySQL query statement below
select emp1.employee_id, emp1.name, count(emp2.reports_to) as reports_count, round(avg(emp2.age),0) as average_age
from Employees as emp1
join Employees as emp2 on emp1.employee_id = emp2.reports_to
group by emp1.employee_id, emp1.name
