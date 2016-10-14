select e.*
from   employees e
where  not exists (select o.trainer
                   from   offerings o
                   where  o.trainer = e.empno);
