--Felippe Augusto, Kauan Marques e Lucas Gomes--;
CREATE DATABASE atividade;
USE atividade;

CREATE TABLE condominio (
idMorador INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
apartamento CHAR(2) NOT NULL,
bloco CHAR(1) NOT NULL,
cadastro VARCHAR(10)
);

ALTER TABLE condominio
MODIFY COLUMN nome VARCHAR (80);

ALTER TABLE condominio
RENAME COLUMN bloco TO predio;

DESCRIBE condominio;

ALTER TABLE condominio
ADD CONSTRAINT chkCadastro
CHECK (cadastro IN ('morador', 'visitante', 'síndico'));

ALTER TABLE condominio
ADD CONSTRAINT chkApartamento
CHECK (apartamento IN (01, 02, 11, 12, 21, 22, 31, 32, 41, 42, 51, 52));

ALTER TABLE condominio
ADD CONSTRAINT chkBloco
CHECK (bloco IN ('A', 'B'));

INSERT INTO condominio (nome, apartamento, predio, cadastro) VALUES
('Kauan', '01', 'A', 'Síndico'),
('Debora', '01', 'A', 'Visitante'),
('Felippe', '51', 'A', 'Morador'),
('Marayah', '51', 'A', 'Visitante'),
('Lucas', '12', 'B', 'Morador'),
('Lebron', '51', 'B', 'Síndico');

SELECT * FROM condominio ORDER BY cadastro;

SELECT * FROM condominio WHERE apartamento LIKE '5%';

SELECT nome FROM condominio WHERE cadastro LIKE 'síndico';

UPDATE condominio
SET cadastro = 'Morador'
WHERE idMorador = 6;

INSERT INTO condominio (nome, apartamento, predio, cadastro) VALUES
('Vivian', 42, 'B', 'Síndico');

DELETE FROM condominio
WHERE idMorador = 5;

ALTER TABLE condominio
ADD COLUMN cpf CHAR(11);

UPDATE condominio
SET cpf = 12345678911
WHERE idMorador = 1;

UPDATE condominio
SET cpf = 12345678912
WHERE idMorador = 2;

UPDATE condominio
SET cpf = 12345678913
WHERE idMorador = 3;

UPDATE condominio
SET cpf = 12345678914
WHERE idMorador = 4;

UPDATE condominio
SET cpf = 12345678916
WHERE idMorador = 6;

UPDATE condominio
SET cpf = 12345678917
WHERE idMorador = 7;

SELECT * FROM condominio;

ALTER TABLE condominio
DROP COLUMN cpf;

TRUNCATE TABLE condominio;

DROP TABLE condominio;

DROP DATABASE atividade;