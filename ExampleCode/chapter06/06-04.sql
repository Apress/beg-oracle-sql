update employees            -- Example 1
set    job    = 'SALESREP'
,      msal   = msal - 500
,      comm   = 0
,      deptno = 30
where  empno  = 7876;

rollback;

UPDATE employees       -- Example 2
SET deptno = (SELECT deptno
              FROM   departments
              WHERE  location = 'BOSTON')
WHERE empno = 7900;

rollback;

UPDATE employees       -- Example 3
SET (deptno,mgr) = (SELECT deptno,mgr
                    FROM   departments
                    WHERE  location = 'BOSTON')
WHERE empno = 7900;

rollback;