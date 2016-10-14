set feedback 1

select o.location from offerings   o
MINUS
select d.location from departments d;

select DISTINCT o.location
from   offerings o
where  o.location not in
      (select d.location
       from   departments d);
