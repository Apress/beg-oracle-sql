select e.*
from   employees e
where  e.empno NOT in (select o.trainer
                       from   offerings o
                       where  o.course = 'SQL');
