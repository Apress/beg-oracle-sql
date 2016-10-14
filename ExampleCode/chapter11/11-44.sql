variable v_empno number
select empno into :v_empno from employees
where hire_date >= to_date(‘&&V_HIRE_DT’, ‘DD-MON-YYYY’)
and hire_date < to_date(‘&&V_HIRE_DT’,’DD-MON-YYYY’) + 1;

select ename from employees
where empno = :v_empno;
