USE sprint1;

CREATE TABLE curso (
idCurso INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
sigla CHAR(3),
coordenador VARCHAR (50)
);

INSERT INTO curso (nome, sigla, coordenador) VALUES
('Análise e desenvolvimento de sistemas', 'ADS', 'Carlos'),
('Sistemas de informação', 'SIS', 'Luciana'),
('Ciência da Computação', 'CCO', 'Flavia');

SELECT * FROM curso;

SELECT coordenador FROM curso;

SELECT * FROM curso WHERE sigla = 'ADS';

SELECT * FROM curso ORDER BY nome;

SELECT * FROM curso ORDER BY coordenador DESC;

SELECT * FROM curso WHERE nome LIKE 'A%';

SELECT * FROM curso WHERE nome LIKE '%o';

SELECT * FROM curso WHERE nome LIKE '_n%';

SELECT * FROM curso WHERE nome LIKE '%a_';

DROP TABLE curso;