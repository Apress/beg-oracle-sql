select comments
from   history
where  regexp_like(comments, '([[:alnum:]+[:punct:]]+[[:space:]]+){8,}');
