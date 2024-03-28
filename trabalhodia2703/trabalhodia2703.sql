CREATE DATABASE killebyte;

USE killebyte;

CREATE TABLE T_produtos(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
T_produto CHAR(25)
);

CREATE TABLE produto(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
produto CHAR(25),
preco FLOAT(9,2),
ID_tipo INT(5),
FOREIGN KEY (ID_tipo) REFERENCES T_produtos(ID)
);

CREATE TABLE Clientes(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome CHAR(50),
nascimento DATE,
CPF CHAR(11),
ID_endereco int(5),
FOREIGN KEY (ID_endereco) REFERENCES endereco(ID)
);

CREATE TABLE endereco(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
CEP CHAR(8),
rua CHAR(50),
numero CHAR(5),
complemento char(10)
);

CREATE TABLE carrinho(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- prod=produtos
Prod_no_carrinho CHAR(100),
Dono_do_carrinho INT(5),
FOREIGN KEY (Dono_do_carrinho) REFERENCES Clientes(ID)
);

CREATE TABLE dividas(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Preco_da_divida FLOAT(11,2),
dono_da_divida INT(5),
pago CHAR(3),
FOREIGN KEY (dono_da_divida) REFERENCES Clientes(ID)
);
