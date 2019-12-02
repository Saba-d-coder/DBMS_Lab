declare 
    v_inc number:=0.15;
    v_count number;
    
begin
    update employee set sal=sal+sal*v_inc where deptno=10;
    
    v_count:=SQL%rowcount;
    
    dbms_output.put_line('Number of employees awarded the increase:'||v_count);
end;
/
