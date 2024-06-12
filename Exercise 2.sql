SELECT round(count(t.email_id)::decimal/count(e.email_id),2)
FROM emails as e
left join texts as t
on e.email_id=t.email_id
and t.signup_action = 'Confirmed';
