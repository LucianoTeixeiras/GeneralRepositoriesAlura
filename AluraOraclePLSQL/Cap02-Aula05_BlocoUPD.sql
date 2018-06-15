DECLARE

    v_id segmercado.id%TYPE := 1;
    v_descricao segmercado.descricao%TYPE := 'varejista';

BEGIN

    UPDATE SEGMERCADO
      SET descricao = UPPER(v_descricao)
      WHERE ID = v_id;
      
    v_id := 2;
    v_descricao := 'atacadista';

    UPDATE SEGMERCADO
      SET descricao = UPPER(v_descricao)
      WHERE ID = v_id;
    COMMIT;      

END;

select * FROM SEGMERCADO;