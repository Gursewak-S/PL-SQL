--set SERVEROUTPUT on;
--
---- Explicit Cursor
--
--declare
--    cursor emp_cur is 
--        select * from employees;
--    emp_record employees%rowtype;
--begin
--    open emp_cur;
--    fetch emp_cur into emp_record;
--    while emp_cur%found
--        loop
--        dbms_output.put_line('Ename' || ' ' || emp_record.first_name);
--        fetch emp_cur into emp_record;
--    end loop;
--    close emp_cur;
--   
--end;

--set SERVEROUTPUT on;
--
--declare
--    cursor emp_cur is 
--        select * from employees;
--    emp_record employees%rowtype;
--begin    
--    for emp_record in emp_cur
--        loop
--        dbms_output.put_line('Ename' || ':' || emp_record.first_name);
--    end loop;
--end;

-- Now get the emp_name and salary for a user with the 10% decrement for a person 
-- belonging to dept id 60 or 90 otherwise get the decrement by 20%

select *  from employees;

set SERVEROUTPUT on;

declare
    cursor emp_cur is 
        select rowid,first_name , department_id, salary from employees;
    emp_record employees%rowtype;
begin    
    for emp_record in emp_cur
        loop
        if(emp_record.department_id = 60 or emp_record.department_id = 90 ) then
            update employees set salary = salary*0.9 where rowid = emp_record.rowid;
            dbms_output.put_line('Ename' || ':' || emp_record.first_name || ', ' || 'Salary' || ':' || emp_record.salary*0.9 );
        else 
            dbms_output.put_line('Ename' || ':' || emp_record.first_name || ', ' || 'Salary' || ':' || emp_record.salary*0.8 );
        end if;
    end loop;
end;