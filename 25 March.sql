
SET SERVEROUTPUT ON;
declare 
    var1 varchar(20) :='hey';
    a int := 10;
    b int := 20;
    c int;
    d constant int :=19;
    x int := 1;
begin
    c := a+b;
--    d := 20; This will show error bcs we make d constant
    dbms_output.put_line(var1 || ' ' || c);
    if(a>15) then
        dbms_output.put_line('a Value is greater than 5');
    ELSIF(a=10) then
        dbms_output.put_line('Value is 10');
    else
        dbms_output.put_line('else part');
    end if;
    
    -- basic loop
    loop
        dbms_output.put_line(x);
        x := x+1;
        -- exit when x>10;
        if(x>10) then
            exit;
        end if;
    end loop;
    
    dbms_output.put_line('Next loop');
    
    -- While loop
    while(x<=20) loop
        dbms_output.put_line(x);
        x := x+1; 
    end loop;
    
    dbms_output.put_line('Next loop');
    
    -- for loop
    for var in 1..10 loop
        dbms_output.put_line(x);
        x := x+1; 
    end loop;
end;

--learning assignment
-- in python how to make a constant

-- Operator
--Arithmetic +,-,**
--relational  ==,!=,>=, <=
--Comparison (like, in , between, is null)
-- Logical (and, or , nor)

--presedence rule (Check from internet)


-- Learning assign
--What is cursor
-- implicit and explicit cursor
-- Percentage type and Percentage rowtype in PlSQL