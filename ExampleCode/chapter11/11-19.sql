select *
from   employees
where  deptno = &&dept_number
and    job    = upper('&&job');

save  testscript replace
clear buffer
start testscript
@testscript
