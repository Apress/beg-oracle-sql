select a.ename    as attendee
,      t.ename    as trainer
from   employees     t
       join
       offerings     o on  (o.trainer = t.empno)
       join
       registrations r using (course, begindate)
       join
       employees     a on (r.attendee = a.empno)
where  course = 'SQL';
