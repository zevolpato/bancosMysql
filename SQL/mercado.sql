CREATE DATABASE Mercado;
USE Mercado;

CREATE TABLE Produto (
	idProduto INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	quantidade FLOAT NOT NULL,
	valorUnitario FLOAT NOT NULL,
	PRIMARY KEY(idProduto)
);

CREATE TABLE Venda (
	idVenda INT NOT NULL,
	valorTotal FLOAT NOT NULL,
	dataVenda DATETIME NOT NULL,
	PRIMARY KEY(idVenda)
);

CREATE TABLE ItensVendidos (
	idItensVendidos INT NOT NULL AUTO_INCREMENT,
	valorVenda FLOAT NOT NULL,
	quantidadeVenda FLOAT NOT NULL,
	fk_idVenda INT NOT NULL,
	fk_idProduto INT NOT NULL,
	PRIMARY KEY(idItensVendidos),
	FOREIGN KEY(fk_idVenda) REFERENCES Venda(idVenda),
	FOREIGN KEY(fk_idProduto) REFERENCES Produto(idProduto)
);