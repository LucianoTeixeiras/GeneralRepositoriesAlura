set serveroutput on

declare

    v_id number(5) := 1 ;
    
begin

    v_id := 5;

    dbms_output.put_line(v_id);

end;