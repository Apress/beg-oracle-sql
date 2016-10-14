select DISTINCT c.code
,      o.begindate
,      c.duration
,      case when o.trainer is not null
            then e.ename
            else null
       end       as trainer
from   employees e
,      courses   c
,      offerings o
where  coalesce(o.trainer,-1) in (e.empno,-1)
and    o.course = c.code;
