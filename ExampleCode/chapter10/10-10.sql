create or replace view crs_offerings as
select o.course as course_code, c.description, o.begindate
from   offerings o
       join
       courses   c
       on (o.course = c.code);
