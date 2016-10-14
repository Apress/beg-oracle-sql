select   e.empno, e.ename, e.init
from     registrations r
         join
         courses   c on (r.course = c.code)
         join
         employees e on (r.attendee = e.empno)
where    c.category = 'BLD'
group by e.empno, e.ename, e.init
having   count(distinct r.course)
         = (select count(*)
            from   courses
            where  category = 'BLD');
