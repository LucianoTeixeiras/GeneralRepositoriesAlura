DECLARE

    v_id number(5) := 1;
    v_descricao varchar2(100) := 'varejo';

BEGIN

    insert into segmercado values (v_id, v_descricao);
    commit;
    
END;