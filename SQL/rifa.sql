CREATE DATABASE Rifa;
USE Rifa;

CREATE TABLE Usuario (
	idUsuario INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	whatsapp DECIMAL(11) NOT NULL,
	PRIMARY KEY(idUsuario)
);



CREATE TABLE Rifa (
	idRifa INT NOT NULL AUTO_INCREMENT,
	valorNumero FLOAT NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	numeros INT NOT NULL,
	data DATETIME NOT NULL,
	dia DATE NOT NULL,
	hora TIME NOT NULL,
	premio VARCHAR(100) NOT NULL,
	fk_idCriador INT NOT NULL,
	PRIMARY KEY(idRifa),
	FOREIGN KEY(fk_idCriador) REFERENCES Usuario(idUsuario)
);

CREATE TABLE NumerosVendidos (
	idNumerosVendidos INT NOT NULL AUTO_INCREMENT,
	numeroEscolhido INT NOT NULL,
	fk_idRifa INT NOT NULL,
	fk_idUsuario INT NOT NULL,
	PRIMARY KEY(idNumerosVendidos),
	FOREIGN KEY(fk_idRifa) REFERENCES Rifa(idRifa),
	FOREIGN KEY(fk_idUsuario) REFERENCES Usuario(idUsuario)
); 