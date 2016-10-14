create or replace view sal_history as
select empno
,      min(begindate) over
      (partition by empno)
       as hiredate
,      begindate as reviewdate
,      msal - lag(msal) over
      (partition by empno
           order by empno, begindate)
       as salary_raise
from   history;

break on empno on hiredate

select * from sal_history;

clear breaks
