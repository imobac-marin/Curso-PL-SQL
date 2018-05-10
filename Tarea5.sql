create or replace function promedio_notas(nota1 in number, nota2 in number, nota3 in number, nota4 in number) return number as
promedio number(5,2) := 0;
begin
    promedio := (nota1+nota2+nota3+nota4)/4;
    return promedio;
end;
/

select a.*, promedio_notas(nota1, nota2, nota3, nota4) as promedio from notas a;