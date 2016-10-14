insert into table ( select errata
                    from   c
                    where  code = 'SQL' )
values ( 'SQL'
       , 3
       , 45
       , 'Typo in last line.' );
