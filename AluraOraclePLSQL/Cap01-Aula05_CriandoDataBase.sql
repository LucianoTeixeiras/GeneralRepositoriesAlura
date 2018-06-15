--Criando Usuario para o Curso

CREATE USER cursoplsql IDENTIFIED BY CURSOPLSQL
DEFAULT tablespace users;

--Concedendo Privilégios

GRANT connect, resource TO cursoplsql;

--Criando Tabelas

CREATE TABLE SegMercado(ID NUMBER(5),Descricao VARCHAR2(100));

--Restringindo Valores na Tabela

ALTER TABLE Segmercado ADD CONSTRAINT SegMercado_id_pk PRIMARY KEY(ID);

--Criando Tabela Cliente

CREATE TABLE Cliente
( ID NUMBER(5),
Razao_Social VARCHAR2(100),
CNPJ VARCHAR2(20),
SegMercado_id NUMBER(5),
Data_Inclusao DATE,Faturamento_Previsto NUMBER(10,2),
Categoria VARCHAR2(20));

--Concedendo Privilégios

ALTER TABLE Cliente ADD CONSTRAINT Cliente_id_pk PRIMARY KEY(ID);

--Criando FK

ALTER TABLE Cliente ADD CONSTRAINT Cliente_SegMercado_fk FOREIGN KEY(SegMercado_id) REFERENCES Segmercado(id);

