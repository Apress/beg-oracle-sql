define x=7500

select ename from employees
where  empno between &x and &x+100;
