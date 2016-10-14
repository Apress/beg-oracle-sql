select e.ename           employee
,      12*e.msal+s.bonus total_salary
from   employees e
,      salgrades s
where  e.msal between s.lowerlimit
                  and s.upperlimit;
