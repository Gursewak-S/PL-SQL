-- %Type and %rowtype

set serveroutput on;

declare
    eid int := 102;
    v_name hr.employees.first_name%TYPE;
    emp_rec hr.employees%rowtype;
    
begin
    select first_name into v_name from employees where employee_id = eid;
    dbms_output.put_line(eid || ' ' || v_name);
    
    select * into emp_rec from employees where employee_id = eid;
    dbms_output.put_line(eid || ' ' || emp_rec.first_name || ' ' || emp_rec.last_name);
    
end;

-- %record is same as %rowtype but the diff is that we define datatype in records but not in rowtype.

-- Implicit Cursor
    -- in this cursor we have some implicit cursor attributes
    --  %found ,%notfound,%rowcount %isopen
    
-- Cursor

set serveroutput on;

declare
    v_count int :=0;
    
begin
    if SQL%FOUND then
        dbms_output.put_line('Cursor Open 1' || ' ' || sql%rowcount);
    end if;
    
    update test set id = 50;
--    select count(*) into v_count from hr.test where id>10;
    
    if SQL%ISOPEN then -- It will not print anything 
        dbms_output.put_line('Cursor is Open');
    end if;
    
    if SQL%FOUND then  
        dbms_output.put_line('Cursor Open 2' || ' ' || sql%rowcount);
    end if;
    
    insert into test values(40);
    insert into test values(50);
    insert into test values(60);

    if SQL%FOUND then  
        dbms_output.put_line('Cursor Open 3');
    else
        dbms_output.put_line('Cursor NOt Open');
    end if;
end;