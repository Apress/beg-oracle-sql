UPDATE employees e      -- Example 2
SET e.msal = e.msal * 1.1
WHERE e.deptno IN (SELECT d.deptno
                   FROM   departments d
                   WHERE  d.location = 'DALLAS'
                   );


rollback;
