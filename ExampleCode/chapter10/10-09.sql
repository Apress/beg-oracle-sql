select *
from   course_days
where  days > (select avg(days)
                from   course_days);
