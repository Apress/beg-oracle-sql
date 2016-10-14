select   t.init, t.ename
,        count(distinct begindate) courses
,        count(*)                  attendees
,        round(avg(evaluation),1)  evaluation
from     employees     t
,        registrations r
         join
         offerings     o
         using (course, begindate)
where    t.empno = o.trainer
group by t.init, t.ename;
