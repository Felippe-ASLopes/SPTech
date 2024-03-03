CREATE DATABASE sprint1;
USE sprint1;

CREATE TABLE atleta
(idAtleta INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdmedalhas INT
);

INSERT INTO atleta (nome, modalidade, qtdmedalhas) VALUES
('Lebron James', 'Basquete', 5),
('Lewis Hamilton', 'Automobilismo', 7),
('Michael Phelps', 'Natação', 28),
('Usain Bolt', 'Atletismo', 8),
('Cristiano Ronaldo', 'Futebol', 34);

SELECT * FROM atleta;

UPDATE atleta
SET qtdMedalhas = 8
WHERE idAtleta=1;

UPDATE atleta
SET qtdMedalhas =0
WHERE idAtleta IN(2, 3);

UPDATE atleta
SET nome = 'Shacarri Richardson'
WHERE idAtleta = 4;

ALTER TABLE atleta
ADD COLUMN dtNascimento DATE;

UPDATE atleta
SET dtNascimento = '1984-12-30'
WHERE idAtleta = 1;

UPDATE atleta
SET dtNascimento = '1985-01-07'
WHERE idAtleta = 2;

UPDATE atleta
SET dtNascimento = '1985-07-30'
WHERE idAtleta = 3;

UPDATE atleta
SET dtNascimento = '2000-03-25'
WHERE idAtleta = 4;

UPDATE atleta
SET dtNascimento = '1985-02-05'
WHERE idAtleta = 5;

DELETE FROM atleta WHERE idAtleta = 5;

SELECT * FROM atleta 
WHERE modalidade <> 'Natação';

SELECT * FROM atleta
WHERE qtdMedalhas >= 3;

ALTER TABLE atleta
MODIFY modalidade VARCHAR (60);

DESCRIBE atleta;

TRUNCATE TABLE atleta;