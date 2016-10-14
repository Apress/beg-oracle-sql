CREATE TABLE dept_emp_names  -- create a table to populate
( deptname  VARCHAR2(10),
  location  VARCHAR2(8),
  empname   VARCHAR2(8),
  job       VARCHAR2(8)
);

SELECT d.dname, d.location, e.ename, e.job
FROM  departments d, employees e
WHERE e.deptno = d.deptno;
