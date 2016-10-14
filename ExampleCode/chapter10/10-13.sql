delete from crs_offerings
where  course_code = 'ERM';

insert into crs_offerings (course_code, begindate)
                   values ('OAU' , trunc(sysdate));

rollback;
