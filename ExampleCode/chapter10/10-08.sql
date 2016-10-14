create or replace view course_days as
select   e.empno
,        e.ename
,        sum(c.duration) as days
from     registrations  r
         join courses   c on (c.code  = r.course)
         join employees e on (e.empno = r.attendee)      
group by e.empno
,        e.ename;

select *
from   course_days
where  days > 10;
