
CREATE DATABASE db_rhgeneration_game_online;

USE db_rhgeneration_game_online;

CREATE TABLE tb_classe(
	id BIGINT auto_increment,
    posicao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    classe_id Bigint,
    PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

SELECT * FROM tb_classe;

INSERT INTO tb_classe(posicao)VALUES("Atacante");
INSERT INTO tb_classe(posicao)VALUES("libero");
INSERT INTO tb_classe(posicao)VALUES("Goleiro");
INSERT INTO tb_classe(posicao)VALUES("Alas");
INSERT INTO tb_classe(posicao)VALUES("Zagueiro");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Neymar",800,500,3);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Cristiano",1500,700,1);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Messi",400,300,2);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Cassimiro",800,1000,5);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Pele",500,800,4);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("mbape",900,1000,8);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Romario",2001,2742,7);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)VALUES("Ronaldinho",8000,9540,5);

SELECT MAX(poderAtaque) AS ataque FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE ataque < 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classe
ON tb_classe.id = tb_personagens.classe_id;

ALTER TABLE tb_personagens
CHANGE classe_id fk_classe_id BIGINT;