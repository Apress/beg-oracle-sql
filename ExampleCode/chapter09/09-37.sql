select count(*) from e;

flashback table e to timestamp to_timestamp('&timestamp');

select count(*) from e;
