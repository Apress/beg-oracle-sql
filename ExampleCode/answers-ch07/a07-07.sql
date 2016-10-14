create unique index oau_reg on registrations
( case course when 'OAU' then attendee else null end
, case course when 'OAU' then course   else null end );

insert into registrations values (7900,'OAU',sysdate,null);

drop index oau_reg;
