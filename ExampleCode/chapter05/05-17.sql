select regexp_replace(comments, ' f[a-z]* ',' ? ',1,1,'i')
from   history
where  regexp_like(comments, ' f[a-z]* ','i');
