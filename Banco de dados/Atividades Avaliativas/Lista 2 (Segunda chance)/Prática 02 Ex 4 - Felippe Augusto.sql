USE sprint1;

CREATE TABLE professor (
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
especialidade VARCHAR (40),
dtNasc DATE
);

INSERT INTO professor (nome, especialidade, dtNasc) VALUES
('Marcia', 'Matemática', '1985-07-15'),
('Sueli', 'Matemática', '1970-01-22'),
('João', 'Filosofia', '1991-12-01'),
('Carlos', 'História', '1995-06-06'),
('Flavia','Geografia','1989-03-25'),
('Jonas', 'História', '2000-07-16');

SELECT * FROM professor;

ALTER TABLE professor
ADD COLUMN funcao VARCHAR (50);

ALTER TABLE professor
ADD CONSTRAINT chkFuncao
CHECK (funcao IN ('Titular', 'Assistente', 'Monitor'));

UPDATE professor
SET funcao = 'Titular'
WHERE idProfessor = 1;

UPDATE professor
SET funcao = 'Assistente'
WHERE idProfessor = 2;

UPDATE professor
SET funcao = 'Titular'
WHERE idProfessor = 3;

UPDATE professor
SET funcao = 'Monitor'
WHERE idProfessor = 4;

UPDATE professor
SET funcao = 'Monitor'
WHERE idProfessor = 5;

UPDATE professor
SET funcao = 'Assistente'
WHERE idProfessor = 6;

INSERT INTO professor (nome, especialidade, dtNasc, funcao) VALUES
('Douglas', 'Português', '1999-04-28', 'Monitor');

DELETE FROM professor WHERE idProfessor = 5;

SELECT nome FROM professor WHERE funcao = 'titular';

SELECT especialidade, dtNasc FROM professor WHERE funcao = 'monitor';

UPDATE professor
SET dtNasc = '2001-12-25'
WHERE idProfessor = 3;

TRUNCATE TABLE professor;