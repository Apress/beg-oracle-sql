drop type errata_tab_t force;
drop type erratum_t    force;

create type erratum_t as object
( code varchar2(4)
, ch   number(2)
, pg   number(3)
, txt  varchar2(40)
) ;
/

create type errata_tab_t as table of erratum_t;
/

describe errata_tab_t
