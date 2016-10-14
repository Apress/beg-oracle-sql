select e.*
from   employees e
where  e.empno not in (select o.trainer
                       from   offerings o);
