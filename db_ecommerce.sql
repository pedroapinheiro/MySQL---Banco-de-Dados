-- Atividade 1 - RH
CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30),
idade INT(3),
cargo VARCHAR(30),
salario DECIMAL(10,2),

PRIMARY KEY(id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cargo, salario) 
	VALUES("Silvana Silva", 35, "Comercial", 10000),
		("José Augusto", 46, "Vendedor", 3000),
        ("Diego Maradona", 59, "Vendedor", 3000),
        ("Ana Maria", 32, "Vendedor", 3000),
        ("Gabriela Martins", 29, "Marketing", 5000);
        
SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;

SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 60 WHERE id=3;