accept x prompt "Enter date[yyyy-mm-dd]: "

select date '&x' as input_date
,      to_char(date '&x', 'ww') as ww
,      to_char(date '&x', 'iw') as iw
from   dual;

undefine x
