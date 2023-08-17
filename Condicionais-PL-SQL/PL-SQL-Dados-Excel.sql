set SERVEROUTPUT on;

--Select normal--
select dealsize, ordernumber FROM tb_produtos where dealsize = 'Medium' and ordernumber = 10347;

--Utilizando valor do banco--
declare 
quantidade varchar2(30);
begin
    select quantityordered into quantidade from tb_produtos where dealsize = 'Medium' 
        and ordernumber = 10347 
        and quantityordered = 27;
    dbms_output.put_line('A quantidade de produtos são: '|| quantidade);
end;

DECLARE
TIPO_CLIENTE VARCHAR2(40) := '0';
BEGIN
  FOR X IN (SELECT DEALSIZE, ORDERNUMBER
              FROM TB_PRODUTOS
             where ordernumber in (10402, 10134, 10168)) loop
  
    IF X.DEALSIZE = 'Medium' then
      DBMS_OUTPUT.PUT_LINE(x.ORDERNUMBER || ' Empresa de Médio Porte');
    elsif X.DEALSIZE = 'Small' then
      DBMS_OUTPUT.PUT_LINE('Empresa de Pequeno Porte');
    else
      DBMS_OUTPUT.PUT_LINE('Empresa de Grande Porte');
    END IF;
  end loop;
end;
