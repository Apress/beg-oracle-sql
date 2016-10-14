select 'found!' as result from dual
where regexp_like('&text', '^.a{1,2}.+$', 'i');
