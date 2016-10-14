select empno, job, bdate
from   employees
where  bdate < date '1960-01-01'
and    job in ('TRAINER','SALESREP');
