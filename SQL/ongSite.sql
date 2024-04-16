CREATE DATABASE OngSite;
USE OngSite;

CREATE TABLE Ong (
	idOng INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	email VARCHAR(45) NOT NULL,
	whatsapp DECIMAL(11),
	PRIMARY KEY(idOng)
);

CREATE TABLE Usuario (
	idUsuario INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	endereco VARCHAR(100),
	whatsapp DECIMAL(11),
	PRIMARY KEY(idUsuario)
);

CREATE TABLE Ocorrencia (
	idOcorrencia INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(1000) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	data DATETIME NOT NULL,
	imagem BLOB,
	fk_idOng INT NOT NULL,
	fk_idUsuario INT NOT NULL,
	PRIMARY KEY(idOcorrencia),
	FOREIGN KEY(fk_idOng) REFERENCES Ong(idOng),
	FOREIGN KEY(fk_idUsuario) REFERENCES Usuario(idUsuario)
);