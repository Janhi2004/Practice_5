SELECT age.age_bucket, 
round(100.0*sum(a.time_spent) filter (where a.activity_type = 'send')/sum(a.time_spent),2) as send_perce,
round(100.0*sum(a.time_spent) filter (where a.activity_type = 'open')/sum(a.time_spent),2) as send_perce
from activities as a
FULL OUTER JOIN age_breakdown as age
on a.user_id=age.user_id
where activity_type in ('send', 'open')
group by age.age_bucket;
