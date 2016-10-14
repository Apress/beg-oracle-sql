select e.ename, e.init, e.msal
from   employees e
       join
      (select   x.deptno
       ,        avg(x.msal) avg_sal
       from     employees x
       group by x.deptno          ) g
       using (deptno)
where  e.msal > g.avg_sal;
