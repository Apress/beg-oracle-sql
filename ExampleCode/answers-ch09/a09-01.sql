select o.course, o.trainer
from   offerings o
where  exists
      (select r.*
       from   registrations r
       where  r.attendee   = o.trainer
       and    r.course     = o.course
       and    r.begindate  < o.begindate)
and    not exists
      (select fo.*
       from   offerings fo
       where  fo.course    = o.course
       and    fo.trainer   = o.trainer
       and    fo.begindate < o.begindate);
