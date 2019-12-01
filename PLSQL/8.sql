create or replace trigger my_trig
before update or insert or delete on employee
begin
    if to_char(sysdate,'Dy') in ('Sat','Sun') then
        raise_application_error(-20520,'U cannot make changes to the table');
    end if;
end; 
/