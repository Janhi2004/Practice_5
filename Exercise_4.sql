SELECT cc.customer_id 
FROM customer_contracts as cc
inner join products as p
on cc.product_id = p.product_id
group by cc.customer_id
having count(distinct p.product_category) = 3
