DELETE FROM dept_emp_names
  WHERE deptname = (SELECT dname
                    FROM departments
                    WHERE location = 'DALLAS');


rollback;


