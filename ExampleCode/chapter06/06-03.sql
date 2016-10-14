INSERT INTO dept_emp_names         -- Example 1
  ( deptname, location, empname, job) 
  ( SELECT d.dname, d.location, e.ename, e.job
    FROM  departments d, employees e
    WHERE e.deptno = d.deptno
  );


SELECT *   -- Verify that the data is the same as Listing 6-2
FROM dept_emp_names;

INSERT INTO dept_emp_names – Example 2
(SELECT * 
 FROM dept_emp_names
);

COMMIT;

SELECT COUNT(1)
FROM dept_emp_names;
