CREATE DATABASE UsuarioEnderecoTelefone;
USE UsuarioEnderecoTelefone;


CREATE TABLE Endereco (
	idEndereco INT NOT NULL AUTO_INCREMENT,
	logradouro VARCHAR(45) NOT NULL,
	bairro VARCHAR(45) NOT NULL,
	cep DECIMAL(8) NOT NULL,
	cidade VARCHAR(45) NOT NULL,
	estado VARCHAR(2) NOT NULL,
	complemento VARCHAR(45) NOT NULL,
	PRIMARY KEY(idEndereco)
);

CREATE TABLE Pessoa (
	idPessoa INT NOT NULL AUTO_INCREMENT,
	cpf DECIMAL(11) NOT NULL,
	nome VARCHAR(45) NOT NULL,
	dataNascimento DATE NOT NULL,
	sexo VARCHAR(15) NOT NULL,
	numeroCasa VARCHAR(45) NOT NULL,
	fk_idEndereco INT NOT NULL,
	PRIMARY KEY(idPessoa),
	FOREIGN KEY(fk_idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Telefone (
	idTelefone INT NOT NULL AUTO_INCREMENT,
	numero DECIMAL(9) NOT NULL,
	ddd DECIMAL(3) NOT NULL,
	operadora VARCHAR(15),
	fk_idPessoa INT NOT NULL,
	PRIMARY KEY(idTelefone),
	FOREIGN KEY(fk_idPessoa) REFERENCES Pessoa(idPessoa)
);

