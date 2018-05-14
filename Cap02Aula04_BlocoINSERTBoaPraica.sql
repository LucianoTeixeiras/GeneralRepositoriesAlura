--Boa Práica

DECLARE

    v_id segmercado.id%TYPE:= 2;
    v_descricao segmercado.descricao%TYPE := 'atacado';

BEGIN

    insert into segmercado values (v_id, upper(v_descricao));
    commit;
    
END;

select * from SEGMERCADO;