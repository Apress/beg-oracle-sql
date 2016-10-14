select t1.*
from   testnest t1
where  not exists
      (select t2.*
       from   testnest t2
       where  t2.x <> t1.x
       and    t1.mx submultiset of t2.mx);
