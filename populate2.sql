-- População de Livrarias
INSERT INTO Livraria (nome, morada, telefone) VALUES
('Livraria A', 'Rua A, Lisboa', 123456789),
('Livraria B', 'Rua B, Porto', 987654321);

-- População de Clientes
INSERT INTO Cliente (nome, dataNascimento, morada, telefone, nif) VALUES
('Cliente 1', '1990-01-01', 'Rua X, Lisboa', 111111111, '123456789'),
('Cliente 2', '1985-05-15', 'Rua Y, Porto', 222222222, '987654321');

-- População de Gerentes
INSERT INTO Gerente (idLivraria, nome, dataNascimento, morada, telefone, nif, salario, anosServico) VALUES
(1, 'Gerente A', '1980-02-20', 'Rua Z, Lisboa', 333333333, '111111111', 50000, 5),
(2, 'Gerente B', '1975-07-10', 'Rua W, Porto', 444444444, '555555555', 55000, 6);

-- População de Operadores
INSERT INTO Operador (idLivraria, nome, dataNascimento, morada, telefone, nif, salario, anosServico, funcao) VALUES
(1, 'Operador A', '1995-03-12', 'Rua M, Lisboa', 555555555, '222222222', 30000, 2, 'Vendas'),
(2, 'Operador B', '1998-08-25', 'Rua N, Porto', 666666666, '333333333', 32000, 1, 'Atendimento');

-- População de Operadores de Loja
INSERT INTO OperadorLoja (idLivraria, nome, dataNascimento, morada, telefone, nif, salario, anosServico) VALUES
(1, 'OperadorLoja A', '1992-06-18', 'Rua P, Lisboa', 777777777, '444444444', 28000, 3),
(2, 'OperadorLoja B', '1997-04-05', 'Rua Q, Porto', 888888888, '666666666', 30000, 2);

-- População de Livros
INSERT INTO Livro (idLivraria, titulo, preco, numPag, dataPub, quantidadeStock, editora) VALUES
(1, 'Livro 1', 20, 300, '2022-01-10', 50, 'Editora X'),
(2, 'Livro 2', 25, 250, '2021-05-15', 30, 'Editora Y');

-- População de Compras
INSERT INTO Compra (idCliente, idOperadorLoja, idLivro, data, precoTotal) VALUES
(1, 1, 1, '2023-01-20', 100),
(2, 2, 2, '2023-02-15', 75);

-- População de Informações de Compra
INSERT INTO InfoCompra (idLivro, idCompra, quantidade) VALUES
(1, 1, 3),
(2, 2, 2);

-- População de Gêneros
INSERT INTO Genero (nome) VALUES
('Ficção'),
('Não Ficção');

-- População de Autores
INSERT INTO Autor (nome, biografia) VALUES
('Autor 1', 'Biografia Autor 1'),
('Autor 2', 'Biografia Autor 2');

-- População de Autorias
INSERT INTO Autoria (idAutor, idLivro) VALUES
(1, 1),
(2, 2);

-- População de Horários de Atendimento
INSERT INTO HorarioAtendimento (idLivraria, diaUtil, horaAbertura, horaFecho) VALUES
(1, 1, '09:00:00', '18:00:00'),
(2, 1, '10:00:00', '17:30:00');
