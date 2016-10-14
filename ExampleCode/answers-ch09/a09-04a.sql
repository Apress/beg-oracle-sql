select   e.empno, e.ename, e.init
from     employees e
where    not exists
        (select c.*
         from   courses c
         where  c.category = 'BLD'
         and    not exists
               (select r.*
                from   registrations r
                where  r.course   = c.code
                and    r.attendee = e.empno
               )
        );
