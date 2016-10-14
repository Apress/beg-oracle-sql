select *
from   registrations
where  evaluation not in (1,2,3,NULL);
