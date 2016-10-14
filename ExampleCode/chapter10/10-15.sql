select * from dept20_v;

update dept20_v
set    deptno = 30
where  job    = 'TRAINER';

select * from dept20_v;

rollback;
