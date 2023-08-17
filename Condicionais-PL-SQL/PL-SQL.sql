set SERVEROUTPUT on; 
-- Comando usado para vizualizar as variaveis que vamos criar --
-- Aula de condicionais (17/08/2023)--

declare 
 numero number := &valor;
begin
    if numero < 0 then
        dbms_output.put_line('O n�mero � negativo');
    elsif numero > 0 then
        dbms_output.put_line('O n�mero � positivo');
    else
        dbms_output.put_line('O n�mero � zero');
    end if;
end;

declare
genero char(1) := &sexo;
begin 
    if genero = 'M' or genero = 'm' then
        dbms_output.put_line('Masculino');
    elsif genero = 'F' or genero = 'f' then
        dbms_output.put_line('Feminino');
    else
        dbms_output.put_line('Outros');
    end if;
end;

declare
valorCompra number := &preco;
begin
    if valorCompra < 500 then
        dbms_output.put_line('O valor da compra � de: ' || 'R$'|| (valorCompra - (valorCompra * 0.05)));
    elsif valorCompra = 500 and valorCompra < 1000 then
        dbms_output.put_line('O valor da compra � de: ' ||  'R$'|| (valorCompra - (valorCompra * 0.10)));
    elsif valorCompra > 1500 then 
        dbms_output.put_line('O valor da compra � de: ' ||  'R$'|| (valorCompra - (valorCompra * 0.15)));
    else 
        dbms_output.put_line('Valor invalido');
    end if;
end;

declare
idade number := &idade;
begin
    if idade < 18 then
        dbms_output.put_line('Menor de idade');
    elsif idade >= 18 and idade <= 60 then
        dbms_output.put_line('Adulto');
    elsif idade > 60 then 
        dbms_output.put_line('Idoso');
    else
        dbms_output.put_line('Idade invalida');
    end if;
end;

declare
cat varchar2(35) := &categoria;
precoProduto number := &preco; 
begin
    if cat = 'vestuario' or cat = 'vestu�rio' then
        dbms_output.put_line('O pre�o do vestuario �: ' || precoProduto * 1.25);
    elsif cat = 'eletronico' or cat = 'eletr�nico' then
        dbms_output.put_line('O pre�o do eletronico �: ' || precoProduto * 1.30);
    elsif cat = 'calcado' or cat = 'cal�ado' then 
        dbms_output.put_line('O valor do calcados � de: ' || precoProduto * 1.35);
    else
        dbms_output.put_line('Categoria invalida');
    end if;
end;
