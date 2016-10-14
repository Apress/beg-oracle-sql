select r.course, r.begindate
,      count(r.attendee) as attendees
from   registrations r
group  by r.course, r.begindate;
