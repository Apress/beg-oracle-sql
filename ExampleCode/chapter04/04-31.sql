select ename, job
,      case when job   = 'TRAINER' then '  10%'
            when job   = 'MANAGER' then '  20%'
            when ename = 'SMITH'   then '  30%'
                                   else '   0%'
       end  as raise
from   employees
order  by raise desc, ename;
