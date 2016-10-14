column numlist format a60

alter table e add (numlist numberlist_t);

describe e

select empno, numlist from e;
