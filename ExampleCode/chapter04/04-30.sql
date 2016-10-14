select attendee, begindate
,      case evaluation
            when 1 then 'bad'
            when 2 then 'mediocre'
            when 3 then 'ok'
            when 4 then 'good'
            when 5 then 'excellent'
                   else 'not filled in'
       end
from   registrations
where  course = 'SQL';
