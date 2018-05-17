--Criando uma Porcedure Boas Praticas

create or replace procedure incluir_segmercado (    p_id in SEGMERCADO.ID%TYPE ,
                                                    p_descricao in SEGMERCADO.DESCRICAO%TYPE ) as 

begin
  INSERT into SEGMERCADO
        VALUES(p_id, upper(p_descricao));
  COMMIT;
end incluir_segmercado;

select * from segmercado;

--Execuando uma proedure via comando exec/execute

EXEC INCLUIR_SEGMERCADO(3, 'Farmaceuticos');

select * from segmercado;

--Execuando uma proedure via bloco PL/SQL

BEGIN
    INCLUIR_SEGMERCADO(4, 'Esportivos');
END;

select * from segmercado;
