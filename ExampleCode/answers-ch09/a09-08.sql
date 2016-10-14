select   course
,        begindate
,       (select count(*)
         from   registrations r
         where  r.course = o.course
         and    r.begindate = o.begindate)
         as     registrations
from     offerings o
order by registrations;
