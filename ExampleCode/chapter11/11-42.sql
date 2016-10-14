define V_SELECTCOL=”&1”
define V_HIRE_DT=”&2”
select &&V_SELECTCOL from employees
where hire_date >= to_date(‘&&V_HIRE_DT’, ‘DD-MON-YYYY’)
and hire_date < to_date(‘&&V_HIRE_DT’,’DD-MON-YYYY’) + 1;
