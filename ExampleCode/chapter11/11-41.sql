select &1 from employees
where hire_date >= to_date(‘&2’, ‘DD-MON-YYYY’)
and hire_date < to_date(‘&2’,’DD-MON-YYYY’) + 1;
