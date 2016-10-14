update table ( select errata
               from   c
               where  code = 'SQL') e
set    e.ch  = 7;
