select   course
,        begindate
,        count(*)
from     registrations
where    extract(year from begindate) = 1999
group by course
,        begindate
having   count(*) >= 3;
