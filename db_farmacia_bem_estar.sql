CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	descricao VARCHAR(255) NOT NULL,
    cor_etiqueta VARCHAR(255),

	PRIMARY KEY(id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    marca VARCHAR(255),
    preco DECIMAL(4,2),
    quantidade INT,
    categoria_id BIGINT,

	PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias(descricao, cor_etiqueta) VALUES 
("Higiene Pessoal", "Azul"),
("Medicamentos", "Vermelho"),
("Alimentos", "Amarelo"),
("Cosméticos", "Verde"),
("Suplementos", "Laranja");

INSERT INTO tb_produtos(nome, marca, preco, quantidade, categoria_id) VALUES 
("Sabonete", "Granado", 6.80, 20, 1),
("Desodorante", "Old Spice", 13.90, 15 , 1),
("Dipirona", "NEOSALDINA", 23.00, 1 , 2),
("Amoxilina", "Neo Quimica", 7.70 , 45 , 2),
("Barra de Cereal", "Nutry", 07.43 , 5 , 3),
("Chiclete", "Trident", 2.99 , 3 , 3),
("Batom", "CARMED", 19.90 , 2 , 4),
("Whey", "ISO", 45.90 , 5 , 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco >= 05.00 AND preco <= 60.00; 

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.descricao = "Higiene Pessoal";