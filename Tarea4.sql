set serveroutput on;
declare
numero number := 4; -- 4x3x2x1
factorial number;
begin
    factorial := 1;
    while numero > 0 LOOP
        factorial := factorial * numero;
        numero := numero -1;
    END LOOP;
    dbms_output.put_line( factorial ); -- Imprimir el resultado del factorial
end;
/