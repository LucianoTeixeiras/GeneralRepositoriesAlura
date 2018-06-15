--------------------------------------------------------
--  File created - Monday-May-21-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure FORMAT_CNPJ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."FORMAT_CNPJ" 
    (p_cnpj IN OUT cliente.cnpj%type)

IS
BEGIN
    p_cnpj := substr(p_cnpj,1,2) || '/' || substr(p_cnpj,3);
END;

/
