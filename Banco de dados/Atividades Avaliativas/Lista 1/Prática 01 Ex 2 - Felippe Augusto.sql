USE sprint1;

CREATE TABLE musica (
idMusica INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (40),
artista VARCHAR (40),
genero VARCHAR (40)
);

INSERT INTO musica (titulo, artista, genero) VALUES
('O mundo é nosso', 'Djonga', 'Rap'),
('Penumbra', 'Djonga', 'Rap'),
('Humble', 'Kendrick Lamar', 'Rap'),
('Lonely', 'Akon', 'Hip Hop'),
('Patricinha de olho azul', 'Bom Gosto', 'Pagode'),
('Camisa 10', 'Turma do pagode', 'Pagode'),
('Não deixe o samba morrer', 'Alcione', 'Samba'),
('Glamourosa', 'MC Marcinho', 'Funk');

SELECT * FROM musica;

SELECT titulo, artista FROM musica;

SELECT * FROM musica WHERE genero = 'rap';

SELECT * FROM musica WHERE artista = 'Djonga';

SELECT * FROM musica ORDER BY titulo;

SELECT * FROM musica ORDER BY artista DESC;

SELECT * FROM musica WHERE titulo LIKE 'p%';

SELECT * FROM musica WHERE artista LIKE '%o';

SELECT * FROM musica WHERE genero LIKE '_a%';

SELECT * FROM musica WHERE titulo LIKE '%s_';

DROP TABLE musica;