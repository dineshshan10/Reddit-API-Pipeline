select
    title,
    url,
    author,
    sum(score) total_score,
    sum(num_comments) total_comments,
    avg(upvote_ratio) avg_upvote_ratio
from {{ ref('reddit_base') }}
group by 1,2,3
order by 4 desc
