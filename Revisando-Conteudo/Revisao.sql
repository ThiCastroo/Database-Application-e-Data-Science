--Importando arquivos dentro da pasta
@ 'C:\Users\logonrmlocal\Desktop\Database-Application-e-Data-Science\Aula1\hr_cre.sql'
@ 'C:\Users\logonrmlocal\Desktop\Database-Application-e-Data-Science\Aula1\hr_popul.sql'

--Criar 3 tabelas e inserir 5 registros em cada
SELECT * FROM usuario;
SELECT * FROM celular;
SELECT * FROM times;

CREATE TABLE usuario(
    nome VARCHAR2(30)
);

INSERT INTO usuario VALUES('Thiago');
INSERT INTO usuario VALUES('Felipe');
INSERT INTO usuario VALUES('Matheus');
INSERT INTO usuario VALUES('Gabriel');
INSERT INTO usuario VALUES('Shima');

CREATE TABLE celular(
    numero NUMBER(5)
);

INSERT INTO celular VALUES(12345);
INSERT INTO celular VALUES(67894);
INSERT INTO celular VALUES(24567);
INSERT INTO celular VALUES(25869);
INSERT INTO celular VALUES(12354);


CREATE TABLE times(
    nomeTime VARCHAR2(30)
);

INSERT INTO times VALUES('Corinthians');
INSERT INTO times VALUES('São Paulo');
INSERT INTO times VALUES('Palmeiras');
INSERT INTO times VALUES('Santos');
INSERT INTO times VALUES('Vasco');

select * from departments;
select * from employees;

select * from departments a inner join employees b on (a.department_id=b.department_id)  where a.department_id = 100;

--Trazer departamento, qtd e nome do funcionario

select count(1) QTD, 
    a.department_name Departamento, 
    b.first_name Nome 
from departments a inner join employees b 
    on (a.department_id=b.department_id) 
where a.department_id = 100 
group by a.department_name, b.first_name;

select count(1) QTD, 
    a.department_name Departamento, 
    b.first_name Nome 
from departments a inner join employees b 
    on (a.department_id=b.department_id) 
--where a.department_id = 50
group by a.department_name, b.first_name
having count(1) > 1
order by count(1) desc;
--order by A.department_id;
--order by 1 desc, 2 asc;

