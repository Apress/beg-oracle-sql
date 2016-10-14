select   e1.empno
from     employees e1
,        employees e2
group by e1.empno
,        e1.msal
having   e1.msal > avg(e2.msal);
