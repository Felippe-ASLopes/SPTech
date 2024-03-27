use adsa;

create table empresa (
idEmpresa int primary key auto_increment,
nome varchar(45),
responsavel varchar(45));

insert into empresa values
(default, "Stefanini", 'Daniela'),
(default, 'C6Bank', 'Vanessa');

create table aluno(
ra char(8) primary key,
nome varchar (45),
bairro varchar(45),
fkEmpresa int,
constraint fkAlunoEmpresa foreign key (fkEmpresa)
references empresa(idEmpresa));

describe aluno;

insert into aluno values
('01241999', 'Walter', 'Consolação', 1),
('01241998', 'Jesse', 'Paraíso', 1),
('01241997', 'Gus', 'Trianon MASP', 2);

select * from aluno;

-- primeiro join
-- todo join tem on;

select * from empresa JOIN aluno
on idEmpresa = fkEmpresa;

select aluno.nome, empresa.nome from aluno
join empresa on idEmpresa = fkEmpresa;

-- testando AS
select aluno.nome as 'Nome do aluno', empresa.nome as nomeEmpresa from aluno
join empresa on idEmpresa = fkEmpresa;

-- comando ideal (prof)
select a.nome as NomeAluno,
e.nome as NomeEmpresa
from aluno as a join empresa as e
on a.fkEmpresa = e.idEmpresa;