select sysdate                       as today
,      to_char(sysdate,'hh24:mi:ss') as time
,      to_char(to_date('01/01/2006','dd/mm/yyyy')
              ,'"is on "Day') as new_year_2006
from dual;
