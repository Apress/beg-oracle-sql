select e.ename
,      e.msal
,      e.comm
from   employees e
where  e.deptno <> 30
and   (       e.msal,coalesce(e.comm,-1) ) in
      (select x.msal,coalesce(x.comm,-1)
       from   employees x
       where  x.deptno = 30              );
