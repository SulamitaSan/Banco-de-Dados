CREATE DATABASE agencia;

USE agencia;

CREATE TABLE Permissoes (
id_permissao INTEGER PRIMARY KEY,
tipo_permissao VARCHAR(20)
)

CREATE TABLE Usuarios (usuarios
id_usuario INTEGER PRIMARY KEY,
idade DATE,
nome VARCHAR(100),
endereco VARCHAR(200),
id_permissao INTEGER,
FOREIGN KEY(id_permissao) REFERENCES Permissoes (id_permissao)
)

CREATE TABLE Compra (
id_compra INTEGER PRIMARY KEY,
passagem NUMERIC(10),
valor DECIMAL(10)
)

CREATE TABLE Passagens (
id_passagem INTEGER PRIMARY KEY,
destino VARCHAR(20),
origem VARCHAR(20),
id_compra INTEGER,
FOREIGN KEY(id_compra) REFERENCES Compra (id_compra)
)

-- Erro: Nome de tabela duplicado (este erro compromete a integridade referencial)!
CREATE TABLE compra (
id_compra INTEGER,
id_usuario INTEGER,
FOREIGN KEY(id_compra) REFERENCES Compra (id_compra),
FOREIGN KEY(id_usuario) REFERENCES Usuarios (id_usuario)
)

