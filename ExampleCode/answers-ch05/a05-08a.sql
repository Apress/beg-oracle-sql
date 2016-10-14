select comments
from   history
where  regexp_like(comments, '([^ ]+ ){8,}');
