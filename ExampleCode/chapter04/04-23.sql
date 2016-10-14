select  code, category, duration
from    courses
where   (category = 'BLD' or  duration = 2)
and not (category = 'BLD' and duration = 2);
