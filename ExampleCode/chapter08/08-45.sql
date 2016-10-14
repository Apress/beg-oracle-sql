select DISTINCT o.location
from   offerings o
where  o.location not in
      (select d.location
       from   departments d);
