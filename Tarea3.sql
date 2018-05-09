set serveroutput on;
declare
type notasArray is varray(4) of number;
notas notasArray := notasArray(95,60,75,85);
promedio number(6,2) := 0;
begin
    for i in 1..notas.count LOOP
        promedio := promedio + notas(i);
    END LOOP;
    promedio := promedio / notas.count;
    dbms_output.put_line( promedio ); -- Determine el promedio
end;
/