DECLARE
    IVA CONSTANT number := 0.15;

    numCamisetasVender number := 5;
    montoCamisetas number := 50;
    
    subTotalAPagar number;
    impuestos number;
    totalAPagar number;
BEGIN

    subTotalAPagar := (numCamisetasVender * montoCamisetas);
    impuestos := (subTotalAPagar * IVA);
    totalAPagar := (subTotalAPagar + impuestos);
    
    dbms_output.put_line('Camisetas: ' || numCamisetasVender);
    dbms_output.put_line('Monto camisetas: ' || montoCamisetas);
    dbms_output.put_line('impuestos: ' || impuestos);
    dbms_output.put_line('SubTotal: ' || subTotalAPagar);
    dbms_output.put_line('Total: ' || totalAPagar);
    
END;
/