
-- CONSULTAS AO BANCO

SELECT * FROM caixa;
SELECT * FROM funcionario;
SELECT * FROM forma_pagamento;
SELECT * FROM categoria_veiculo;
SELECT * FROM montadora;
SELECT * FROM modelo;
SELECT * FROM veiculo;
SELECT * FROM compra;
SELECT * FROM item_comprado;
SELECT * FROM cliente;
SELECT * FROM venda;
SELECT * FROM item_vendido;
SELECT * FROM endereco_cliente;
SELECT * FROM endereco_montadora;
SELECT * FROM telefone_cliente;
SELECT * FROM telefone_montadora;
SELECT * FROM pagamento_venda;
SELECT * FROM pagamento_compra;


SELECT nome_cliente AS 'Nome do cliente', ultimo_nome_cliente AS 'Sobrenome do cliente',
	numero_telefone AS 'Número de telefone', descricao_telefone AS 'Descrição',
    logradouro AS 'Logradouro', bairro AS 'Bairro', cidade AS 'Cidade', estado AS 'Estado'
FROM cliente AS c, telefone_cliente AS tc, endereco_cliente AS ec
WHERE c.cpf = tc.cpf_cliente
AND c.cpf = ec.cpf_cliente
ORDER BY c.nome_cliente;


SELECT nome_montadora AS 'Montadora',
	numero_telefone AS 'Número de telefone', descricao_telefone AS 'Descrição',
    logradouro AS 'Logradouro', bairro AS 'Bairro', cidade AS 'Cidade', estado AS 'Estado'
FROM montadora AS m, telefone_montadora AS tm, endereco_montadora AS em
WHERE m.cnpj = tm.cnpj_montadora
AND m.cnpj = em.cnpj_montadora
ORDER BY m.nome_montadora;


SELECT chassi, nome_categoria_veiculo AS 'Categoria do veículo',
	nome_montadora AS 'Montadora', nome_modelo AS 'Modelo'
FROM veiculo AS v, categoria_veiculo AS cv, montadora AS m, modelo AS model
WHERE v.cod_categoria_veiculo = cv.cod
AND v.cnpj_montadora = m.cnpj
AND v.cod_modelo = model.cod
ORDER BY model.nome_modelo;


SELECT matricula AS 'Matrícula', nome_funcionario AS 'Nome', ultimo_nome_funcionario AS 'Sobrenome',
	data_compra AS 'Data da compra', compras_efetuadas AS 'Compras feitas', valor_total_compra AS 'Valor total da compra',
    nome_montadora AS 'Montadora'
FROM funcionario AS F, compra AS c, montadora AS m
WHERE f.matricula = c.matricula_funcionario
AND c.cnpj_montadora = m.cnpj
ORDER BY c.data_compra;


SELECT matricula AS 'Matrícula', nome_funcionario AS 'Nome', ultimo_nome_funcionario AS 'Sobrenome',
	data_compra AS 'Data da compra', 
    nome_categoria_veiculo AS 'Categoria do veículo',
    nome_montadora AS 'Montadora',
    nome_modelo AS 'Modelo',
    chassi AS 'Chassi do veículo',
    valor_unitario_item_comprado AS 'Valor de compra do veículo'
FROM funcionario AS f, veiculo as v, categoria_veiculo as cv, montadora AS m, modelo AS model, compra AS c, item_comprado as ic
WHERE f.matricula = c.matricula_funcionario 
AND c.cod = ic.cod_compra
AND cv.cod = v.cod_categoria_veiculo
AND m.cnpj = v.cnpj_montadora
AND model.cod = v.cod_modelo
AND v.chassi = ic.chassi_veiculo
ORDER BY c.cod;


SELECT matricula AS 'Matrícula', nome_funcionario AS 'Nome', ultimo_nome_funcionario AS 'Sobrenome',
	data_compra AS 'Data da compra', valor_total_compra 'Valor total da compra',
    data_pagamento_compra AS 'Data do pagamento', valor_pago AS 'Valor pago',
    tipo_pagamento AS 'Forma de pagamento'
FROM funcionario AS f, compra AS c, pagamento_compra AS pc, forma_pagamento AS fp
WHERE c.cod = pc.cod_compra
AND f.matricula = c.matricula_funcionario
AND fp.cod = pc.cod_forma_pagamento
ORDER BY c.cod;


SELECT matricula AS 'Matrícula', nome_funcionario AS 'Nome', ultimo_nome_funcionario AS 'Sobrenome',
	data_venda AS 'Data da venda', valor_total_venda AS 'Valor total da venda', vendas_efetuadas AS 'Vendas realizadas'
FROM funcionario AS f, venda AS v
WHERE f.matricula = v.matricula_funcionario;


SELECT matricula AS 'Matrícula', nome_funcionario AS 'Nome do funcionário', ultimo_nome_funcionario AS 'Sobrenome do funcionário',
	data_venda AS 'Data da venda', 
    nome_cliente AS 'Nome do cliente', ultimo_nome_cliente AS 'Sobrenome do cliente',
    nome_categoria_veiculo AS 'Categoria do veículo', nome_montadora AS 'Montadora', nome_modelo AS 'Modelo do veículo', chassi AS 'Chassi',
    valor_unitario_item_vendido AS 'Valor de venda do veículo'
FROM funcionario AS f, veiculo as veic, categoria_veiculo as cv, montadora AS m, modelo AS model, venda AS v, cliente AS c, item_vendido AS iv
WHERE f.matricula = v.matricula_funcionario
AND c.cpf = v.cpf_cliente
AND v.cod = iv.cod_venda
AND cv.cod = veic.cod_categoria_veiculo
AND m.cnpj = veic.cnpj_montadora
AND model.cod = veic.cod_modelo
AND veic.chassi = iv.chassi_veiculo
ORDER BY v.cod;


SELECT matricula AS 'Matrícula', nome_funcionario AS 'Nome do funcionário', ultimo_nome_funcionario AS 'Sobrenome do funcionário',
	data_venda AS 'Data da venda', valor_da_venda 'Valor da venda',
    data_pagamento_venda AS 'Data do pagamento', valor_pago AS 'Valor pago',
    tipo_pagamento AS 'Forma de pagamento'
FROM funcionario AS f, venda AS v, pagamento_venda AS pv, forma_pagamento AS fp
WHERE f.matricula = v.matricula_funcionario
AND v.cod = pv.cod_venda
AND fp.cod = pv.cod_forma_pagamento
ORDER BY v.cod;