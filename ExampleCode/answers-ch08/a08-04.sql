select   course
,        begindate
,        count(r.attendee) as reg_count
from     offerings     o
         left outer join
         registrations r
         using (course, begindate)
group by course
,        begindate
order by reg_count desc;
