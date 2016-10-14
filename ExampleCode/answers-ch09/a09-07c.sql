select DISTINCT e.*  -- WRONG negation Listing 9-11
from   employees e
       join
       offerings o
       on e.empno = o.trainer
where  o.course <> 'SQL';
