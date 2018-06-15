--------------------------------------------------------
--  File created - Tuesday-May-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure INCLUIR_CLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."INCLUIR_CLIENTE" (
    p_id                     IN cliente.id%TYPE,
    p_razao_social           IN cliente.razao_social%TYPE,
    p_cnpj                   cliente.cnpj%TYPE,
    p_segmercado_id          IN cliente.segmercado_id%TYPE,
    p_faturamento_previsto   IN cliente.faturamento_previsto%TYPE
) IS

    v_categoria   cliente.categoria%TYPE;
    v_cnpj        cliente.cnpj%TYPE := p_cnpj;
    e_null EXCEPTION;
    PRAGMA exception_init ( e_null,-1400 );
BEGIN
    v_categoria := categoria_cliente(p_faturamento_previsto);
    format_cnpj(v_cnpj);
    INSERT INTO cliente VALUES (
        p_id,
        upper(p_razao_social),
        v_cnpj,
        p_segmercado_id,
        SYSDATE,
        p_faturamento_previsto,
        v_categoria
    );

    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
        raise_application_error(-20010,'Cliente já Cadastrado!!!');
    WHEN e_null THEN
        raise_application_error(-20015,'A Coluna ID é de preenchimento obrigatorio!!!');
    WHEN OTHERS THEN
        raise_application_error(-20020,sqlerrm() );
END;

/
