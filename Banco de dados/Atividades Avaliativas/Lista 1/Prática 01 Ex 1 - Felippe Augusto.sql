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

SELECT nome, qtdmedalhas FROM atleta;

SELECT * FROM atleta WHERE modalidade = 'basquete';

SELECT * FROM atleta ORDER BY modalidade;

SELECT * FROM atleta ORDER BY qtdmedalhas DESC;

SELECT * FROM atleta WHERE nome LIKE '%s%';

SELECT * FROM atleta WHERE nome LIKE 'l%';

SELECT * FROM atleta WHERE nome LIKE '%o';

SELECT * FROM atleta WHERE nome LIKE '%r_';

DROP TABLE atleta;