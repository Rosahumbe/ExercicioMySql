CREATE DATABASE db_rhgeneration;

USE db_rhgeneration;

CREATE TABLE tb_funcionarios(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT,
    PRIMARY KEY(id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Wan", 10000.90, "Estagiaria", 03);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Ana", 20000.90, "Assistente", 04);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Helena", 30000.90, "Lider", 07);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Heloisa", 40000.90, "Supervisora", 01);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Rosa", 50000.90, "Gerente", 09);

SELECT MAX(salario) AS MaiorSalario FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios
SET nome = "Marcelo"
WHERE id = 2;

DELETE FROM tb_funcionarios WHERE id = 3;