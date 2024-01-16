CREATE DATABASE IF NOT EXISTS ATIVIDADE;

USE ATIVIDADE

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade_estoque INT
);

INSERT INTO produtos (nome, categoria, preco, quantidade_estoque) VALUES
    ('Notebook Dell', 'Eletrônicos', 2499.99, 10),
    ('Smartphone Samsung', 'Eletrônicos', 899.99, 15),
    ('TV LED 4K LG', 'Eletrônicos', 1499.99, 8),
    ('Cadeira de Escritório', 'Móveis', 199.99, 20),
    ('Mesa de Jantar', 'Móveis', 399.99, 12),
    ('Fogão a Gás', 'Eletrodomésticos', 499.99, 18),
    ('Liquidificador Philips', 'Eletrodomésticos', 79.99, 25),
    ('Forno Elétrico', 'Eletrodomésticos', 249.99, 10),
    ('Livro "Aventuras de Sherlock Holmes"', 'Livros', 19.99, 30),
    ('Fone de Ouvido Bluetooth', 'Eletrônicos', 69.99, 15),
    ('Mochila Escolar', 'Acessórios', 29.99, 40),
    ('Tênis Esportivo', 'Calçados', 89.99, 25),
    ('Bicicleta Mountain Bike', 'Esportes', 399.99, 5),
    ('Panela de Pressão', 'Cozinha', 49.99, 20),
    ('Jogo de Talheres Inox', 'Cozinha', 39.99, 15),
    ('Colchão Casal Ortobom', 'Móveis', 699.99, 8),
    ('Ventilador de Mesa', 'Eletrodomésticos', 59.99, 12),
    ('Câmera Fotográfica Canon', 'Eletrônicos', 799.99, 7),
    ('Grill Elétrico', 'Eletrodomésticos', 129.99, 10),
    ('Relógio de Pulso', 'Acessórios', 149.99, 18);



/*Consulta com BETWEEN*/
SELECT * FROM produtos
WHERE preco BETWEEN 50.00 AND 100.00;

/*Consulta com LIKE:*/
SELECT nome FROM produtos
WHERE nome LIKE '%Smart%';

/*Consulta com IN*/
SELECT * FROM produtos
WHERE id IN (1, 3, 5);

/*Consulta com ORDER BY*/
SELECT * FROM produtos
ORDER BY nome ASC;

/*Consulta com LIMIT e ORDER BY*/
SELECT * FROM produtos
ORDER BY preco DESC
LIMIT 5;

/*Consulta com BETWEEN e ORDER BY*/
SELECT * FROM produtos
WHERE preco BETWEEN 30.00 AND 60.00
ORDER BY preco DESC;

/*Consulta com LIKE e ORDER BY*/
SELECT * FROM produtos
WHERE nome LIKE 'C%'
ORDER BY nome ASC;

/*Consulta com IN e LIKE*/
SELECT * FROM produtos
WHERE id IN (2, 4, 6) AND nome LIKE '%HD%';

/*Consulta com BETWEEN e LIMIT*/
SELECT * FROM produtos
WHERE preco BETWEEN 10.00 AND 50.00
LIMIT 3;

/*Consulta com LIKE e LIMIT*/
SELECT * FROM produtos
WHERE nome LIKE '%Gaming%'
LIMIT 5;

/*Consulta com ORDER BY e LIMIT*/
SELECT * FROM produtos
ORDER BY preco ASC
LIMIT 10;

/*Consulta com BETWEEN e IN*/
SELECT * FROM produtos
WHERE id BETWEEN 3 AND 7 OR id IN (10, 11, 12);

/*Consulta com LIKE e ORDER BY*/
SELECT * FROM produtos
WHERE nome LIKE '%X'
ORDER BY nome DESC;

/*Consulta com IN e LIMIT*/
SELECT * FROM produtos
WHERE id IN (1, 5, 8, 11)
LIMIT 2;

/*Consulta com BETWEEN e LIKE*/
SELECT * FROM produtos
WHERE preco BETWEEN 25.00 AND 75.00
AND nome LIKE '%Slim%';
