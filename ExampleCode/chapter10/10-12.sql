delete from emp
where  empno = 7654;

update emp
set    ename = 'BLACK'
where  empno = 7698;

insert into emp
values(7999,'NEWGUY','NN');

rollback;
