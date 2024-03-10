use sprint1;

create table carro(
idCarro int primary key auto_increment,
nome varchar (70),
placa char (7),
marca varchar (20));

insert into carro (nome, placa, marca) values
("Civic", "ABC1D23", "Honda"),
("Golf", "EFG4H56", "Volkswagem"),
("350z", "AAA1B23", "Nissan"),
("Skyline", "ZZZ0Y88", "Nissan"),
("Corsa", "BBB1H30", "Chevrolet");

alter table carro
modify column marca varchar (40);

select * from carro;
select nome, placa from carro;
select * from carro where marca = "nissan";
select * from carro where placa = "abc1d23";
select * from carro order by marca;
select * from carro order by nome desc;
select * from carro where nome like "%z";
select * from carro where marca like "v%";
select * from carro where placa like "_b%";
select * from carro where nome like "%0_";

update carro
set placa = "XYZ5X89"
where idCarro = 2;

select * from carro;

delete from carro
where idCarro = 5;

drop table carro;