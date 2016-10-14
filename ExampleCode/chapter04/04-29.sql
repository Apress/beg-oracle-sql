select empno, begindate, comments
from   history
where  comments like '%0\%%' escape '\';
