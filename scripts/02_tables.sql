-- Active: 1781128334869@@127.0.0.1@3307@techfactory_db
use DATABASE techfactory_db;
DROP TABLE departamentos;
CREATE TABLE departamentos(
id_departamento int auto_increment PRIMARY KEY,
nome_departamento VARCHAR(100) not null unique,
local_departamento VARCHAR(20) not null
);

DROP TABLE equipamentos;
CREATE TABLE equipamentos(
id_equipamento int AUTO_INCREMENT PRIMARY KEY,
nome_equipamento VARCHAR(20) not null,
patrimonio varchar(50) not null,
descricao varchar(20),
fabricante VARCHAR(20) not null,
modelo varchar(20) not null,
data_aquisicao date not null,
status_equipamento varchar(20) not null
);
DROP TABLE colaborador;
CREATE TABLE colaborador(
id_colaborador int AUTO_INCREMENT PRIMARY KEY,
nome_colaborador varchar(20) not null,
cpf char(11) not null unique,
email_corporativo VARCHAR(40) not null unique,
cargo VARCHAR(20) not null,
data_adimissao DATE not null,
id_equipamento int,
Foreign Key (id_equipamento) REFERENCES equipamentos(id_equipamento),
id_departamento int,
Foreign Key (id_departamento) REFERENCES departamentos(id_departamento)
);
DROP TABLE categoria;
create table categoria(
id_categoria int AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(20) not null,
id_equipamento int,
Foreign Key (id_equipamento) REFERENCES equipamentos(id_equipamento)
);
DROP TABLE fornecedor;

CREATE TABLE fornecedor(
id_fornecedor int AUTO_INCREMENT PRIMARY KEY,
razao_social varchar(20) not null,
cnpj char(14) not null unique,
telefone_fornecedor char(11) not null,
cidade_fornecedor varchar(20)not null,
id_equipamento int,
Foreign Key (id_equipamento) REFERENCES equipamentos(id_equipamento)
);
DROP TABLE manutencao;
CREATE table manutencao(
id_manutencao int AUTO_INCREMENT PRIMARY KEY,
data_manutencao date not null,
descricao_servico varchar(20) not null,
tempo_manutencao varchar(100) not null,
custo_manutencao FLOAT not null
);
DROP TABLE chamado;
CREATE TABLE chamado(
numero_do_chamado int AUTO_INCREMENT PRIMARY KEY,
data_abertura TIME not null,
descricao_chamado varchar(100) not null,
status_chamado varchar(20) not null,
data_encerramento TIME,
prioridade varchar(10) not null,
id_colaborador int,
Foreign Key (id_colaborador) REFERENCES colaborador(id_colaborador),
id_equipamento int,
Foreign Key (id_equipamento) REFERENCES equipamentos(id_equipamento),
id_manutencao int,
Foreign Key (id_manutencao) REFERENCES manutencao(id_manutencao)
);