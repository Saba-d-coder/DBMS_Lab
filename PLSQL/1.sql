declare
    cursor acc_data is select * from account;
    cursor cus_data is select * from customer;
    cursor br_data is select * from branch;
    
    acc_row acc_data%rowtype;
    cus_row cus_data%rowtype;    
    br_row br_data%rowtype;   
    
begin

    dbms_output.put_line(chr(20));        
    dbms_output.put_line('***************Branch Table*****************');
        dbms_output.put_line('Code       Name            Assets');
    for br_row in br_data loop
        dbms_output.put_line(br_row.code||'         '||br_row.name||'             '||br_row.assets );
    end loop;

    dbms_output.put_line(chr(20));      
    dbms_output.put_line('***************Customer Table*****************');
        dbms_output.put_line('SSN       NAME           PLACE');
    for cus_row in cus_data loop
        dbms_output.put_line(cus_row.ssn||'         '||cus_row.name||'            '||cus_row.place);
    end loop;
    
    dbms_output.put_line(chr(10));
    dbms_output.put_line('***************Account Table*****************');
    dbms_output.put_line('ACCNO       SSN        CODE         BALANCE');
    for acc_row in acc_data loop
        dbms_output.put_line(acc_row.accno|| '          '||acc_row.ssn||'          '||acc_row.code||'         '||acc_row.balance);
    end loop;
    
    update account set balance=0 where ssn=2;
    
    dbms_output.put_line(chr(20));        
    dbms_output.put_line('***************Updated Account Table*****************');
    dbms_output.put_line('ACCNO       SSN        CODE         BALANCE');
    for acc_row in acc_data loop
        dbms_output.put_line(acc_row.accno|| '          '||acc_row.ssn||'          '||acc_row.code||'         '||acc_row.balance);
    end loop;
    
    
end;
/
     