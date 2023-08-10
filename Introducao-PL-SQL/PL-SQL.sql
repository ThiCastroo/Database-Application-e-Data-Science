set SERVEROUTPUT on; -- Comando usado para vizualizar as variaveis que vamos criar --

declare
var1 VARCHAR2(30) := 'Thiago';
meu_n NUMBER(2) := 7 + 3;
begin
dbms_output.put_line('Meu nome é: '|| var1);
dbms_output.put_line('Idade:  '|| meu_n);
end;

declare 
salario_minimo number := 1320;
novo_salario number := (salario_minimo  * 0.25) + salario_minimo;
begin
dbms_output.put_line('O novo salário minimo é de: ' || 'R$'||novo_salario);
end;

declare 
calculo_dolar number := 45 * 4.89;
begin
dbms_output.put_line('45 Dólares em reais: ' || 'R$'|| calculo_dolar);
end;

declare 
carro number := &carro;
valor_parcelas number := (carro * 0.03 + carro) / 10;
begin
dbms_output.put_line('O valor das parcelas do carro é de: ' || 'R$'||valor_parcelas);
end;

declare 
carro number := &carro;
entrada number := carro * 0.20;
saldo number := carro - entrada; 
seis_parcelas number := (saldo * 0.10 + saldo) / 6;
doze_parcelas number := (saldo * 0.15 + saldo) / 12;
dezoito_parcelas number := (saldo * 0.20 + saldo) / 18;
begin
dbms_output.put_line('Valor do carro: ' || 'R$'||carro);
dbms_output.put_line('Entrada: ' || 'R$'||entrada);
dbms_output.put_line('Saldo restante parcelado em 6x: ' || 'R$'||ROUND(seis_parcelas));
dbms_output.put_line('Saldo restante parcelado em 12x: ' || 'R$'||ROUND(doze_parcelas));
dbms_output.put_line('Saldo restante parcelado em 18x: ' || 'R$'||ROUND(dezoito_parcelas));
end;
