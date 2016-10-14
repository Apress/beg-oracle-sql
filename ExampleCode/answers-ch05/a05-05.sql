select job, ename
,      case 
         when msal <= 2500
         then 'cheap'
         else 'expensive'
       end         as class
from   employees
where  bdate < date '1964-01-01'
order  by case job
          when 'DIRECTOR' then 1
          when 'MANAGER'  then 2
                          else 3
          end;
