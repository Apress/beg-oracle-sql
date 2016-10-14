select o.*
from   offerings o
where  not exists
      (select r.*
       from   registrations r
       where  r.course    = o.course
       and    r.begindate = o.begindate);
