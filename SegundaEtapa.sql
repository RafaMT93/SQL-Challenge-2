REM   Script: Projeto BD 2
REM   banco de dados base para o projeto de bd 2

CREATE TABLE CLIENTE( 
 Idcliente int, 
 nome varchar(60), 
 dtnascimento date, 
 cpf varchar(11), 
 CONSTRAINT pk_cliente PRIMARY KEY (Idcliente) 
);

CREATE TABLE PEDIDO( 
 Idpedido int, 
 Idcliente int, 
 datapedido date,  
 vltotal decimal(10,2), 
 CONSTRAINT pk_pedido PRIMARY KEY (Idpedido), 
 CONSTRAINT fk_pedido_cliente FOREIGN KEY (Idcliente) REFERENCES CLIENTE(Idcliente) 
);

CREATE TABLE PRODUTO( 
 Idproduto int, 
 descricao varchar(100), 
 quantidade int, 
 CONSTRAINT pk_produto PRIMARY KEY (Idproduto) 
);

CREATE TABLE ITEMPEDIDO( 
 Idpedido int, 
 Nritem int, 
 valor decimal(10,2), 
 quantidade int, 
 Idproduto int, 
 CONSTRAINT pk_itempedido PRIMARY KEY (Idpedido, Nritem), 
 CONSTRAINT fk_Idpedido FOREIGN KEY (Idpedido) REFERENCES PEDIDO (Idpedido), 
 CONSTRAINT fk_itempedido_produto FOREIGN KEY (Idproduto) REFERENCES PRODUTO (Idproduto) 
);

CREATE TABLE LOG( 
 Idlog int, 
 data date, 
 descricao varchar(255), 
 CONSTRAINT pk_log PRIMARY KEY (Idlog) 
);

INSERT INTO CLIENTE VALUES (1, 'Hugo Batista', TO_DATE('05/02/1990', 'DD/MM/YYYY'), 
'51898608253');

INSERT INTO CLIENTE VALUES (2, 'José Antonio', TO_DATE('02/05/1985', 'DD/MM/YYYY'), 
'51144722241');

INSERT INTO CLIENTE VALUES (3, 'João Carlos', TO_DATE('03/05/1993', 'DD/MM/YYYY'), 
'84882273292');

INSERT INTO CLIENTE VALUES (4, 'Edivaldo Santana', TO_DATE('01/06/2000', 'DD/MM/YYYY'), 
'30609426176');

INSERT INTO CLIENTE VALUES (5, 'Cristina Oliveira', TO_DATE('16/08/1999', 'DD/MM/YYYY'), 
'56313586700');

INSERT INTO CLIENTE VALUES (6, 'Artur da Silva', TO_DATE('06/05/2001', 'DD/MM/YYYY'), 
'67491246583');

INSERT INTO CLIENTE VALUES (7, 'Adrina Domingues', TO_DATE('01/02/1972', 'DD/MM/YYYY'), 
'22044617250');

INSERT INTO PRODUTO VALUES (1, 'SAMSUNG J7 - PRIME', 10);

INSERT INTO PRODUTO VALUES (2, 'SAMSUNG J5 - PRIME', 10);

INSERT INTO PRODUTO VALUES (3, 'IPHONE X', 10);

INSERT INTO PRODUTO VALUES (4, 'MOTO G 5S', 10);

INSERT INTO PRODUTO VALUES (5, 'IPHONE 6S', 10);

INSERT INTO PEDIDO VALUES (1, 4, TO_DATE('10/03/2018', 'DD/MM/YYYY'), 1400.99);

INSERT INTO ITEMPEDIDO VALUES (1, 1, 800.99, 1, 1);

INSERT INTO ITEMPEDIDO VALUES (1, 2, 600.00, 1, 2);

INSERT INTO PEDIDO VALUES (2, 2, TO_DATE('17/03/2018', 'DD/MM/YYYY'), 1349.50);

INSERT INTO ITEMPEDIDO VALUES (2, 1, 749.50, 1, 4);

INSERT INTO ITEMPEDIDO VALUES (2, 2, 600.00, 1, 2);

INSERT INTO PEDIDO VALUES (3, 1, TO_DATE('20/03/2018', 'DD/MM/YYYY'), 2590.10);

INSERT INTO ITEMPEDIDO VALUES (3, 1, 1800.71, 1, 5);

INSERT INTO ITEMPEDIDO VALUES (3, 2, 789.39, 1, 4);

INSERT INTO PEDIDO VALUES (4, 5, TO_DATE('21/03/2018', 'DD/MM/YYYY'), 2590.10);

INSERT INTO ITEMPEDIDO VALUES (4, 1, 5099.00, 1, 3);

INSERT INTO PEDIDO VALUES (5, 7, TO_DATE('10/03/2018', 'DD/MM/YYYY'), 1800.00);

INSERT INTO ITEMPEDIDO VALUES (5, 1, 600.00, 3, 2);

--EXERCICIO 1 CRIANDO A STORED PROCEDURE
CREATE OR REPLACE PROCEDURE insertProduct(
    vIdproduto in integer,
    vdescricao in varchar,
    vquantidade in integer
)
IS
BEGIN
    INSERT INTO PRODUTO (Idproduto,descricao,quantidade) VALUES (vIdproduto,vdescricao,vquantidade);
END insertProduct;

--EXECUTANDO A STORED PROCEDURE
EXEC insertProduct (6, 'SONY XPERIA XA2', 10);

--EXERCICIO 2 CRIANDO A STORED PROCEDURE
CREATE OR REPLACE PROCEDURE insertClient ( 
    vIdcliente in integer,  
    vnome in varchar,  
    vdtnascimento in date,  
    vcpf in varchar) 
IS 
BEGIN 
	INSERT INTO CLIENTE (Idcliente,nome,dtnascimento,cpf) VALUES (vIdcliente,vnome,vdtnascimento,vcpf); 
END insertClient;

--EXECUTANDO A STORED PROCEDURE
EXEC insertClient (8,'Rafael Tiburcio',TO_DATE('21/12/1993','DD/MM/YYYY'),'99999999999');