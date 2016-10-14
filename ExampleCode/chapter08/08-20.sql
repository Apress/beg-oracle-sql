select trainer
,      count(distinct course)
,      count(*)
from   offerings
group  by trainer;
