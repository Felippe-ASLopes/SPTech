create database sprint1;
use sprint1;

CREATE TABLE serie (
idSerie INT PRIMARY KEY AUTO_INCREMENT,
nome varchar (40),
qtdTemporadas int,
status varchar (40)
)auto_increment = 100;

alter table serie
add constraint chkStatus
check (status in("em andamento", "finalizada", "não assistida"));

insert into serie (nome, qtdTemporadas, status) values
("Game Of Thrones", 8, "Finalizada"),
("The Walking Dead", 11, "Em andamento"),
("Breaking Bad", 5, "Finalizada"),
("Peaky Blinders", 6, "Não assistida");

select * from serie;