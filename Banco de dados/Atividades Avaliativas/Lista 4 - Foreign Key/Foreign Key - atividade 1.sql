create database sprint2;
use sprint2;

create table atleta (
idAtleta int primary key auto_increment,
nome varchar (40),
modalidade varchar (40),
qtdMedalhas int
);

INSERT INTO atleta (nome, modalidade, qtdmedalhas) VALUES
('Lebron James', 'Basquete', 5),
('Lewis Hamilton', 'Automobilismo', 7),
('Michael Phelps', 'Natação', 28),
('Usain Bolt', 'Atletismo', 8),
('Cristiano Ronaldo', 'Futebol', 34);

create table pais (
idPais int primary key auto_increment,
nome varchar (30),
capital varchar (40)
);

insert into pais (nome, capital) values
('USA', 'Washington'),
('Portugal', 'Lisboa'),
('Inglaterra', 'Londres'),
('Jamaica', 'Kingston');

alter table atleta
add column fkPais int;

alter table atleta
add constraint fkAtletaPais foreign key (fkPais)
references pais(idPais);

update atleta
set fkPais = 1
where idAtleta in (1, 3);

update atleta
set fkPais = 2
where idAtleta = 5;

update atleta
set fkPais = 3
where idAtleta = 2;

update atleta
set fkPais = 4
where idAtleta = 4;

select * from atleta join pais
on fkPais = idPais;

select atleta.nome, pais.nome from atleta join pais
on idPais = fkPais;

select * from atleta join pais
on fkPais = idPais
where capital = 'Washington';