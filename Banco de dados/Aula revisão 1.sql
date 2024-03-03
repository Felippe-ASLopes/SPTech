create database revisao;
use revisao;

create table produto (
idProduto int primary key auto_increment,
nome VARCHAR(50),
validade DATE,
categoria VARCHAR(50),
codigoBarras CHAR(13),
quntidade int
);

describe produto;

insert into produto VALUES
(DEFAULT, 'Garrafa', '2024-08-22', 'Alimentício', '1234567891234', 100);

SELECT * FROM produto;

INSERT INTO produto (nome, validade, categoria, codigoBarras) VALUES
('Carregador USB-C', NULL, 'Eletrônicos', '1234567890123');

select * FROM produto;

insert INTO produto (nome, validade, categoria, codigoBarras, quntidade) VALUES
('Camisa Polo', NULL, 'Vestuario', '1234567890125', 015);

SELECT * FROM produto;

INSERT INTO produto (nome, validade, categoria, codigoBarras, quntidade) VALUES
('Detergente', '2026-02-22', 'Limpeza', '1234567890126', 1.500);

INSERT INTO produto (nome, validade, categoria, codigoBarras, quntidade) VALUES
('Miojo', '2024-05-22', 'Alimenticio', '1234567890127', 1500);

INSERT INTO produto (nome, validade, categoria, codigoBarras, quntidade) VALUES
('Maçã', '2024-04-22', 'Alimenticio', '1234567890128', 75),
('Mesa', NULL, 'Móveis', '1234567890129', 7);

SELECT * FROM produto;

SELECT nome, categoria FROM produto WHERE nome LIKE '%a';

SELECT * FROM produto Where nome LIKE 'g%';

SELECT * FROM produto WHERE nome LIKE '%io%';

SELECT * FROM produto WHERE nome LIKE '% %';

SELECT * FROM produto WHERE nome LIKE '_a%';

SELECT * FROM produto WHERE nome LIKE '%l_';

-- modificar estrutura da tabela --
ALTER TABLE produto
ADD COLUMN marca VARCHAR(40);

DeSCRIBE produto;

-- alterar coluna --
ALTER TABLE produto
MODIFY COLUMN marca VARCHAR(60);

DESCRIBE produto;

-- alterar o nome da coluna --
AlTER TABLE produto
RENAME COLUMN marca TO empresa;

DESCRIBE produto;

select * FROM produto;

-- atualizar registro --
UPDATE produto
SET quntidade = 200
WHERE idProduto = 4;

SELECT * FROM produto;

ALTER TABLE produto
RENAME COLUMN quntidade TO quantidade;

DESCRIBE produto;

UPDATE produto
SET empresa = 'Bonafonte'
WHERE idProduto = 1;

SELECT * FROM produto;

UPDATE produto
SET empresa = 'Nissin'
WHERE idProduto IN(4, 5);

SELECT * FROM produto;

-- removendo coluna --
ALTER TABLE produto
DROP COLUMN empresa;

DESCRIBE produto;

SELECT * FROM produto;

-- adicionando um CHECK --
ALTER TABLE produto
ADD CONSTRAINT chkCategoria CHECK(categoria IN('Alimentício', 'Eletrônicos', 'Vestuário', 'Limpeza', 'Móveis'));

-- remover a constraint --
ALTER TABLE produto
DROP CONSTRAINT chkCategoria;

-- remover um registro --
DELETE FROM produto WHERE idProduto = 1;

SELECT * FROM produto;

DELEte FROM produto WHERE idProduto IN(2, 3);

SELECT * FROM produto;

-- limpar a tabela (auto_increment começa do zero de novo)--
TRUNCATE TABLE produto;

SELECT * FROM produto;

INSERT INTO produto VALUES
(DEFAULT, 'Notebook', NULL, 'Eletrônicos', '1234567890111', 50);

select * from produto;

delete FROM produto WHERE idProduto IN (1, 2);

INSERT INTO produto VALUES
(DEFAULT, 'Máquina de Lavar', NULL, 'Eletrônico', '1234567890112', 50);

select * FROM produto;

-- apagar tudo --
DROP TABLE produto;
DROP DATABASE revisao;