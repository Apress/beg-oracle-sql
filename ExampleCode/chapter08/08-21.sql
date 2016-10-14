select o.trainer, avg(r.evaluation)
from   offerings o
       join
       registrations r
       using (course,begindate)
group  by o.trainer;
