--------------------------------------------------------
--  Arquivo criado - Domingo-Maio-13-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure INCLUIR_SEGMERCADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."INCLUIR_SEGMERCADO" (    p_id in SEGMERCADO.ID%TYPE ,
                                                    p_descricao in SEGMERCADO.DESCRICAO%TYPE ) as 

begin
  INSERT into SEGMERCADO
        VALUES(p_id, upper(p_descricao));
  COMMIT;
end incluir_segmercado;

/
