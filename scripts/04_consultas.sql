-- Active: 1781128334869@@127.0.0.1@3307@techfactory_db
--1)
Select nome_departamento from departamentos;

--2)
Select nome_colaborador,cargo,email_corporativo from colaborador;

--3)
Select patrimonio,descricao,fabricante from equipamentos;

--4)
Select descricao,status_equipamento from equipamentos;

--5)
Select nome_colaborador, data_adimissao from colaborador
where data_adimissao > '2009/01/20';

--6)
Select nome_equipamento,data_aquisicao from equipamentos
where data_aquisicao > '2009/01/20';

--7)
SELECT razao_social from fornecedor
where cidade_fornecedor = 'Mafra'

--8)
Select id_equipamento,nome_equipamento,nome_categoria from categoria,equipamentos
join 

--9)
Select nome_colaborador from colaborador
where cargo = 'Operador';

--10)
SELECT razao_social from fornecedor
where telefone_fornecedor is not null;

--11)
Select nome_equipamento,descricao from equipamentos
where descricao like '%a%';

--12)
Select descricao_chamado,data_abertura,data_encerramento from chamado
where status_chamado = 'Finalizado';

--13)
Select descricao_chamado,id_colaborador from chamado
where prioridade = 'Alta';

--14)
Select nome_equipamento,id_equipamento,descricao from equipamentos
order by descricao ASC;

--15)
