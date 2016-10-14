select empno
from   employees
where  empno not in (select attendee
                     from   registrations
                     where  course = 'JAV');
