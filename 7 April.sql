set serveroutput on;

-- Exceptions
--    unwanted condition
--    terminate
--    exception error
--    system defined exception
--    user defined exception
-- Syntax
--declare
--
--begin
--
--exception
--    when exception then 
--        statement
--
--end;

--select * from employees;

--declare
--    c_name employees.first_name%type;
--begin
--    select first_name into c_name from employees where employee_id=501;
--    dbms_output.put_line('Rows are found' || ' ' || c_name);
--exception
--    when no_data_found then
--        dbms_output.put_line('No rows are found');
--end;


-- User Defined Exception

declare
    c_name employees.first_name%type;
    sam_exception exception;
begin
    select first_name into c_name from employees where employee_id=102;
    
    if c_name = 'Neena' then
        dbms_output.put_line('Rows are found' || ' ' || c_name);
    else
        raise sam_exception;
    end if;
exception
    when sam_exception  then
        dbms_output.put_line('No rows are found');
end;