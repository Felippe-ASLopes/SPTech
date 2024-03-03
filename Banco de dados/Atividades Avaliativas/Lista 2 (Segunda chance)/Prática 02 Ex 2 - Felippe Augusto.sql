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

ALTER TABLE musica
ADD COLUMN curtidas INT;

UPDATE musica
SET curtidas = 10
WHERE idMusica = 1;

UPDATE musica
SET curtidas = 9
WHERE idMusica = 2;

UPDATE musica
SET curtidas = 15
WHERE idMusica = 3;

UPDATE musica
SET curtidas = 8
WHERE idMusica = 4;

UPDATE musica
SET curtidas = 7
WHERE idMusica = 5;

UPDATE musica
SET curtidas = 7
WHERE idMusica = 6;

UPDATE musica
SET curtidas = 20
WHERE idMusica = 7;

UPDATE musica
SET curtidas = 13
WHERE idMusica = 8;

ALTER TABLE musica
MODIFY artista VARCHAR (80);

UPDATE musica
SET curtidas = 50
WHERE idmusica = 1;

UPDATE musica
SET curtidas = 30
WHERE idmusica IN (2, 3);

UPDATE musica
SET titulo = 'Curtindo a vida'
WHERE idmusica = 5;

DELETE FROM musica WHERE idMusica = 4;

SELECT * FROM musica WHERE genero <> 'funk';

SELECT * FROM musica WHERE curtidas >= 20;

DESCRIBE musica;

TRUNCATE TABLE musica;