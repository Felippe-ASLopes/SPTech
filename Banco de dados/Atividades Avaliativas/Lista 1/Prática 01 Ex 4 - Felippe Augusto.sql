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

SELECT especialidade FROM professor;

SELECT * FROM professor WHERE especialidade = 'matemática';

SELECT * FROM professor ORDER BY nome;

SELECT * FROM professor ORDER BY dtNasc DESC;

SELECT * FROM professor WHERE nome LIKE 's%';

SELECT * FROM professor WHERE nome LIKE '%o';

SELECT * FROM professor WHERE nome LIKE '_a%';

SELECT * FROM professor WHERE nome LIKE '%a_';

DROP TABLE professor;