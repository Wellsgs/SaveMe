DROP DATABASE IF EXISTS `saveMe`;
CREATE DATABASE IF NOT EXISTS `saveMe`;
USE `saveMe`;

CREATE TABLE responsavel(
id_responsavel INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nm_nome_responsavel VARCHAR(40) NOT NULL,
nm_endereco VARCHAR(50),
nm_bairro VARCHAR(10),
nm_municipio VARCHAR(15),
cd_cep INT,
nm_UF CHAR(2),
cd_telefone VARCHAR(13) NOT NULL,
nm_email VARCHAR(25) NOT NULL
);


CREATE TABLE crianca(
id_crianca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_responsavel INT NOT NULL,
nm_nome_crianca VARCHAR(30) NOT NULL,
);


CREATE TABLE responsavel_crianca(
id_qr_code INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cd_qr_code INT NOT NULL,
id_crianca INT,
id_responsavel INT
);

ALTER TABLE
  `crianca` ADD CONSTRAINT `fkcrianca_id_responsavel` FOREIGN KEY(`id_responsavel`) REFERENCES `responsavel`(`id_responsavel`);
ALTER TABLE
  `responsavel_crianca` ADD CONSTRAINT `fkqrCode_id_crianca` FOREIGN KEY(`id_crianca`) REFERENCES `crianca`(`id_crianca`);
ALTER TABLE
  `responsavel_crianca` ADD CONSTRAINT `fkqrCode_id_responsavel` FOREIGN KEY(`id_responsavel`) REFERENCES `responsavel`(`id_responsavel`);
