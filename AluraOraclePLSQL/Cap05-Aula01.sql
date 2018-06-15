--Formatação de Dados

select * from cliente;

--Procedure Format CNPJ

CREATE OR REPLACE PROCEDURE FORMAT_CNPJ
    (p_cnpj IN OUT cliente.CNPJ%type)

IS
BEGIN
    p_cnpj := substr(p_cnpj,1,2) || '/' || substr(p_cnpj,3);
END;

--Define a variavel para executar a Procedure Format CNPJ

VARIABLE g_cnpj varchar2(10)
EXECUTE :g_cnpj := '12345'
PRINT g_cnpj

--Execute a Procedure Format CNPJ

EXECUTE FORMAT_CNPJ(:g_cnpj)
PRINT g_cnpj;

--Execute a Procedure Incluir Cliente após ajuste

EXECUTE INCLUIR_CLIENTE(3, 'Industria RTY', '12378', NULL, 110000);

select * from cliente;