--Erros de Execução
SELECT
    *
FROM
    cliente;

--Testa o erro não tratado

EXEC atualizar_cli_seg_mercado(4,1);

--Associando Erro a Situação de Update de Cliente que Não Existe

CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado (
    p_id              IN cliente.id%TYPE,
    p_segmercado_id   IN cliente.segmercado_id%TYPE
) IS
    e_cliente_id_inexistente EXCEPTION;
BEGIN
    UPDATE cliente
    SET
        segmercado_id = p_segmercado_id
    WHERE
        id = p_id;

    IF
        SQL%notfound
    THEN
        RAISE e_cliente_id_inexistente;
    END IF;
    COMMIT;
EXCEPTION
    WHEN e_cliente_id_inexistente THEN
        raise_application_error(-20100,'Cliente Inexistente!!!');
END;

--Testa o erro Tratado

EXEC atualizar_cli_seg_mercado(4,1);