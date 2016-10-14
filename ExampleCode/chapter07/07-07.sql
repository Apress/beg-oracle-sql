alter table employees
add  (constraint E_DEPT_FK
      foreign key (deptno)
      references departments);
