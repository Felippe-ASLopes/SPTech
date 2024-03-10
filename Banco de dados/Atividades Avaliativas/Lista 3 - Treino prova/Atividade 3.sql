use sprint1;

create table restaurante(
idRest int primary key auto_increment,
nome varchar (40),
cep char (9),
tipo varchar(30));

insert into restaurante (nome, cep, tipo) values
("McDonalds", "123456789", "Fast-food"),
("Burguer King", "987654321", "Fast-food"),
("Pizza Hut", "101112131", "Pizzaria"),
("Vip Sushi", "999999090", "Japonesa"),
("Subway", "010203040", "Fast-food");

alter table restaurante
modify column tipo varchar (50);

select * from restaurante;
select nome, tipo from restaurante;
select * from restaurante where tipo like "fast-food";
select * from restaurante where cep like "987654321";
select * from restaurante order by nome;
select * from restaurante order by tipo desc;
select * from restaurante where nome like "b%";
select * from restaurante where cep like "%1";
select * from restaurante where tipo like "_a%";
select * from restaurante where nome like "%s";

update restaurante
set cep = "000000001"
where idRest = 1;

select * from restaurante;

delete from restaurante
where idRest = 1;

select * from restaurante;

drop table 	restaurante;