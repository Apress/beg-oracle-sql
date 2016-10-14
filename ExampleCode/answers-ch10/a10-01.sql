with   course_days as
      (select   e.empno, e.ename
       ,        sum(c.duration) as days
       from     registrations r
       ,        courses       c
       ,        employees     e
       where    e.empno  = r.attendee
       and      c.code   = r.course
       group by e.empno, e.ename)
select *
from   course_days
where  days > (select avg(days)
               from   course_days);
