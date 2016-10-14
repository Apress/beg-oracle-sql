SELECT e1.deptno, e1.ename, e1.msal,
       RANK() OVER (ORDER BY e1.msal DESC) sal_rank
FROM employees e1
ORDER BY e1.msal DESC;
