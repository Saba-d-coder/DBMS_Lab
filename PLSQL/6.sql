
-- procedure
create or replace procedure fact(n in number) is
    i number:=1;
    f number:=1;
begin
    while(i<n+1) loop
        f:=f*i;
        i:=i+1;
    end loop;

    dbms_output.put_line('Factorial of ' || n ||' is: '||f);

end;
/
                         
--main program

declare
    n number :=&num;

begin
    fact(n);
end;
/
