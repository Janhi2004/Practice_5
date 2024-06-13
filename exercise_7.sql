SELECT p.page_id
FROM pages as p
FULL OUTER JOIN page_likes as pl
on p.page_id=pl.page_id
where pl.liked_date is null
order by p.page_id
