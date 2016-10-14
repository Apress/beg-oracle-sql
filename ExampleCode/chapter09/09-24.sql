SELECT e1.deptno, e1.ename, e1.msal,
       (SELECT COUNT(1)
        FROM employees e2
        WHERE  e2.msal > e1.msal)+1 sal_rank
FROM employees e1
ORDER BY e1.msal DESC;
