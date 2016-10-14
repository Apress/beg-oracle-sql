select   e.empno, e.ename, count(*)
from     employees e
         join
         registrations r
         on (e.empno = r.attendee)
group by e.empno;
