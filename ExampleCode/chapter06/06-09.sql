DELETE FROM employees
WHERE deptno IN (SELECT deptno
                 FROM   departments
                 WHERE  location = 'NEW YORK')
/


