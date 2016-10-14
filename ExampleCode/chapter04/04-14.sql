select ename, 12*msal+comm yearsal
from   employees
where  job = 'SALESREP'
order  by yearsal desc;
