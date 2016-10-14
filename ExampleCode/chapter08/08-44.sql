select o.location from offerings o
minus
select d.location from departments d;
