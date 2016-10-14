break on empno

select empno, n.*
from   e
,      TABLE(e.numlist) n;
