set serveroutput on;

-- subprogram
    -- procedure vs functions
    -- program will execute some particular task
    -- we can design it on schema level means subquery
    -- package or inside the plsql block
    -- we can make subprogram using the functions and procedure methods
    -- functions return the value where as procedure doesn't return the value by default
    
    -- procedure syntax
    
    -- create or replace procedure[name]
    --        [in | out | in out]
    -- begin
    --        <procedure body>
    -- end procedure_name
    
-- in procedure we can use as also and in also in place of as

-- now let's create the first procedure
--create procedure message
--as
--begin
--    dbms_output.put_line('hello user');
--end;
--execute message; -- select this line then only you can run it.

-- in parameter => this is read only parameter and it cannot be changed.
    -- we can assign it to the var and it follows call by reference

-- we don't use create before procedure if we use declare before it.
--declare 
--    x int;
--    y int;
--    c int;
--procedure addNum(a in int , b in int) is
--begin
--    c:=a+b;
--    dbms_output.put_line('value of procedure is' || ' ' || c);
--    dbms_output.put_line(a+b);
--end;
--begin
--    x:=10;
--    y:=20;
--    addNum(x,y);
--    dbms_output.put_line('value is' || ' ' || c);
--end;

-- out =>  return the value from subprogram like a var and it is write only parameter

--declare 
--    x int;
--    y int;
--    output int;
--procedure addNum(a in int , b in int , z out int) is
--begin
--    z:=a+b;
--    dbms_output.put_line('inside procedure' || ' ' || z);
--end;
--begin
--    x:=10;
--    y:=20;
--    dbms_output.put_line('before value is' || ' ' || output);
--    addNum(x,y,output);
--    dbms_output.put_line('after value is' || ' ' || output);
--end;

-- in out => will read and write and if change in var then it will return the value
--declare 
--    x int;
--    y int;
--procedure addNum(a in out int , b in int) is
--begin
--    a:=a+b;
--    dbms_output.put_line('inside procedure' || ' ' || a);
--end;
--begin
--    x:=10;
--    y:=20;
--    dbms_output.put_line('before value is' || ' ' || x);
--    addNum(x,y);
--    dbms_output.put_line('after value is' || ' ' || x);
--end;

-- functions
--create or replace function func return int is
--begin
--    dbms_output.put_line('hello user');
--    return 99;
--end;
---- call the func separately after creating a func
--declare
--    c int;
--begin
--    c:=func();
--    dbms_output.put_line(c);
--end;

--CREATE OR REPLACE FUNCTION get_total_employees
--RETURN NUMBER
--AS
--    total_count NUMBER;
--BEGIN
--    SELECT COUNT(*) INTO total_count FROM employees;
--    RETURN total_count;
--END;
--
--DECLARE
--    emp_count NUMBER;
--BEGIN
--    emp_count := get_total_employees;
--    DBMS_OUTPUT.PUT_LINE('Total Employees: ' || emp_count);
--END;

-- learning assignment
-- what are triggers and why we use it