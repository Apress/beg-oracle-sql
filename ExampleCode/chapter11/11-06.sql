set verify off

select ename from employees
where  empno between &x and &x+100;
