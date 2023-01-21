CREATE DATABASE concessionaria;

USE concessionaria;


CREATE TABLE caixa (
 	cod INT PRIMARY KEY NOT NULL,
 	saldo_em_caixa NUMERIC(10,2)
);

-- Inserindo Caixa
insert into caixa(cod, saldo_em_caixa)
values(1, 10000000.00);
insert into caixa(cod, saldo_em_caixa)
values(2, 20000000.00);
insert into caixa(cod, saldo_em_caixa)
values(3, 30000000.00);



CREATE TABLE funcionario (
	matricula INT PRIMARY KEY NOT NULL,
	nome_funcionario VARCHAR(100),
    ultimo_nome_funcionario varchar(100),
	cpf_funcionario VARCHAR(14),
	
	cod_caixa INT,
	FOREIGN KEY (cod_caixa) REFERENCES caixa (cod)
);

-- Inserindo Funcionarios
insert into funcionario(matricula, nome_funcionario, ultimo_nome_funcionario, cpf_funcionario, cod_caixa)
values(2020002641, 'Delano', 'Almeida', '010.202.030-00', 1);
insert into funcionario(matricula, nome_funcionario, ultimo_nome_funcionario, cpf_funcionario, cod_caixa)
values(2022024648, 'Anderson',  'Oliveira', '210.802.430-80',  2);
insert into funcionario(matricula, nome_funcionario, ultimo_nome_funcionario, cpf_funcionario, cod_caixa)
values(2021027823, 'Rafael', 'Silva', '863.847.519-32',  3);




CREATE TABLE forma_pagamento (
	cod INT PRIMARY KEY NOT NULL,
	tipo_pagamento VARCHAR(100)
);

-- Inserindo a Forma de pagamento
insert into forma_pagamento(cod, tipo_pagamento)
values(1, 'cartão de crédito');
insert into forma_pagamento(cod, tipo_pagamento)
values(2, 'A vista');



CREATE TABLE categoria_veiculo (
	cod INT PRIMARY KEY NOT NULL,
	nome_categoria_veiculo VARCHAR(100)
);

-- Categoria de veículos
insert into categoria_veiculo(cod, nome_categoria_veiculo) values (1, 'Automovel');
insert into categoria_veiculo(cod, nome_categoria_veiculo) values (2, 'Motocicleta');
insert into categoria_veiculo(cod, nome_categoria_veiculo) values (3, 'Caminhao');



CREATE TABLE montadora (
   	cnpj VARCHAR(18) PRIMARY KEY NOT NULL,
	nome_montadora VARCHAR(100)
);

-- Montadoras
insert into montadora(cnpj, nome_montadora)
values('128.051.7550-0001', 'Ford');
insert into montadora(cnpj, nome_montadora)
values('987.638.2628-0002', 'Volkswagem');
insert into montadora(cnpj, nome_montadora)
values('873.745.4684-0007', 'Chevrolet');



-- Criação da tabela com os modelos dos veículos
CREATE TABLE modelo(
   	cod INT PRIMARY KEY NOT NULL,
	nome_modelo VARCHAR(100),
    
	cnpj_montadora VARCHAR(18),
 	FOREIGN KEY (cnpj_montadora) REFERENCES montadora (cnpj)
);

-- Modelos da Chevrolet
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(1, 'Agile', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(2, 'Cobalt', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(3, 'Opala', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(4, 'Montana', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(5, 'Celta', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(6, 'Corsa', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(7, 'D-20', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(8, 'Kadett', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(9, 'Astra', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(10, 'Captiva', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(11, 'Corvette', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(12, 'Omega', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(13, 'Prisma', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(14, 'S-10', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(15, 'Vectra', '873.745.4684-0007');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(16, 'Trailblazer', '873.745.4684-0007');

-- Modelos da Volkswagem
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(17, 'Amarok', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(18, 'Bora', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(19, 'Gol', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(20, 'Fusca', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(21, 'Jetta', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(22, 'Kombi', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(23, 'Golf', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(24, 'Passat', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(25, 'Polo', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(26, 'Santana', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(27, 'Saveiro', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(28, 'Spacefox', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(29, 'Tiguan', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(30, 'Voyage', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(31, 'Brasilia', '987.638.2628-0002');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(32, 'Crossfox', '987.638.2628-0002');

--  Molodos da Ford
insert into modelo (cod, nome_modelo, cnpj_montadora)
values(33, 'Aerostar', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(34, 'Aspire', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(35, 'Ecosport', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(36, 'Edge', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(37, 'Explorer', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(38, 'F-150', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(39, 'F-250', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(40, 'F-100', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(41, 'Fiesta', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(42, 'Fusion', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(43, 'Focus', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(44, 'Ka', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(45, 'Mustang', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(46, 'Pampa', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(47, 'Ranger', '128.051.7550-0001');
insert into modelo(cod, nome_modelo, cnpj_montadora)
values(48, 'Focus', '128.051.7550-0001');



-- Criação da tabela de veículos
CREATE TABLE veiculo(
	chassi VARCHAR(18) PRIMARY KEY NOT NULL,

	cod_categoria_veiculo INT,
	cnpj_montadora VARCHAR(18),
	cod_modelo INT,
	
	FOREIGN KEY (cod_categoria_veiculo) REFERENCES categoria_veiculo (cod),
	FOREIGN KEY (cnpj_montadora) REFERENCES montadora (cnpj),
	FOREIGN KEY (cod_modelo) REFERENCES modelo (cod)
);

--  Inserindo Veiculos
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('9BWHE21JX24060960', 1, '873.745.4684-0007', 1); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('1CRHE21JX24061423', 1, '128.051.7550-0001', 33); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('2XRHE21JX24061423', 1, '987.638.2628-0002', 17); 

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('9RWHE21JX24060960', 1, '873.745.4684-0007', 2); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('1HTHE21JX24061423', 1, '128.051.7550-0001', 34); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('QCTHE11JX24061423', 1, '987.638.2628-0002', 18); 

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('9QEHE21JX24060960', 1, '873.745.4684-0007', 3); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('1QWHE21JX24061423', 1, '128.051.7550-0001', 35); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('RETHE11JX24061423', 1, '987.638.2628-0002', 19); 

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('9QEHE41JX16010060', 1, '873.745.4684-0007', 4); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('YQWHE21JX24061983', 1, '128.051.7550-0001', 36);
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('XETHE11JX24061013', 1, '987.638.2628-0002', 20); 

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('9QEHE41JX160100YU', 1, '873.745.4684-0007', 5); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('YQWHE21JX2406198R', 1, '128.051.7550-0001', 37); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('XETHE11JX2406101T', 1, '987.638.2628-0002', 21);

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('Q8EHE41JX160100YU', 1, '873.745.4684-0007', 6); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('Y13HE21JX2406198R', 1, '128.051.7550-0001', 38); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('B4T2E11JX2406101T', 1, '987.638.2628-0002', 22);

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('O8E4E41JX160100YU', 1, '873.745.4684-0007', 7); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('U138E21JX2406198R', 1, '128.051.7550-0001', 39); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('14T2E15JX2406101T', 1, '987.638.2628-0002', 23); 

insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('P3E4E41JX160100Y1', 1, '873.745.4684-0007', 8); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('B838E21JX24061983', 1, '128.051.7550-0001', 40); 
insert into veiculo (chassi, cod_categoria_veiculo, cnpj_montadora, cod_modelo)
values('F9T2E15JX24061012', 1, '987.638.2628-0002', 24);



-- Criação do evento compra
CREATE TABLE compra (
 	cod INT PRIMARY KEY NOT NULL,
 	valor_total_compra NUMERIC(10,2),
	compras_efetuadas INT,	 	
 	data_compra DATE,
 	
	matricula_funcionario INT,
	cnpj_montadora VARCHAR(18),

 	FOREIGN KEY (matricula_funcionario) REFERENCES funcionario (matricula),
 	FOREIGN KEY (cnpj_montadora) REFERENCES montadora (cnpj)
);

-- FORAM REALIZADAS 17 COMPRAS E  24 VEICULOS DE  DIVERSOS MODELOS E MONTADORAS FORAM ADIQUIRIDOS

-- 02 VEICULOS COMPRADOS por DELANO na FORD em 05/09/2022 modelo 33 e 34
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(1, 2020002641, '128.051.7550-0001', 2, 162000.00, '2022-09-05'); 
-- 01 VEICULO COMPRADO por RAFAEL na VOLKSWAGEM em 23/09/2022 modelo 17
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(2, 2021027823, '987.638.2628-0002', 1, 72000.00, '2022-09-23'); 

-- 01 VEICULOS COMPRADO por ANDERSON na CHEVROLET em 08/11/2022 modelo 1
-- 02 VEICULOS COMPRADOS por RAFAEL na FORD em 08/10/2022 modelo 35 e 36
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(3, 2022024648, '873.745.4684-0007', 1, 90000.00, '2022-10-08'); 
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(4, 2021027823, '128.051.7550-0001', 2, 167000.00,'2022-10-08'); 

-- 01 VEICULO COMPRADO por ANDERSON na CHEVROLET em 14/11/2022 modelo 2
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(5, 2022024648, '873.745.4684-0007', 1, 89100.00, '2022-11-14'); 
-- 01 VEICULO COMPRADO por RAFAEL na FORD em 14/11/2022 modelo 18
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(6, 2021027823, '128.051.7550-0001', 1, 72000.00,'2022-11-14'); 
-- 01 VEICULO COMPRADO por DELANO na CHEVROLET em 16/11/2022 modelo 3
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(7, 2020002641, '873.745.4684-0007', 1, 87000.00,'2022-11-16'); 

-- 01 VEICULO COMPRADO por DELANO na VOLKSWAGEM em 18/11/2022 modelo 19
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(8, 2020002641, '987.638.2628-0002', 2, 71000.00, '2022-11-28'); 
-- 01 VEICULO COMPRADO por DELANO na CHEVROLET em 18/11/2022 modelo 4
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(9, 2020002641, '873.745.4684-0007', 2, 80100.00, '2022-11-28'); 
-- 01 VEICULO COMPRADO por RAFAEL na VOLKSWAGEM em 18/11/2022 modelo 20
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(10, 2021027823, '987.638.2628-0002', 1, 72000.00,'2022-11-28'); 

-- 03 VEICULOS COMPRADOS por ANDERSON na FORD em 02/12/2022 modelo 37, 38 e 39
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(11, 2022024648, '128.051.7550-0001', 1, 234500.00, '2022-12-02'); 

-- 01 VEICULO COMPRADO por DELANO na CHEVROLET em 09/12/2022 modelo 5
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(12, 2020002641, '873.745.4684-0007', 2, 89100.00, '2022-12-09'); 
-- 01 VEICULO COMPRADO por DELANO na FORD em 09/12/2022 modelo 21
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(13, 2020002641, '987.638.2628-0002', 2, 70500.00, '2022-12-09'); 
-- 01 VEICULO COMPRADO por RAFAEL na CHEVROLET em 09/12/2022 modelo 6
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(14, 2021027823, '873.745.4684-0007', 1, 80500.00,'2022-12-09'); 

-- 03 VEICULOS COMPRADOS por RAFAEL na FORD em 12/12/2022 modelo 22, 23, 24
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(15, 2021027823, '987.638.2628-0002', 1, 245500.00, '2022-12-12'); 

-- 02 VEICULOS COMPRADO por ANDERSON na CHEVROLET em 13/12/2022 modelo 7 e 8
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(16, 2022024648, '873.745.4684-0007', 1, 181000.00, '2022-12-13'); 
-- 01 VEICULO COMPRADO por DELANO na FORD em 15/12/2022 modelo 40
insert into compra(cod, matricula_funcionario, cnpj_montadora, compras_efetuadas, valor_total_compra, data_compra)
values(17, 2020002641, '128.051.7550-0001', 2, 83500.00,'2022-12-15'); 



-- Criação da tabela item_comprado
CREATE TABLE item_comprado( 	
	cod INT PRIMARY KEY NOT NULL,
	valor_unitario_item_comprado NUMERIC(10,2), 	 	
	quantidade_item_comprado INT,	

	chassi_veiculo VARCHAR(18),	
	cod_compra INT,

	FOREIGN KEY(chassi_veiculo) REFERENCES veiculo(chassi),
	FOREIGN KEY(cod_compra) REFERENCES compra(cod)
);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(1, 81000.00, 1, '1CRHE21JX24061423', 1);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(2, 81000.00, 1, '1HTHE21JX24061423', 1);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(3, 72000.00, 1, '2XRHE21JX24061423', 2);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(4, 90000.00, 1, '9BWHE21JX24060960', 3);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(5, 83500.00, 1, '1QWHE21JX24061423', 4);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(6, 83500.00, 1, 'YQWHE21JX24061983', 4);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(7, 89100.00, 1, '9RWHE21JX24060960', 5);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(8, 72000.00, 1, 'QCTHE11JX24061423', 6);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(9, 87000.00, 1, '9QEHE21JX24060960', 7);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(10, 71000.00, 1, 'RETHE11JX24061423', 8);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(11, 80100.00, 1, '9QEHE41JX16010060', 9);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(12, 72000.00, 1, 'XETHE11JX24061013', 10);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(13, 80500.00, 1, 'YQWHE21JX2406198R', 11);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(14, 70500.00, 1, 'Y13HE21JX2406198R', 11);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(15, 83500.00, 1, 'U138E21JX2406198R', 11);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(16, 89100.00, 1, '9QEHE41JX160100YU', 12);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(17, 70500.00, 1, 'XETHE11JX2406101T', 13);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(18, 80500.00, 1, 'Q8EHE41JX160100YU', 14);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(19, 72500.00, 1, 'B4T2E11JX2406101T', 15);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(20, 86500.00, 1, '14T2E15JX2406101T', 15);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(21, 86500.00, 1, 'F9T2E15JX24061012', 15);

insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(22, 90500.00, 1, 'O8E4E41JX160100YU', 16);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(23, 90500.00, 1, 'P3E4E41JX160100Y1', 16);
insert into item_comprado(cod, valor_unitario_item_comprado, quantidade_item_comprado, chassi_veiculo, cod_compra)
values(24, 83500.00, 1, 'B838E21JX24061983', 17);



-- Criação da tabela cliente
CREATE TABLE cliente(
	cpf VARCHAR(14) PRIMARY KEY NOT NULL,
	nome_cliente VARCHAR(100),
    ultimo_nome_cliente VARCHAR(100)
);

-- Inserindo Clientes
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('785.034.785-00', 'Andressa', 'Lima');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('128.051.755-00', 'Delana', 'Nascionalidade');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('098.473.763-63', 'Faenala', 'Sameneses');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('001.654.389-87', 'Andressa', 'Delana');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('045.342.764-56', 'Lanna', 'Silva');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('087.542.124-55', 'Rafaela', 'Sameneses');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('252.534.785-00', 'Delano', 'Mole');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('058.971.755-00', 'Josélia', 'Sousa');
insert into cliente(cpf, nome_cliente, ultimo_nome_cliente)
values('448.473.763-63', 'Radêla', 'Vale');



-- Criação do evento venda
CREATE TABLE venda( 	
	cod INT PRIMARY KEY NOT NULL, 	
	valor_total_venda NUMERIC(10,2) , 		 	
	vendas_efetuadas INT,	
	data_venda DATE, 	

	cod_caixa INT,
	matricula_funcionario INT,
	cpf_cliente VARCHAR(14),


	FOREIGN KEY (cod_caixa) REFERENCES caixa(cod), 	
	FOREIGN KEY (matricula_funcionario) REFERENCES funcionario (matricula),	
	FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf) 	
);

-- FORAM REALIZADAS 6 VENDAS e 24 veiculos foram vendidos

-- VENDA DOS MODELOS 01, 33, 17 e 02
INSERT INTO venda(cod, cod_caixa, matricula_funcionario, cpf_cliente, valor_total_venda, vendas_efetuadas, data_venda)
VALUES(1, 1, 2020002641, '785.034.785-00', (90000.00*1.18 + 81000.00*1.18 + 72000.00*1.18 + 89100.00*1.18), 4, '2022-12-11');
-- VENDA DOS MODELOS 34, 18, 03 e 35
INSERT INTO venda(cod, cod_caixa, matricula_funcionario, cpf_cliente, valor_total_venda, vendas_efetuadas, data_venda)
VALUES(2, 1, 2022024648, '128.051.755-00', (81000.00*1.18 + 72000.00*1.18 + 87000.00*1.18 + 83500.00*1.18), 4, '2022-12-21');
-- VENDA DOS MODELOS 19, 04, 36 e 20
INSERT INTO venda(cod, cod_caixa, matricula_funcionario, cpf_cliente, valor_total_venda, vendas_efetuadas, data_venda)
VALUES(3, 2, 2021027823, '098.473.763-63', (71000.00*1.18 + 80100.00*1.18 + 83500.00*1.18 + 72000.00*1.18), 4, '2022-12-23');
-- VENDA DOS MODELOS 05, 37, 21 e 06
INSERT INTO venda(cod, cod_caixa, matricula_funcionario, cpf_cliente, valor_total_venda, vendas_efetuadas, data_venda)
VALUES(4, 2, 2021027823, '001.654.389-87', (89100.00*1.18 + 80500.00*1.18 + 70500.00*1.18 + 80500.00*1.18), 4, '2022-12-26');
-- VENDA DOS MODELOS 38, 22, 07, 39
INSERT INTO venda(cod, cod_caixa, matricula_funcionario, cpf_cliente, valor_total_venda, vendas_efetuadas, data_venda)
VALUES(5, 3, 2022024648, '087.542.124-55', (70500.00*1.18 + 72500.00*1.18 + 90500.00*1.18 + 83500.00*1.18), 4, '2022-12-27');
-- VENDA DOS MODELOS 23, 08, 40, 24
INSERT INTO venda(cod, cod_caixa, matricula_funcionario, cpf_cliente, valor_total_venda, vendas_efetuadas, data_venda)
VALUES(6, 3, 2020002641, '252.534.785-00', (86500.00*1.18 + 90500.00*1.18 + 83500.00*1.18 + 80500.00*1.18), 4, '2022-12-29');



-- Criação da tabela item_vendido
CREATE TABLE item_vendido( 	
	cod INT PRIMARY KEY NOT NULL, 	
	valor_unitario_item_vendido NUMERIC(10,2), 	
	quantidade_item_vendido int,	
	
	chassi_veiculo VARCHAR(18),	
	cod_venda INT,

	FOREIGN KEY(chassi_veiculo) REFERENCES veiculo(chassi),
	FOREIGN KEY(cod_venda) REFERENCES venda(cod)
);
-- VENDA DO MODELO 01
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(1, 90000.00*1.18, 1, '9BWHE21JX24060960', 1);
-- VENDA DO MODELO 33
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(2, 81000.00*1.18, 1, '1CRHE21JX24061423', 1);
-- VENDA DO MODELO 17
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(3, 72000*1.18, 1, '2XRHE21JX24061423', 1);
-- VENDA DO MODELO 02
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(4, 89100*1.18, 1, '9RWHE21JX24060960', 1);

-- VENDA DO MODELO 34
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(5, 81000.00*1.18, 1, '1HTHE21JX24061423', 2);
-- VENDA DO MODELO 18
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(6, 72000.00*1.18, 1, 'QCTHE11JX24061423', 2);
-- VENDA DO MODELO 03
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(7, 87000.00*1.18, 1, '9QEHE21JX24060960', 2);
-- VENDA DO MODELO 35
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(8, 83500.00*1.18, 1, '1QWHE21JX24061423', 2);

-- VENDA DO MODELO 19
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(9, 71000.00*1.18, 1, 'RETHE11JX24061423', 3);
-- VENDA DO MODELO 04
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(10, 80100.00*1.18, 1, '9QEHE41JX16010060', 3);
-- VENDA DO MODELO 36
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(11, 83500.00*1.18, 1, 'YQWHE21JX24061983', 3);
-- VENDA DO MODELO 20
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(12, 72000.00*1.18, 1, 'XETHE11JX24061013', 3);

-- VENDA DO MODELO 05
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(13, 89100.00*1.18, 1, '9QEHE41JX160100YU', 4);
-- VENDA DO MODELO 37
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(14, 80500.00*1.18, 1, 'YQWHE21JX2406198R', 4);
-- VENDA DO MODELO 21
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(15, 70500.00*1.18, 1, 'XETHE11JX2406101T', 4);
-- VENDA DO MODELO 06
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(16, 80500.00*1.18, 1, 'Q8EHE41JX160100YU', 4);

-- VENDA DO MODELO 38
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(17, 70500.00*1.18, 1, 'Y13HE21JX2406198R', 5);
-- VENDA DO MODELO 22
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(18, 72500.00*1.18, 1, 'B4T2E11JX2406101T', 5);
-- VENDA DO MODELO 07
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(19, 90500.00*1.18, 1, 'O8E4E41JX160100YU', 5);
-- VENDA DO MODELO 39
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(20, 83500.00*1.18, 1, 'U138E21JX2406198R', 5);

-- VENDA DO MODELO 23
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(21, 86500.00*1.18, 1, '14T2E15JX2406101T', 6);
-- VENDA DO MODELO 08
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(22, 90500.00*1.18, 1, 'P3E4E41JX160100Y1', 6);
-- VENDA DO MODELO 40
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(23, 83500.00*1.18, 1, 'B838E21JX24061983', 6);
-- VENDA DO MODELO 24
INSERT INTO item_vendido(cod, valor_unitario_item_vendido, quantidade_item_vendido,  chassi_veiculo, cod_venda)
VALUES(24, 80500.00*1.18, 1, 'F9T2E15JX24061012', 6);



-- Criação da tabela endereco_cliente
CREATE TABLE endereco_cliente(
	logradouro VARCHAR(100),
	bairro VARCHAR(100),
	cidade VARCHAR(100),
	estado VARCHAR(100),

	cpf_cliente VARCHAR(16),

	FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf)
);

-- Inserindo Endereço dos Clientes
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('A-65 (Cj Benedito Bentes I)', 'Benedito Bentes', 'Maceió', 'AL', '785.034.785-00');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('Projetada 65', 'Morro do Tiro', 'Floriano', 'PI', '128.051.755-00');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('SB 65', 'Residencial São Bernardo II', 'Trindade','GO', '098.473.763-63');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('Joaquim Dias Guemarães', 'São francisco', 'Guanambi', 'RJ', '001.654.389-87');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('01-65 (Canto do Mar-2ªEt B1-St3)', 'Guarajuba (Monte Gordo)', 'Camaçari', 'BA','045.342.764-56');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('Vasco da Gama', 'Paraiso', 'Guanambi', 'RJ','087.542.124-55');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('João Gualberto Filho', 'Sagrada Família', 'Belo Horizonte', 'MG', '252.534.785-00');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('Das Primaveras', 'Jardim Jacarandás', 'Sinop', 'MT', '058.971.755-00');
insert into endereco_cliente(logradouro, bairro, cidade, estado, cpf_cliente)
values('Professor Oscar Rodarte', 'Santa Terezinha	', 'Patrocínio', 'MG', '448.473.763-63');



-- Criação da tabela endereco_montadora
CREATE TABLE endereco_montadora(
	logradouro VARCHAR(100),
	bairro VARCHAR(100),
	cidade VARCHAR(100),
	estado VARCHAR(100),

	cnpj_montadora VARCHAR(18),

	FOREIGN KEY (cnpj_montadora) REFERENCES montadora (cnpj)
);

-- Inserindo Endereço dos Montadora
insert into endereco_montadora(logradouro, bairro, cidade, estado, cnpj_montadora)
values('Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', '128.051.7550-0001');
insert into endereco_montadora(logradouro, bairro, cidade, estado, cnpj_montadora)
values('Espírito Santo', 'Jardim Santa Rita', 'Fernandópolis', 'SP', '987.638.2628-0002');
insert into endereco_montadora(logradouro, bairro, cidade, estado, cnpj_montadora)
values('São Vicente', 'Parque São Pedro', 'Ji-Paraná', 'RO', '873.745.4684-0007');



-- Criação da tabela telefone_cliente
CREATE TABLE telefone_cliente(
   	numero_telefone VARCHAR(15),
	descricao_telefone VARCHAR(100),

   	cpf_cliente VARCHAR(14),
   	
	FOREIGN KEY(cpf_cliente) REFERENCES cliente (cpf)
 );

-- Inserindo Telefones de Cliente
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)988984888', 'Celular Pessoal', '785.034.785-00');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)981523691', 'Celular Pessoal', '128.051.755-00');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)981578423', 'Celular Pessoal', '098.473.763-63');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)999897878', 'Celular Pessoal', '001.654.389-87');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)991523699', 'Celular Pessoal', '045.342.764-56');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)985214521', 'Celular Pessoal', '087.542.124-55');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)951597888', 'Celular Pessoal', '252.534.785-00');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)914815691', 'Celular Pessoal', '058.971.755-00');
insert into telefone_cliente(numero_telefone, descricao_telefone, cpf_cliente)
values('(98)984478423', 'Celular Pessoal', '448.473.763-63');



-- Criação da tabela telefone_montadora
CREATE TABLE telefone_montadora(
   	numero_telefone VARCHAR(15),
	descricao_telefone VARCHAR(100),

   	cnpj_montadora VARCHAR(18),

	FOREIGN KEY (cnpj_montadora) REFERENCES montadora (cnpj)
 );

-- Inserindo Telefones de Montadora
insert into telefone_montadora(numero_telefone, descricao_telefone, cnpj_montadora)
values('(98)978521452', 'Celular Empresa', '128.051.7550-0001');
insert into telefone_montadora(numero_telefone, descricao_telefone, cnpj_montadora)
values('(98)978430178', 'Celular Empresa', '987.638.2628-0002');
insert into telefone_montadora(numero_telefone, descricao_telefone, cnpj_montadora)
values('(98)979033432', 'Celular Empresa', '873.745.4684-0007');




-- Criação da tabela pagamento_venda
CREATE TABLE pagamento_venda(
	valor_da_venda NUMERIC(10,2),
	valor_pago NUMERIC(10,2),
	data_pagamento_venda DATE,
	
	cod_venda INT,
	cod_forma_pagamento INT,
	

	FOREIGN KEY (cod_venda) REFERENCES venda(cod),
	FOREIGN KEY (cod_forma_pagamento) REFERENCES forma_pagamento(cod)
);

INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(90000.00*1.18, 90000.00*1.18*1.10, '2022-12-12', 1, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(81000.00*1.18, 81000.00*1.18*1.10, '2022-12-12', 1, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(72000.00*1.18, 72000.00*1.18*1.10, '2022-12-12', 1, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(89100.00*1.18, 89100.00*1.18*1.10, '2022-12-12', 1, 1);

INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(89100.00*1.18, 89100.00*1.18*0.90, '2022-12-21', 2, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(72000.00*1.18, 72000.00*1.18*0.90, '2022-12-22', 2, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(87000.00*1.18, 87000.00*1.18*0.90, '2022-12-21', 2, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(83500.00*1.18, 83500.00*1.18*0.90, '2022-12-21', 2, 2);

INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(71000.00*1.18, 71000.00*1.18*1.10, '2022-12-24', 3, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(80100.00*1.18, 80100.00*1.18*1.10, '2022-12-24', 3, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(83500.00*1.18, 83500.00*1.18*1.10, '2022-12-24', 3, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(72000.00*1.18, 72000.00*1.18*1.10, '2022-12-24', 3, 1);

INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(89100.00*1.18, 89100.00*1.18*0.90, '2022-12-26', 4, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(80500.00*1.18, 80500.00*1.18*0.90, '2022-12-26', 4, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(70500.00*1.18, 70500.00*1.18*0.90, '2022-12-26', 4, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(80500.00*1.18, 80500.00*1.18*0.90, '2022-12-26', 4, 2);

INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(70500.00*1.18, 70500.00*1.18*0.90, '2022-12-27', 5, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(72500.00*1.18, 72500.00*1.18*0.90, '2022-12-27', 5, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(90500.00*1.18, 90500.00*1.18*0.90, '2022-12-27', 5, 2);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(83500.00*1.18, 83500.00*1.18*0.90, '2022-12-27', 5, 2);

INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(86500.00*1.18, 86500.00*1.18*1.10, '2022-12-30', 6, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(90500.00*1.18, 90500.00*1.18*1.10, '2022-12-30', 6, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(83500.00*1.18, 83500.00*1.18*1.10, '2022-12-30', 6, 1);
INSERT INTO pagamento_venda(valor_da_venda, valor_pago, data_pagamento_venda, cod_venda, cod_forma_pagamento)
VALUES(80500.00*1.18, 80500.00*1.18*1.10, '2022-12-30', 6, 1);



-- Criação da tabela pagamento_compra
CREATE TABLE pagamento_compra(
	valor_da_compra NUMERIC(10,2),
	valor_pago NUMERIC(10,2),
	data_pagamento_compra DATE,
   	
	cod_compra INT,
   	cod_forma_pagamento INT,
	
   	FOREIGN KEY (cod_compra) REFERENCES compra(cod),
   	FOREIGN KEY (cod_forma_pagamento) REFERENCES forma_pagamento(cod)
 );

-- 5% de aumento se a forma de pagamento envolver cartão de credito ou seja cod_forma_pagamento = 1
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(162000.00, 162000.00*1.1, '2022-09-06', 1, 1);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(72000.00, 72000.00*0.9, '2022-09-23', 2, 2);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(90000.00, 90000.00*0.9, '2022-10-08', 3, 2);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(167000.00, 167000.00*0.9, '2022-10-08', 4, 2);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(89000.00, 89000.00*1.1, '2022-11-15', 5, 1);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(72000.00, 72000.00*0.9, '2022-11-14', 6, 2);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(87000.00, 87000.00*1.1, '2022-11-17', 7, 1);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(71000.00, 71000.00*1.1, '2022-11-29', 8, 1);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(80100.00, 80100.00*0.9, '2022-11-28', 9, 2);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(72000.00, 72000.00*1.1, '2022-11-29', 10, 1);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(234500.00, 234500.00*0.9, '2022-12-02', 11, 2);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(89100.00, 89100.00*0.9, '2022-12-09', 12, 2);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(70500.00, 70500.00*1.1, '2022-12-10', 13, 1);
insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(80500.00, 80500.00*1.1, '2022-12-10', 14, 1);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(245500.00, 245500.00*0.9, '2022-12-12', 15, 2);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(181000.00, 181000.00*0.9, '2022-12-13', 16, 2);

insert into pagamento_compra(valor_da_compra, valor_pago, data_pagamento_compra, cod_compra, cod_forma_pagamento)
values(83500.00, 83500.00*1.1, '2022-12-17', 17, 1);




