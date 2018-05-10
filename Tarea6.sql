set serveroutput on;
DECLARE
  CURSOR c_salarioEmpleados is
    select nombre, salario, diastrabajados from empleados order by nombre asc;
    
    nombre nvarchar2(100);
    salario number;
    salariodiario number;
    diastrabajados number;
    
    PROCEDURE imprimirEmpleado(nombre nvarchar2, salario number, diastrabajados number) is
    begin
        dbms_output.put_line('======================================');
        dbms_output.put_line('Empleado: ' || nombre);
        dbms_output.put_line('Salario diario: ' || salario);
        dbms_output.put_line('Dias trabajados: ' || diastrabajados);
        dbms_output.put_line('Salario a pagar: ' || salario * diastrabajados);
        dbms_output.put_line('======================================');
    end;
BEGIN
    OPEN c_salarioEmpleados;
    LOOP
        FETCH c_salarioEmpleados INTO nombre, salario, diastrabajados;
        EXIT WHEN c_salarioEmpleados%notfound;
        salariodiario := round(salario/30, 2);
        imprimirEmpleado(nombre, salariodiario, diastrabajados);
    END LOOP;
    CLOSE c_salarioEmpleados;
END;
/