select   attendee,course
from     registrations
group by attendee,course
having   count(*) > 1 ;
