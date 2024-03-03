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

ALTER TABLE filme
ADD COLUMN protagonista VARCHAR (50);

UPDATE filme
SET protagonista = 'McQueen'
WHERE idFilme = 1;

UPDATE filme
SET protagonista = 'Brian e Roman'
WHERE idFilme = 2;

UPDATE filme
SET protagonista = 'Django'
WHERE idFilme = 3;

UPDATE filme
SET protagonista = 'Tenente Raine e Coronel Landa'
WHERE idFilme = 4;

UPDATE filme
SET protagonista = 'Kevin'
WHERE idFilme = 5;

UPDATE filme
SET protagonista = 'Amy e Nick'
WHERE idFilme = 6;

UPDATE filme
SET protagonista = 'Frank'
WHERE idFilme = 7;

ALTER TABLE filme
MODIFY diretor VARCHAR (150);

UPDATE filme
SET diretor = 'David Fincher'
WHERE idFilme = 5;

UPDATE filme
SET diretor = 'Quentin Tarantino'
WHERE idFilme IN (2, 7);

UPDATE filme
SET titulo = 'Clube da luta'
WHERE idFilme = 6;

DELETE FROM filme 
WHERE idFilme = 3;

SELECT * FROM filme WHERE genero <> 'drama';

SELECT * FROM filme WHERE genero = 'suspense';

DESCRIBE filme;

TRUNCATE filme;