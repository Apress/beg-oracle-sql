select DISTINCT e.*
from   employees e
       join
       offerings o
       on e.empno = o.trainer
where  o.course = 'SQL';
