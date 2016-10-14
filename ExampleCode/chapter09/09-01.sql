select r.attendee, r.course, r.begindate
from   registrations r
where  r.course in (select c.code
                    from   courses c
                    where  c.category='BLD');
