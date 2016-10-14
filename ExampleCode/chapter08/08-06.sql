select e.ename           employee
,      12*e.msal+s.bonus total_salary
,      d.dname           department
from   employees   e
,      salgrades   s
,      departments d
where  e.msal between s.lowerlimit
                  and s.upperlimit
and    e.deptno = d.deptno;
