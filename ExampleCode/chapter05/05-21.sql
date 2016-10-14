select sysdate
,      next_day(sysdate,'SAT') as next_sat
,      last_day(sysdate)       as last_day
,      round(sysdate,'YY')     as round_yy
,      trunc(sysdate,'CC')     as trunc_cc
from   dual;
