set SERVEROUTPUT on; 
-- Comando usado para vizualizar as variaveis que vamos criar --
-- Instruções DML e DQL no bloco (24/08/2023)--

declare 
    MINHA_VARIAVEL VARCHAR2(30);
begin
    select PRODUCTLINE INTO MINHA_VARIAVEL from TB_VENDAS where ORDERNUMBER = 10107 and QUANTITYORDERED = 30;
    dbms_output.put_line('Minha linha de produto é: ' ||MINHA_VARIAVEL);
end;
 

CREATE TABLE ALUNO(
    RM VARCHAR2(30),
    NOME VARCHAR2(100) 
)

INSERT INTO ALUNO (RM,NOME) VALUES ('RM92183','Antonio Alves');
INSERT INTO ALUNO (RM,NOME) VALUES ('RM98237','Beatriz Bernardes'); 
INSERT INTO ALUNO (RM,NOME) VALUES ('RM97213','Cláudio Cardoso');
INSERT INTO ALUNO (RM,NOME) VALUES ('RM97136','Thiago Castro');
INSERT INTO ALUNO (RM,NOME) VALUES ('RM85263','Matheus Ramos');

commit;

select * from aluno;

declare
    meu_nome varchar2(100);
begin
    select nome into meu_nome from aluno where rm = 'RM97136';
    dbms_output.put_line('Meu nome é: ' || meu_nome);
end;

declare
    rm varchar2(30) := 'RM55289';
    meu_nome varchar2(100) := 'Victor Shimada';
begin
    insert into aluno values (rm, meu_nome);
    commit;
end;

declare
    v_rm varchar2(30) := 'RM92183';
    novo_nome varchar2(100) := 'Antonio Rodrigues';
begin
    update aluno set nome = novo_nome where rm = v_rm;
    commit;
end;

declare
    v_rm varchar2(30) := 'RM55289';
begin
    delete from aluno where rm = v_rm;
    commit;
end;


-- Estrutura de repetição --

declare
    v_contador number(2):= 1;
begin
    Loop
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
        exit when v_contador > 20;
    End loop;
end;


declare
    v_contador number(2) := 1; 
begin
    while v_contador <= 20 loop 
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
    end loop;
end;

declare
    v_contador number(2) := 1; 
begin
    for v_contador in 1..20 loop 
        dbms_output.put_line(v_contador);
    end loop;
end;

declare
    v_contador number(2) := 1; 
begin
    for v_contador in reverse 1..20 loop 
        dbms_output.put_line(v_contador);
    end loop;
end;

declare
begin
    for X in (SELECT * FROM TB_VENDAS WHERE COUNTRY = 'France') loop 
        update tb_vendas set quantityordered = x.quantityordered * 10 where country = x.country;
        commit;
    end loop;
end;

declare
    tabuada number := &tabuada;
    contador number := 1;
begin
    while contador <= 10 loop
        dbms_output.put_line(tabuada ||' x ' || contador || ' = ' ||tabuada * contador);
        contador := contador + 1;
    End loop;
end;

declare
    tabuada number := &tabuada;
    contador number := 1;
begin
    for contador in 1..10 loop
        dbms_output.put_line(tabuada ||' x ' || contador || ' = ' ||tabuada * contador);
    End loop;
end;


declare
    numero number := &numero;
    pares number := 0;
begin
    for x in 1..numero loop
        if mod(x, 2) = 0 then
            pares := pares + 1; 
        end if;
    End loop;
    dbms_output.put_line('Nº Pares:'||pares);
    dbms_output.put_line('Nº Impares:'||(numero - pares));
end;





