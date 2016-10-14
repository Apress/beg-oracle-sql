define V_HIRE_DT=”&1”
column empno new_value V_EMPNO
select empno from employees
where hire_date >= to_date(‘&&V_HIRE_DT’, ‘DD-MON-YYYY’)
and hire_date < to_date(‘&&V_HIRE_DT’,’DD-MON-YYYY’) + 1;

select ename from employees
where empno = &&V_EMPNO;
