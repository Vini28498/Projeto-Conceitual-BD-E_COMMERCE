/* BANCO DE DADOS MY SQL OFICINA*/

CREATE database oficina;

USE oficina;

/* CRIAR TABELAS */

/* PRODUTO_VEICULO */
CREATE TABLE dms_produto_veiculo(
	idproduto_veiculo int auto_increment PRIMARY KEY,
	tipo_veiculo varchar(45),
    descricao varchar(45),
    ano int NOT NULL,
    placa varchar (45),
    celular varchar (45),
);

/* COLABORADOR */
CREATE TABLE dms_colaborador(
	idcolaborador int auto_increment PRIMARY KEY,
	nome varchar(45),
    cargo varchar(45),,
    cpf_cnpj varchar (45),
    endereco varchar (45),
    email varchar(45),
    celular varchar (45),
    CONSTRAINT unique_cpf_cnpj_colaborador UNIQUE (cpf_cnpj)
);

/* EQUIPES */
CREATE TABLE dms_equipes(
	idequipes int auto_increment PRIMARY KEY,
	lider varchar(45),
	quantd int,
	tipo_servico varchar(45)
);

/* ORDEM DE SERVIÇO */
CREATE TABLE fact_ordem_servico(
	idordem_servico int auto_increment PRIMARY KEY,
	numero_os varchar(45),
	data_emissao date,
	orcamento double,
	data_fim date,
	status enum('Concluído','Em andamento', 'Não iniciado')
);

/* CLIENTE */
CREATE TABLE dms_cliente(
	idcliente int auto_increment PRIMARY KEY,
	nome varchar(45),
	cpf_cnpj varchar (45),
	endereco varchar (45),
    email varchar(45),
    celular varchar (45),
    CONSTRAINT unique_cpf_cnpj_cliente UNIQUE (cpf_cnpj)
);

/* PREÇOS */
CREATE TABLE fact_preco(
	idpreco int auto_increment PRIMARY KEY,
	tipo_servico varchar(45),
	peca varchar (45),
	quantd_pecas int,
	valor_mao_obra double,
	valor_pecas double,
	valor_total double
);

/* ORÇAMENTO */
CREATE TABLE fact_orcamento(
	idorcamento int auto_increment PRIMARY KEY,
	aprovacao tinyint,
	data_emissao date,
	valor double,
	validade date,
);

/* ESTOQUE */
CREATE TABLE fact_estoque(
	idestoque int auto_increment PRIMARY KEY,
	descricao varchar (45),
	quantidade int,
	valor_unitario double
);