select bdate
,      extract(year  from bdate) as year_of_birth
,      extract(month from bdate) as month_of_birth
,      extract(day   from bdate) as day_of_birth
from   employees
where  ename = 'KING';
