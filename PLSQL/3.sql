declare 
    v_num number;
    i number;
    flag number :=0;
    
begin
    
    v_num:=&num;
    
    for i in 2..(v_num/2) loop
        if mod(v_num,i)=0 then
            flag:=1;
            end loop;
        end if;
    end loop;
            
if flag=1 then
    dbms_output.put_line('Not a prime number');
else
    dbms_output.put_line('it is a prime number');
end if;

end;
/