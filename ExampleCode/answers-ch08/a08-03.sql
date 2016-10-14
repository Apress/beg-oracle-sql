select e.ename, e.init
,      12 * (e.msal + s.bonus)
       + nvl(e.comm,0) as yearsal
from   employees e
       join
       salgrades s
       on (e.msal between s.lowerlimit
                      and s.upperlimit);
