declare
    a number :=0;
    b number :=1;
    v_sum number :=0;
    i number;

begin
    dbms_output.put_line('Series is :');
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    
    for i in 2..7 loop
        v_sum:=a+b;
        a:=b;
        b:=v_sum;
        dbms_output.put_line(v_sum);  
    end loop;

end;
/