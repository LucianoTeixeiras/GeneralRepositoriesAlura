--------------------------------------------------------
--  File created - Monday-May-21-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure INCLUIR_CLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."INCLUIR_CLIENTE" 
   (p_id in cliente.id%type,
    p_razao_social IN cliente.razao_social%type,
    p_CNPJ cliente.CNPJ%type ,
    p_segmercado_id IN cliente.segmercado_id%type,
    p_faturamento_previsto IN cliente.faturamento_previsto%type)
IS

    v_categoria cliente.categoria%type;
    v_cnpj cliente.cnpj%type := p_cnpj;

BEGIN
    v_categoria := CATEGORIA_CLIENTE (p_faturamento_previsto);
    
    format_cnpj(v_cnpj);

    INSERT INTO cliente VALUES (p_id, UPPER(p_razao_social),v_CNPJ,p_segmercado_id, SYSDATE,p_faturamento_previsto,v_categoria);

    COMMIT;
    
    EXCEPTION
    WHEN dup_val_on_index THEN
        dbms_output.put_line('Cliente já Cadastrado!!!');

END;

/
