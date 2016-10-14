define enr

select * from employees
where empno between &&enr and &enr+100;

define enr
