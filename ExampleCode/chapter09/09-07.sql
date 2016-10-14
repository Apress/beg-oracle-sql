select e.*
from   employees e
where (select count(*)
       from   employees x
       where  x.bdate > e.bdate) = 3;
