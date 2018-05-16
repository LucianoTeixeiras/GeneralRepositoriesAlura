--Boa Práica

DECLARE

    v_id segmercado.id%TYPE:= 3;
    v_descricao segmercado.descricao%TYPE := 'esportivo';

BEGIN

    insert into segmercado values (v_id, upper(v_descricao));
    commit;
    
END;

select * from SEGMERCADO;

--Delete

DECLARE

    v_id segmercado.id%TYPE:= 3;

BEGIN

    DELETE SEGMERCADO
        WHERE ID = v_id;
    COMMIT;
    
END;

select * from SEGMERCADO;