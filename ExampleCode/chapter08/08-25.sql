select case mod(empno,2)
            when 0 then 'EVEN '
                   else 'ODD  '
       end  as empno
,      sum(msal)
from   employees
group  by mod(empno,2);
