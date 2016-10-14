select comments
from   history
where  regexp_instr(comments, '[^ ]+', 1, 9) > 0;
