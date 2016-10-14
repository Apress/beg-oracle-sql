select lower(job), initcap(ename)
from   employees
where  upper(job) = 'SALESREP'
order  by length(ename);
