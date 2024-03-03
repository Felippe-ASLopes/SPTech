USE sprint1;

CREATE TABLE filme (
idFilme INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (50),
genero VARCHAR (40),
diretor VARCHAR (40)
);

INSERT INTO filme (titulo, genero, diretor) VALUES
('Carros', 'Animação', 'John Lasseter'),
('Velozes e furiosos 2', 'Ação', 'John Singleton'),
('Django Livre', 'Ação', 'Quentin Tarantino'),
('Bastardos Inglorios', 'Aventura', 'Quentin Tarantino'),
('Fragmentado', 'Suspense', 'Night Shyamalan'),
('Garota Exemplar', 'Suspense', 'David Fincher'),
('O Irlandês', 'Ação', 'Martin Scorsese');

SELECT * FROM filme;

SELECT titulo, diretor FROM filme;

SELECT * FROM filme WHERE genero = 'suspense';

SELECT * FROM filme WHERE diretor = 'Quentin Tarantino';

SELECT * FROM filme ORDER BY titulo;

SELECT * FROM filme ORDER BY diretor DESC;

SELECT * FROM filme WHERE titulo LIKE 'c%';

SELECT * FROM filme WHERE diretor LIKE '%r';

SELECT * FROM filme WHERE genero LIKE '_ç%';

SELECT * FROM filme WHERE titulo LIKE '%e_';

DROP TABLE filme;