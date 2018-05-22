--------------------------------------------------------
--  File created - Tuesday-May-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ATUALIZAR_CLI_SEG_MERCADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."ATUALIZAR_CLI_SEG_MERCADO" (
    p_id              IN cliente.id%TYPE,
    p_segmercado_id   IN cliente.segmercado_id%TYPE
) IS
    e_cliente_id_inexistente EXCEPTION;
BEGIN
    UPDATE cliente
    SET
        segmercado_id = p_segmercado_id
    WHERE
        id = p_id;

    IF
        SQL%notfound
    THEN
        RAISE e_cliente_id_inexistente;
    END IF;
    COMMIT;
EXCEPTION
    WHEN e_cliente_id_inexistente THEN
        raise_application_error(-20100,'Cliente Inexistente!!!');
END;

/
