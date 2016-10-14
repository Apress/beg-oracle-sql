insert into table ( select errata
                    from   c
                    where  code = 'SQL' )
values ('SQL'
       , 3
       , 46
       ,'Layout illustration' );

insert into table ( select errata
                    from   c
                    where  code = 'SQL' )
values ('SQL'
       , 5
       , 1
       ,'Introduction missing.' );

insert into table ( select errata
                    from   c
                    where  code = 'XML' )
values ('XML'
       , 5
       , 1
       ,'Introduction missing.' );

insert into table ( select errata
                    from   c
                    where  code = 'XML' )
values ('XML'
       , 7
       , 3
       ,'Line 5: "succeeds" should read "fails"' );
