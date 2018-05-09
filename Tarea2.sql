DECLARE
    salario number := round(DBMS_RANDOM.VALUE(600,2000), 2);
BEGIN
    CASE
        WHEN salario <= 600 THEN 
            DBMS_OUTPUT.PUT_LINE('1 - Salario: ' || salario);
            salario := round(salario * 1.15, 2);
            DBMS_OUTPUT.PUT_LINE('Salario después de aumento: ' || salario);
        WHEN salario between 601 and 950 THEN 
            DBMS_OUTPUT.PUT_LINE('2 - Salario: ' || salario);
            salario := round(salario * 1.135, 2);
            DBMS_OUTPUT.PUT_LINE('Salario después de aumento: ' || salario);
        WHEN salario between 951 and 1400 THEN 
            DBMS_OUTPUT.PUT_LINE('3 - Salario: ' || salario);
            salario := round(salario * 1.1, 2);
            DBMS_OUTPUT.PUT_LINE('Salario después de aumento: ' || salario);
        ELSE
            DBMS_OUTPUT.PUT_LINE('4 - Salario: ' || salario);
            salario := round(salario * 1.05, 2);
            DBMS_OUTPUT.PUT_LINE('Salario después de aumento: ' || salario);
      END CASE;
END;
/