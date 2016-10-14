select c.code
,      o.begindate
,      c.duration
,      e.ename   as  trainer
from   employees e
,      courses   c
,      offerings o
where  o.trainer = e.empno
and    o.course  = c.code;
