create or replace function obter_descricao_segmercado
    (p_id in segmercado.id%type)
    return segmercado.descricao%type

is 
    v_descricao segmercado.descricao%type;
begin

    select descricao into v_descricao
        from segmercado
        where id = p_id;
        return v_descricao;
end;


variable g_descricao varchar2(100)
execute :g_descricao := OBTER_DESCRICAO_SEGMERCADO(1)
PRINT g_descricao

set SERVEROUTPUT on
DECLARE
    v_descricao segmercado.descricao%TYPE;
BEGIN

    v_descricao := OBTER_DESCRICAO_SEGMERCADO(2);
    DBMS_OUTPUT.PUT_LINE('Descricao: ' || v_descricao);

end;
