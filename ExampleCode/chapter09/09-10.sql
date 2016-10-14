select e.*
from   employees e
where  e.empno in (select o.trainer
                   from   offerings o
                   where  o.course = 'SQL');
