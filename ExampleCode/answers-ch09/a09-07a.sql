select e.*
from   employees e
where  NOT exists (select o.*
                   from   offerings o
                   where  o.course = 'SQL'
                   and    o.trainer = e.empno);
