select e.ename, e.bdate
,      h.deptno, h.msal 
from   employees e
       join
       history h
       using (empno)
where  e.job = 'ADMIN';
