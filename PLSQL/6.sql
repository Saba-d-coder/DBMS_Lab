create or replace procedure fact(n in number,res out number) is
    begin
        if n=1 or n=0 then
            res:=1;
        else
            fact(n-1,res);
            res:= n * res;
        end if;

end;
/

declare
    num number :=&num1;
    res number;

begin
    fact(num,res);
    dbms_output.put_line('Factorial of ' || num || ' is: '|| res);

end;
/