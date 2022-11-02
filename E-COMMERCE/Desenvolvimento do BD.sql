/* BANCO DE DADOS MY SQL E-COMMERCE */

CREATE database ecommerce;

USE ecommerce;

/* CRIAR TABELAS */

/* CLIENTE */
CREATE TABLE dms_cliente(
		idcliente int auto_increment PRIMARY KEY,
		nome varchar(45),
		endereco varchar(45),
		cpf_cnpj char(45) NOT NULL,
		email varchar (45),
		celular varchar (45),
		data_nascimento date,
		CONSTRAINT unique_cpf_cnpj_cliente UNIQUE (cpf_cnpj)
);

/* PRODUTO */
CREATE TABLE fact_produto(
		idproduto int auto_incremet PRIMARY KEY,
		descricao varchar(45) NOT NULL,
		linha enum('Eletrônicos','Móveis','Roupas','Brinquedos','Instrumentos Musicais'),
		valor double
);

/* PEDIDO */
CREATE TABLE fact_pedido(
		idpedido int auto_increment PRIMARY KEY,
		cod_pedido varchar(45),
		status_pedido enum('Cancelado','Em andamento','Concluído','Não Iniciado')
		frete double
);

/* PAGAMENTO */
CREATE TABLE dms_pagamento(
		idpagamento int auto_increment PRIMARY KEY,
		tipo_pagamento varchar(45)
);

/* TRANSPORTADORA */
CREATE TABLE dms_transportadora(
		idtransportadora int auto_increment PRIMARY KEY,
		descricao varchar(45),
		cnpj varchar(45),
		email varchar(45),
		celular varchar(45)
        CONSTRAINT unique_cnpj_transportadora UNIQUE (cnpj)
);

/* ENTREGA */
CREATE TABLE fact_entrega(
		identrega int auto_increment PRIMARY KEY,
		cod_rastreio varchar(45),
		status enum('Cancelada','Entregue','Em andamento','Despachado'),
		valor double
);

/* FORNECEDOR */
CREATE TABLE dms_fornecedor(
		idfornecedor int auto_increment PRIMARY KEY,
		descricao varchar(45),
		cpf_cnpj varchar(45),
		email varchar(45),
		celular varchar(45)
        CONSTRAINT unique_cpf_cnpj_fornecedor UNIQUE (cpf_cnpj)
);

/* VENDEDOR */
CREATE TABLE dms_vendedor(
		idvendedor int auto_increment PRIMARY KEY,
		descricao varchar(45),
		cpf_cnpj varchar(45),
		email varchar(45),
		celular varchar(45)
        CONSTRAINT unique_cpf_cnpj_vendedor UNIQUE (cpf_cnpj)
);

/* ESTOQUE */
CREATE TABLE fact_estoque(
		idestoque int auto_increment PRIMARY KEY,
		nome varchar(45),
		valor double
);