--UPD do Campo Segmento de Mercado
SELECT
    *
FROM
    cliente;

--Procedure Atualiza Cliente x Segmento de Mercado

CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado (
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

--Estrutura de Repetição

DECLARE
    v_segmercado_id   cliente.segmercado_id%TYPE := 1;
    v_i               NUMBER(3);
BEGIN
    v_i := 1;
    LOOP
        atualizar_cli_seg_mercado(v_i,v_segmercado_id);
        v_i := v_i + 1;
        EXIT WHEN v_i > 3;
    END LOOP;

END;


select * from cliente;

