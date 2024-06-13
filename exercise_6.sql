select p.product_name, sum(od.unit) as unit 
from products as p
join orders as od
on p.product_id = od.product_id
where extract(month from order_date) = 2 and extract(year from order_date) = 2020 
group by p.product_id
having unit>= 100
