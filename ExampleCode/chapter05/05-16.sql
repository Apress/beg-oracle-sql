select comments
,      regexp_substr(comments, '\([^\)]+\)') as substring
from   history
where  comments like '%(%';
