select
    author,
    sum(score) total_score,
    sum(num_comments) total_comments,
    avg(upvote_ratio) avg_upvote_ratio,
    count(distinct(title)) total_articles
from {{ ref('reddit_base') }}
group by 1
order by 2 desc
