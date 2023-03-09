CREATE DATABASE db_registroescola;

USE db_registroescola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    nota DECIMAL(4,2),
    matricula VARCHAR(255),
    turma VARCHAR(255),
    periodo VARCHAR(255),
    transporte BOOLEAN,
    
    PRIMARY KEY (id)
    );
    
    SELECT * FROM tb_estudantes;
    
    INSERT INTO tb_estudantes (nome, nota, matricula, turma, periodo, transporte) 
	VALUES
		("Vada Cavell", 9.8, "12365789", "1ºA", "Manhã", false),
		("Paige Olvera", 8.8, "12818312", "1ºD", "Manhã", true),
        ("Alex Russo", 7.5, "65432343", "2ºB", "Manhã", false),
        ("Rosie Gonzalez", 10.0, "12345432", "3ºA", "Manhã", true),
        ("Grace Thomas", 8.6, "95434566", "4ºA", "Tarde", true),
        ("Max Russo", 4.00, "543278387", "9ºA", "Tarde", false),
        ("Tara Carpinter", 8.0, "34873244", "2ºC", "Manhã", false),
        ("Ellie Alves", 5.0, "23487384", "1ºD", "Manhã", true);
        
	SELECT * FROM tb_estudantes WHERE nota > 7;
    SELECT * FROM tb_estudantes WHERE nota < 7;
    
    UPDATE tb_estudantes
    SET nota = 8.0, matricula = 543278388
    WHERE id = 8 AND id = 3;
    
    
       