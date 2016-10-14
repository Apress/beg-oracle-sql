select date '1996-01-29' + interval '1' month as col_1
,      date '1997-01-29' + interval '1' month as col_2
,      date '1997-08-11' - interval '3' month as col_3
from   dual;

select date '1996-01-29' + interval '1' month as col_1
,      date '1997-01-28' + interval '1' month as col_2
,      date '1997-08-11' - interval '3' month as col_3
from   dual;
