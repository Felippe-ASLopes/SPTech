use sprint2;

create table album (
idAlbum int primary key auto_increment,
nome varchar (30),
tipo varchar (10),
dtLancamento date,
constraint chkTipo 
check (tipo in ('digital', 'físico')));

create table musica (
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar (40),
genero varchar (40),
fkAlbum int,
constraint fkMusicaAlbum foreign key (fkAlbum)
references album(idAlbum)) auto_increment = 0;

insert into album (nome, tipo, dtLancamento) values
('Heresia', 'Digital', '2017-03-13'),
('Damn', 'Físico', '2017-04-14');

insert into musica (titulo, artista, genero, fkalbum) values
('O mundo é nosso', 'Djonga', 'Rap', 1),
('Santa ceia', 'Djonga', 'Rap', 1),
('Humble', 'Kendrick Lamar', 'Rap', 2);

select * from musica;

select * from album;

select * from musica join album
on fkAlbum = idAlbum;

select titulo, nome from musica join album
on fkAlbum = idAlbum;

select * from musica join album
on fkAlbum = idAlbum
where genero = 'Rap';