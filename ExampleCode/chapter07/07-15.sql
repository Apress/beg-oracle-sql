create sequence deptno_seq
start with 50 increment by 10;

select deptno_seq.nextval, deptno_seq.currval
from   dual;

select deptno_seq.currval
from   dual;

select deptno_seq.currval, deptno_seq.nextval
from   dual;
