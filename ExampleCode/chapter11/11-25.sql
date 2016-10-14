clear buffer
set   buffer blahblah
input
clear screen
set verify off
set pause  off
accept dept number -
       prompt "Enter a department number: "
select *
from   departments
where  deptno = &dept;
select ename, job, msal
from   employees
where  deptno = &dept;
undefine dept
set pause on
set verify on
