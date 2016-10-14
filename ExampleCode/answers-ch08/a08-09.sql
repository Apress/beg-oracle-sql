select distinct e.ename, e.init
from   employees     e
,      courses       c
,      offerings     o
,      registrations r
where  e.empno     = o.trainer
and    e.mgr       = r.attendee
and    c.code      = o.course
and    o.course    = r.course
and    o.begindate = r.begindate
and    c.category  = 'GEN';
