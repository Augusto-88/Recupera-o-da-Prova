-- Active: 1781128334869@@127.0.0.1@3307@techfactory_db


insert into departamentos(nome_departamento,local_departamento)
VALUES
('Produção','Bloco 2'),
('Engenharia','Bloco 1'),
('Qualidade','Bloco 3'),
('Logística','Bloco 4'),
('Tecnologia da informação','Bloco 5')


INSERT INTO equipamentos(nome_equipamento,patrimonio,descricao,fabricante,modelo,data_aquisicao,status_equipamento)
VALUES
('Computadores','1234216544742617','Público','CompBR','A-150','2009/12/20','Funcionando'),
('Notebook','1324gh2c54264','Público','CompNOTE','A-350','2004/12/20','Funcionando'),
('Servidores','gdhgc4hg1245f2','Privado','CompSERV','S-150','2009/11/10','Funcionando'),
('Impressoras','yh532325321h5v','Público','CompIMP','b-140','1999/12/20','Funcionando'),
('Switches','fvh4742617','Público','CompSWI','s-550','2026/06/10','Funcionando');


insert into colaborador(nome_colaborador,cpf,email_corporativo,cargo,data_adimissao,id_equipamento,id_departamento)
VALUES
('Jonas','12345678910','oi@gmail.com','Operador','2008/03/20',4,5),
('Jonão','12345678911','tchau@gmail.com','Operador','2009/03/20',3,2),
('Konan','12345678912','trabalho@gmail.com','Operador','2020/03/20',1,3),
('Marta','22345678910','meu@gmail.com','Operador','2011/03/20',3,5),
('Jonas','12245678910','trab@gmail.com','Operador','2008/07/20',2,4);

INSERT into categoria(nome_categoria,id_equipamento)
VALUES
('Computação',1),
('Mobilidade',2),
('Servidores',3),
('Impressão',4),
('Rede',5);

INSERT INTO fornecedor(razao_social,cnpj,telefone_fornecedor,cidade_fornecedor,id_equipamento)
VALUES
('CompBR',12345678910111,47989741376,'Timbó',1),
('CompNOTE',12345678910122,47949741376,'Curitiba',2),
('CompSERV',22345678910111,47988741376,'Salvador',3),
('CompIMP',12345678910121,47989541376,'Rio Negro',4),
('CompSWI',12345678914511,47989241376,'Mafra',5);


insert into manutencao(data_manutencao,descricao_servico,tempo_manutencao,custo_manutencao)
VALUES
('2019/11/02','Troca de óleo','30 minutos','120.00'),
('2019/11/22','Troca de parafuso','3 horas','220.00'),
('2019/12/02','Troca de carcaça','30 horas','1200.00'),
('2018/11/02','Troca de componente','50 minutos','600.00'),
('2009/01/02','Troca de cor','10 minutos','12.00');



insert into chamado (data_abertura,descricao_chamado,status_chamado,data_encerramento,id_colaborador,id_equipamento,id_manutencao,prioridade)
VALUES
('13:45:26','Parou do nada','Finalizado','2019/12/20 - 13:55:30',1,1,1,'Alta'),
('15:45:26','Pegou fogo','Finalizado','2019/12/21 - 17:55:30',2,2,2,'Baixa'),
('03:45:26','Não liga','Finalizado','2019/10/20 - 04:55:30',3,3,3,'Média'),
('17:25:26','Está fazendo muito barulho','Finalizado','2020/12/20 - 18:55:30',4,4,4,'Alta'),
('10:46:26','Não gostei da cor','Finalizado','2026/12/20 - 20:55:30',5,5,5,'Alta');


