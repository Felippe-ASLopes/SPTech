USE sprint1;

CREATE TABLE revista (
idRevista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
categoria VARCHAR (30)
)AUTO_INCREMENT = 1;

INSERT INTO revista (nome) VALUES
('Vogue'),
('Veja'),
('Época'),
('Quatro rodas');

SELECT * FROM revista;

UPDATE revista
SET categoria = 'Moda'
WHERE idRevista = 1;

UPDATE revista
SET categoria = 'Notícias'
WHERE idRevista = 2;

UPDATE revista
SET categoria = 'Notícias'
WHERE idRevista = 3;

UPDATE revista
SET categoria = 'Automóveis'
WHERE idRevista = 4;

SELECT * FROM revista;

INSERT INTO revista (nome, categoria) VALUES
('Thrasher', 'Skate'),
('Placar', 'Futebol'),
('Slam', 'Basquete');

SELECT * FROM revista;

DESCRIBE revista;

ALTER TABLE revista
MODIFY COLUMN categoria VARCHAR (40);

DESCRIBE revista;

ALTER TABLE revista
ADD COLUMN periodicidade VARCHAR (15);

SELECT * FROM revista;

ALTER TABLE revista
DROP COLUMN periodicidade;

DROP DATABASE sprint1;