select job, ename
,      decode(greatest(msal,2500)
             ,2500,'cheap','expensive') as class
from   employees
where  bdate <date '1964-01-01'
order  by decode(job,'DIRECTOR',1,'MANAGER',2,3);
