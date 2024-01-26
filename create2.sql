CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(255),
    dataNascimento DATE,
    morada VARCHAR(255),
    telefone VARCHAR(15),
    nif VARCHAR(9)
);

CREATE TABLE Gerente (
    idGerente INT PRIMARY KEY,
    nome VARCHAR(255),
    dataNascimento DATE,
    morada VARCHAR(255),
    telefone VARCHAR(15),
    nif VARCHAR(9),
    salario DECIMAL(10, 2),
    anosServico INT,
    idLivraria INT,
    FOREIGN KEY (idLivraria) REFERENCES Livraria(idLivraria)
);

CREATE TABLE Operador (
    idOperador INT PRIMARY KEY,
    nome VARCHAR(255),
    dataNascimento DATE,
    morada VARCHAR(255),
    telefone VARCHAR(15),
    nif VARCHAR(9),
    salario DECIMAL(10, 2),
    anosServico INT,
    funcao VARCHAR(255),
    idLivraria INT,
    FOREIGN KEY (idLivraria) REFERENCES Livraria(idLivraria)
);

CREATE TABLE OperadorLoja (
    idOperadorLoja INT PRIMARY KEY,
    nome VARCHAR(255),
    dataNascimento DATE,
    morada VARCHAR(255),
    telefone VARCHAR(15),
    nif VARCHAR(9),
    salario DECIMAL(10, 2),
    anosServico INT,
    idLivraria INT,
    FOREIGN KEY (idLivraria) REFERENCES Livraria(idLivraria)
);

CREATE TABLE Compra (
    idCompra INT PRIMARY KEY,
    data DATE,
    precoTotal DECIMAL(10, 2),
    idOperadorLoja INT,
    idCliente INT,
    idLivro INT,
    FOREIGN KEY (idOperadorLoja) REFERENCES OperadorLoja(idOperadorLoja),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro)
);

CREATE TABLE Livro (
    idLivro INT PRIMARY KEY,
    titulo VARCHAR(255),
    preco DECIMAL(10, 2),
    numPag INT,
    dataPub DATE,
    quantidadeStock INT,
    editora VARCHAR(255),
    idLivraria INT,
    FOREIGN KEY (idLivraria) REFERENCES Livraria(idLivraria)
);

CREATE TABLE InfoCompra (
    idLivro INT,
    idCompra INT,
    quantidade INT,
    PRIMARY KEY (idLivro, idCompra),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),
    FOREIGN KEY (idCompra) REFERENCES Compra(idCompra)
);

CREATE TABLE Genero (
    idGenero INT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE Autor (
    idAutor INT PRIMARY KEY,
    nome VARCHAR(255),
    biografia TEXT
);

CREATE TABLE Tipo (
    idGenero INT,
    idLivro INT,
    PRIMARY KEY (idGenero, idLivro),
    FOREIGN KEY (idGenero) REFERENCES Genero(idGenero),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro)
);

CREATE TABLE Autoria (
    idAutor INT,
    idLivro INT,
    PRIMARY KEY (idAutor, idLivro),
    FOREIGN KEY (idAutor) REFERENCES Autor(idAutor),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro)
);

CREATE TABLE Livraria (
    idLivraria INT PRIMARY KEY,
    nome VARCHAR(255),
    morada VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE HorarioAtendimento (
    idHorarioAtendimento INT PRIMARY KEY,
    diaUtil VARCHAR(10),
    horaAbertura TIME,
    horaFecho TIME,
    idLivraria INT,
    FOREIGN KEY (idLivraria) REFERENCES Livraria(idLivraria)
);
