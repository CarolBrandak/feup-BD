PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Gerente;
DROP TABLE IF EXISTS Operador;
DROP TABLE IF EXISTS OperadorLoja;
DROP TABLE IF EXISTS Compra;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS InfoCompra;
DROP TABLE IF EXISTS Genero;
DROP TABLE IF EXISTS Tipo;
DROP TABLE IF EXISTS Autor;
DROP TABLE IF EXISTS Autoria;
DROP TABLE IF EXISTS Livraria;
DROP TABLE IF EXISTS HorarioAtendimento;

CREATE TABLE Livraria (
    idLivraria INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    nome CHAR(30),
    morada VARCHAR(30) UNIQUE,
    telefone INTEGER UNIQUE
);

CREATE TABLE Cliente (
    idCliente INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    nome CHAR(30),
    dataNascimento DATE,
    morada VARCHAR(30) UNIQUE,
    telefone INTEGER UNIQUE,
    nif CHAR(9) UNIQUE
);

CREATE TABLE Gerente (
    idGerente INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    idLivraria REFERENCES Livraria (idLivraria) ON UPDATE CASCADE,
    nome CHAR(30) NOT NULL,
    dataNascimento DATE NOT NULL,
    morada VARCHAR(30) NOT NULL,
    telefone INTEGER NOT NULL,
    nif CHAR(9) NOT NULL,
    salario INTEGER NOT NULL CHECK (salario > 0),
    anosServico INTEGER NOT NULL CHECK (anosServico>=4)
);

CREATE TABLE Operador (
    idOperador INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    idLivraria REFERENCES Livraria (idLivraria) ON UPDATE CASCADE,
    nome CHAR(30) NOT NULL,
    dataNascimento DATE NOT NULL,
    morada VARCHAR(30) NOT NULL,
    telefone INTEGER NOT NULL,
    nif CHAR(9) NOT NULL,
    salario INTEGER NOT NULL CHECK (salario > 0),
    anosServico INTEGER NOT NULL,
    funcao VARCHAR(30) NOT NULL
);

CREATE TABLE OperadorLoja (
    idOperadorLoja INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    idLivraria REFERENCES Livraria (idLivraria) ON UPDATE CASCADE,
    nome CHAR(30) NOT NULL,
    dataNascimento DATE NOT NULL,
    morada VARCHAR(30) NOT NULL,
    telefone INTEGER NOT NULL,
    nif CHAR(9) NOT NULL,
    salario INTEGER NOT NULL CHECK (salario > 0),
    anosServico INTEGER NOT NULL
);

CREATE TABLE Livro (
    idLivro INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    idLivraria REFERENCES Livraria (idLivraria) ON UPDATE CASCADE,
    titulo CHAR(30) NOT NULL,
    preco INTEGER NOT NULL CHECK (preco > 0),
    numPag INTEGER NOT NULL CHECK (numPag > 0),
    dataPub DATE NOT NULL,
    quantidadeStock INTEGER NOT NULL,
    editora CHAR(30) NOT NULL
);

CREATE TABLE Compra (
    idCompra INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    idCliente REFERENCES Cliente (idCliente) ON UPDATE CASCADE,
    idOperadorLoja REFERENCES OperadorLoja (idOperadorLoja) ON UPDATE CASCADE,
    idLivro REFERENCES Livro (idLivro) ON UPDATE CASCADE,
    data DATE,
    precoTotal INTEGER CHECK (precoTotal > 0)
);

CREATE TABLE InfoCompra (
    idInfoCompra INTEGER PRIMARY KEY AUTOINCREMENT,
    idLivro REFERENCES Livro (idLivro) ON UPDATE CASCADE,
    idCompra REFERENCES Compra (idCompra) ON UPDATE CASCADE,
    quantidade INTEGER CHECK (quantidade > 0)
);

CREATE TABLE Genero (
    idGenero INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    nome CHAR(30) UNIQUE
);

CREATE TABLE Autor (
    idAutor INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    nome TEXT,
    biografia TEXT UNIQUE
);

CREATE TABLE Autoria (
    idAutor INTEGER PRIMARY KEY REFERENCES Autor (idAutor) ON UPDATE CASCADE,
    idLivro REFERENCES Livro (idLivro) ON UPDATE CASCADE
);

CREATE TABLE HorarioAtendimento (
    idHorarioAtendimento INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
    idLivraria REFERENCES Livraria (idLivraria) ON UPDATE CASCADE,
    diaUtil BOOLEAN NOT NULL,
    horaAbertura TIME NOT NULL,
    horaFecho TIME NOT NULL  UNIQUE
);

COMMIT TRANSACTION;