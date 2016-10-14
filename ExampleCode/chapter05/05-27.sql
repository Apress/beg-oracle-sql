select to_char(sysdate, 'Day')
,      to_char(sysdate, 'Day', 'nls_date_language=Dutch')
from   dual;
