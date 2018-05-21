--------------------------------------------------------
--  File created - Monday-May-21-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ATUALIZAR_CLI_SEG_MERCADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."ATUALIZAR_CLI_SEG_MERCADO" (
    p_id              IN cliente.id%TYPE,
    p_segmercado_id   IN cliente.segmercado_id%TYPE
)
    IS
BEGIN
    UPDATE cliente
    SET
        segmercado_id = p_segmercado_id
    WHERE
        id = p_id;

    COMMIT;
END;

/
