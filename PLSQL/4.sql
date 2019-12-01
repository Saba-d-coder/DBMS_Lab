/*create table copy(
    id number primary key,
    name varchar(10),
    place varchar(10)
);
*/

declare 
    cursor cus_cursor is select * from customer;
    cursor copy_cursor is select * from copy;
    
    cus_row cus_cursor%rowtype;
    copy_row copy_cursor%rowtype;
    
begin
    for cus_row in cus_cursor loop
        insert into copy values(cus_row.ssn,cus_row.name,cus_row.place);
    end loop;
    
    for copy_row in copy_cursor loop
		dbms_output.put_line(copy_row.id||'    '||copy_row.name||'    '||copy_row.place);
	end loop;
end;
/