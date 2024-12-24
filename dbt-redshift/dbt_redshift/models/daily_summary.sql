select
    date(created_utc) as ds,
    count(title) title_count,
    count(author) author_count,
    count(1) as post_count
from {{ ref('reddit_base') }}
group by 1
order by 1
