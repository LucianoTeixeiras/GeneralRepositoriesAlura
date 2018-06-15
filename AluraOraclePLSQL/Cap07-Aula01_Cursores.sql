--Executando Procedure e Cursores
DECLARE
    v_id              cliente.id%TYPE;
    v_segmercado_id   cliente.segmercado_id%TYPE := 1;
    CURSOR cur_cliente IS SELECT
        id
                          FROM
        cliente;

BEGIN
    OPEN cur_cliente;
    LOOP
        FETCH cur_cliente INTO v_id;
        EXIT WHEN cur_cliente%notfound;
        atualizar_cli_seg_mercado(v_id,v_segmercado_id);
    END LOOP;

    CLOSE cur_cliente;
    COMMIT;
END;

SELECT
    *
FROM
    cliente;

--Boas Praticas do Cursor

DECLARE
    v_segmercado_id   cliente.segmercado_id%TYPE := 2;
    CURSOR cur_cliente IS SELECT
        id
                          FROM
        cliente;

BEGIN
    FOR cli_rec IN cur_cliente LOOP
        atualizar_cli_seg_mercado(cli_rec.id,v_segmercado_id);
    END LOOP;
    COMMIT;
END;

SELECT * FROM cliente;