select e.ename, e.init
from   employees e
where  e.empno <> 7788
and    not exists
      (select r1.course
       from   registrations r1
       where  r1.attendee = 7788
       MINUS
       select r2.course
       from   registrations r2
       where  r2.attendee = e.empno);
