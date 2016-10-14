select 'is true  ' as condition
from   dual
where  (1=1 or 1=0) and 0=1;

select 'is true  ' as condition
from   dual
where  1=1 or (1=0 and 0=1);
