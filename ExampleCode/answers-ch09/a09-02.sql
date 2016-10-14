select o1.course
,      o1.trainer     as senior
,      o2.trainer     as junior
from   offerings      o1
,      registrations  r1
,      offerings      o2
,      registrations  r2
where  o1.course    = r1.course    -- join r1 with o1
and    o1.begindate = r1.begindate
and    o2.course    = r2.course    -- join r2 with o2
and    o2.begindate = r2.begindate
and    o1.course    = o2.course    -- o1 and o2 same course
and    o1.begindate < o2.begindate -- o1 earlier than o2
and    o1.trainer   = r2.attendee  -- trainer o1 attends o2
and    o2.trainer   = r1.attendee  -- trainer o2 attends o1
;
