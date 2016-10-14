insert into departments                                    -- Example 1
values (90,'SUPPORT','SEATTLE', NULL);

insert into employees(empno,ename,init,bdate,msal,deptno)  -- Example 2
values (7001,'ZOMBIE','ZZ',trunc(sysdate), 0, DEFAULT);

select * from employees where empno = 7001;

insert into departments(dname,location,deptno)             -- Example 3
values('CATERING','ORLANDO', 10);

insert into salgrades                                      -- Example 4
select grade + 5
,      lowerlimit + 2300
,      least(9999, upperlimit + 2300)
,      500
from   salgrades;

rollback;
