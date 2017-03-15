DROP DATABASE IF EXISTS `saveMe`;
CREATE DATABASE IF NOT EXISTS `saveMe`;
USE `saveMe`;

CREATE TABLE responsavel(
id_responsavel INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nm_nome_responsavel VARCHAR(30) NOT NULL,
nm_sobrenome_responsavel VARCHAR(30) NOT NULL,
nm_local VARCHAR(50) NOT NULL,
ds_numero INT NOT NULL,
ds_complemento VARCHAR(15),
cd_cep INT NOT NULL,
nm_bairro VARCHAR(10) NOT NULL,
nm_municipio VARCHAR(15) NOT NULL,
nm_UF CHAR(2) NOT NULL,
cd_telefone VARCHAR(13) NOT NULL,
nm_email VARCHAR(25) NOT NULL,
ds_senha VARCHAR(50) NOT NULL
);


CREATE TABLE crianca(
id_crianca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cd_qr_code INT,
nm_nome_crianca VARCHAR(30) NOT NULL,
nm_sobrenome_crianca VARCHAR(30) NOT NULL,
imagem longblob
);

CREATE TABLE qrCode(
id_qr_code INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cd_qr_code INT NOT NULL,
id_crianca INT,
id_responsavel INT
);

ALTER TABLE
  `qrCode` ADD CONSTRAINT `fkqrCode_id_responsavel` FOREIGN KEY(`id_responsavel`) REFERENCES `responsavel`(`id_responsavel`);
ALTER TABLE
  `qrCode` ADD CONSTRAINT `fkqrCode_id_responsavel` FOREIGN KEY(`id_responsavel`) REFERENCES `responsavel`(`id_responsavel`);
