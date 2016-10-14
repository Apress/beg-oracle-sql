select ename, init
from   employees
where  empno in
      (select attendee
       from   registrations
       where (course, begindate) in
             (select course, begindate
              from   offerings
              where  trainer =
                    (select empno
                     from   employees
                     where  ename = 'SMITH'
                     and    init  = 'N'
                    )
             )
      );
