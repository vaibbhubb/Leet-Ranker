/*
Enter your query here.
*/
select
    ct.contest_id, 
    ct.hacker_id, 
    ct.name, 
    ifNull(sum(ss.total_submissions), 0), 
    ifNull(sum(ss.total_accepted_submissions), 0), 
    ifNull(sum(vs.total_views), 0), 
    ifNull(sum(vs.total_unique_views), 0)
from 
    contests as ct
inner join 
    colleges as c 
on 
    ct.contest_id = c.contest_id
inner join 
    challenges as ch 
on 
    c.college_id = ch.college_id
left join (
    select
        challenge_id, 
        sum(total_submissions) as total_submissions, 
        sum(total_accepted_submissions) as total_accepted_submissions
    from 
        submission_stats
    group by 
        challenge_id
) as ss 
on 
    ch.challenge_id = ss.challenge_id
left join (
    select
        challenge_id, 
        sum(total_views) as total_views, 
        sum(total_unique_views) as total_unique_views
    from 
        view_stats
    group by 
        challenge_id
) as vs 
on 
    ch.challenge_id = vs.challenge_id
group by
    ct.contest_id, 
    ct.hacker_id, 
    ct.name
having 
    (ifNull(sum(ss.total_submissions), 0) + 
     ifNull(sum(ss.total_accepted_submissions), 0) + 
     ifNull(sum(vs.total_views), 0) + 
     ifNull(sum(vs.total_unique_views), 0)) > 0
order by 
    ct.contest_id;
