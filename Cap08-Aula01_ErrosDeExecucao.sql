--Erros de Execução

--Gerando Erro
EXEC incluir_cliente(3,'Industria RTY','12378',NULL,110000);

CREATE OR REPLACE PROCEDURE incluir_cliente (
    p_id                     IN cliente.id%TYPE,
    p_razao_social           IN cliente.razao_social%TYPE,
    p_cnpj                   cliente.cnpj%TYPE,
    p_segmercado_id          IN cliente.segmercado_id%TYPE,
    p_faturamento_previsto   IN cliente.faturamento_previsto%TYPE
) IS
    v_categoria   cliente.categoria%TYPE;
    v_cnpj        cliente.cnpj%TYPE := p_cnpj;
BEGIN
    v_categoria := categoria_cliente(p_faturamento_previsto);
    format_cnpj(v_cnpj);
    INSERT INTO cliente VALUES (
        p_id,
        upper(p_razao_social),
        v_cnpj,
        p_segmercado_id,
        SYSDATE,
        p_faturamento_previsto,
        v_categoria
    );

    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
        dbms_output.put_line('Cliente já Cadastrado!!!');
END;

--Gerando Erro Com Tratamento Habilitado

SET SERVEROUTPUT ON
EXEC incluir_cliente(3,'Industria RTY','12378',NULL,110000);

--Gerando Erro Com Tratamento Habilitado Melhorado

EXEC incluir_cliente(3,'Industria RTY','12378',NULL,110000);

