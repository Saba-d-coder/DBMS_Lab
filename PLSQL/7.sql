declare
    num1 number:=&num;
    num2 number:=num1 ;
    r number;
    v_sum number :=0;

begin
    while(num1>0) loop
        r:= mod(num1,10);
        v_sum:= v_sum *10 +r;
        num1:=trunc(num1/10);
    end loop;
    
    if(num2 = v_sum) then
        dbms_output.put_line('It is a plaindrome!');
    else
        dbms_output.put_line('It is not a plaindrome!');
    end if;
    
end;
/
