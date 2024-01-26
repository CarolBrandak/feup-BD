PRAGMA foreign_keys	= ON;

INSERT INTO Livraria (idLivraria, nome, morada, telefone) VALUES
  (1, 'Livraria do Porto', 'Avenida dos Livros, 456, 4200-332 Porto', '(+351) 93218596');

INSERT INTO Cliente (idCliente, nome, dataNascimento, morada, telefone, nif) VALUES
  (1, 'João Silva', '1990-05-15', 'Rua Principal, 123, 3700-891 Lisboa', '(+351) 932867532', '783612073'),
  (2, 'Maria Oliveira', '1985-08-22', 'Avenida Central, 456, 4200-452 Porto', '(+351) 932987469', '739562546'),
  (3, 'Carlos Pereira', '1995-03-10', 'Travessa das Flores, 789, 4200-763 Coimbra', '(+351) 932639174', '539826483'),
  (4, 'Rui Santos', '1982-11-25', 'Rua da Biblioteca, 12, 1000-007 Lisboa', '(+351) 987654321', '947284968'),
  (5, 'Sofia Almeida', '1995-07-08', 'Avenida das Histórias, 34, 2000-008 Porto', '(+351) 935678392', '375912726'),
  (6, 'Pedro Rodrigues', '1989-01-18', 'Travessa Literária, 56, 3000-009 Coimbra', '(+351) 934725497', '678402947'),
  (7, 'Inês Pereira', '1993-04-30', 'Rua dos Leitores, 78, 1000-010 Lisboa', '(+351) 987658921', '764923874'),
  (8, 'João Oliveira', '1987-06-12', 'Avenida das Páginas, 23, 2000-011 Porto', '(+351) 923745690', '947365498'),
  (9, 'Andreia Silva', '1997-08-05', 'Travessa dos Livros, 45, 3000-012 Coimbra', '(+351) 932495874', '657830298'),
  (10, 'Miguel Pereira', '1984-02-28', 'Rua Imaginária, 67, 1000-013 Lisboa', '(+351) 987676521', '8850394827');



INSERT INTO Gerente (idGerente, idLivraria, nome, dataNascimento, morada, telefone, nif, salario, anosServico) VALUES
  (1, 1, 'Ana Santos', '1980-04-20', 'Rua da Livraria, 12, 4200-001 Porto', '(+351) 987654321', '987654321', 50000.00, 5),
  (2, 1, 'José Pereira', '1975-11-15', 'Avenida dos Livros, 45, 2400-002 Porto', '(+351) 123456789', '123456789', 60000.00, 8),
  (3, 1, 'Marta Oliveira', '1988-08-10', 'Travessa das Páginas, 78, 4500-003 Porto', '(+351) 111222333', '111222333', 55000.00, 6),
  (4, 1, 'Rui Silva', '1985-07-25', 'Rua dos Escritores, 56, 4500-004 Porto', '(+351) 987654321', '444555666', 52000.00, 7),
  (5, 1, 'Sofia Pereira', '1990-12-15', 'Avenida Literária, 23, 4200-005 Porto', '(+351) 123456789', '777888999', 58000.00, 9),
  (6, 1, 'Miguel Santos', '1983-02-28', 'Travessa dos Livros, 34, 4200-006 Porto', '(+351) 111222333', '888777666', 51000.00, 4),
  (7, 1, 'Inês Oliveira', '1995-06-12', 'Rua Imaginária, 45, 4100-007 Porto', '(+351) 987654321', '222333444', 53000.00, 6),
  (8, 1, 'João Pereira', '1989-04-30', 'Avenida das Histórias, 67, 4200-008 Porto', '(+351) 123456789', '999888777', 56000.00, 5),
  (9, 1, 'Andreia Silva', '1992-08-05', 'Travessa dos Autores, 78, 3200-009 Porto', '(+351) 111222333', '111222444', 54000.00, 8),
  (10, 1, 'Ricardo Oliveira', '1987-01-18', 'Rua dos Leitores, 89, 4300-010 Porto', '(+351) 987654321', '555444333', 59000.00, 7);


INSERT INTO Operador (idOperador, idLivraria, nome, dataNascimento, morada, telefone, nif, salario, anosServico, funcao)
VALUES
  (1, 1,  'Rui Oliveira', '1992-06-25', 'Rua do Livreiro, 34, 5400-002 Porto', '(+351) 987654321', '987654322', 900.00, 3, 'Atendimento ao Cliente'),
  (2, 1, 'Sofia Pereira', '1990-12-15', 'Avenida das Páginas, 56, 1500-003 Porto', '(+351) 123456789', '123456788', 850.00, 2, 'Gestão de Estoque'),
  (3, 1, 'Miguel Silva', '1995-03-08', 'Travessa dos Livros, 78, 4200-004 Porto', '(+351) 111222333', '111222334', 950.00, 4, 'Vendas Online'),
  (4, 1, 'Luisa Rodrigues', '1992-06-25', 'Rua do Livreiro, 34, 2300-002 Porto', '(+351) 987654321', '987654322', 900.00, 3, 'Atendimento ao Cliente'),
  (5, 1, 'Pedro Almeida', '1991-04-18', 'Avenida do Leitor, 56, 3400-003 Porto', '(+351) 123456789', '123456788', 850.00, 2, 'Gestão de Estoque'),
  (6, 1, 'Marta Pereira', '1995-03-08', 'Travessa dos Livros, 78, 6700-004 Porto', '(+351) 111222333', '111222334', 950.00, 4, 'Vendas Online'),
  (7, 1, 'Ricardo Silva', '1990-08-12', 'Rua da Imaginação, 45, 4200-003 Porto', '(+351) 987654321', '987654323', 920.00, 5, 'Atendimento ao Cliente'),
  (8, 1, 'Sara Oliveira', '1993-11-25', 'Avenida dos Escritores, 67, 5500-004 Porto', '(+351) 123456789', '123456787', 880.00, 3, 'Gestão de Estoque'),
  (9, 1, 'Paulo Pereira', '1998-01-30', 'Travessa Literária, 89, 3300-005 Porto', '(+351) 111222333', '111222335', 910.00, 6, 'Vendas Online'),
  (10, 1, 'Hugo Almeida', '1988-02-28', 'Avenida das Páginas, 34, 2400-007 Porto', '(+351) 123456789', '555444333', 870.00, 2, 'Gestão de Estoque');

INSERT INTO OperadorLoja (idOperadorLoja, idLivraria, nome, dataNascimento, morada, telefone, nif, salario, anosServico)
VALUES
  (1, 1, 'Andreia Rodrigues', '1993-08-12', 'Rua dos Livros, 45, 4200-673 Porto', '(+351) 987654321', '987654323', 800.00, 2),
  (2, 1, 'Ricardo Almeida', '1991-04-18', 'Avenida do Leitor, 67, 5600-984 Porto', '(+351) 123456789', '123456787', 750.00, 1),
  (3, 1, 'Inês Pereira', '1994-11-05', 'Travessa das Histórias, 89, 4500-895 Porto', '(+351) 111222333', '111222335', 850.00, 3),
  (4, 1, 'Marta Santos', '1990-02-20', 'Rua da Imaginação, 12, 6700-006 Porto', '(+351) 987654321', '222333444', 820.00, 4),
  (5, 1, 'Hugo Oliveira', '1988-06-30', 'Avenida dos Escritores, 34, 4500-007 Porto', '(+351) 123456789', '555444333', 780.00, 2),
  (6, 1, 'Pedro Silva', '1996-09-15', 'Travessa Literária, 56, 5600-008 Porto', '(+351) 111222333', '777666555', 900.00, 5),
  (7, 1, 'Sara Almeida', '1995-12-10', 'Rua dos Leitores, 23, 4200-009 Porto', '(+351) 987654321', '333444555', 830.00, 3),
  (8, 1, 'João Pereira', '1993-03-25', 'Avenida das Páginas, 67, 4200-111 Porto', '(+351) 123456789', '999888777', 860.00, 1),
  (9, 1, 'Carla Oliveira', '1992-07-18', 'Travessa Imaginária, 89, 3200-311 Porto', '(+351) 111222333', '111222444', 870.00, 4),
  (10, 1, 'Rui Santos', '1994-05-05', 'Rua do Leitor, 34, 4500-012 Porto', '(+351) 987654321', '444555666', 840.00, 2);

INSERT INTO Livro (idLivro, idLivraria, titulo, preco, numPag, dataPub, quantidadeStock, editora) VALUES
  (1, 1, 'Aventuras na Biblioteca', 25.99, 300, '2022-01-15', 150, 'Editora Mundo Literário'),
  (2, 1, 'O Mistério do Livro Perdido', 19.99, 250, '2021-08-30', 120, 'Editora Enigmas Literários'),
  (3, 1, 'Viagem ao Mundo dos Livros', 29.99, 400, '2022-05-10', 200, 'Editora Imaginação Literária'),
  (4, 1, 'Segredos da Estante', 18.50, 200, '2022-03-05', 100, 'Editora Letras Mágicas'),
  (5, 1, 'O Último Capítulo', 22.99, 350, '2021-12-20', 180, 'Editora Suspense Literário'),
  (6, 1, 'O Reino dos Livros Perdidos', 27.50, 320, '2022-07-15', 160, 'Editora Fantasia Literária'),
  (7, 1, 'Renascer das Páginas', 21.99, 280, '2022-02-10', 130, 'Editora Histórias Vividas'),
  (8, 1, 'Amor Literário', 24.50, 240, '2021-10-25', 110, 'Editora Romances Encantadores'),
  (9, 1, 'Além das Palavras', 26.99, 310, '2022-09-05', 170, 'Editora Poesia Eterna'),
  (10, 1, 'O Labirinto dos Livros', 20.99, 270, '2022-04-18', 140, 'Editora Desafios Literários');

INSERT INTO Compra (idCompra, idCliente, idOperadorLoja, idLivro, data, precoTotal) VALUES
  (1, 1, 1, 1, '2023-01-20', 25.99),
  (2, 2, 2, 2, '2023-02-15', 19.99),
  (3, 3, 3, 3, '2023-03-10', 29.99),
  (4, 4, 4, 4, '2023-04-05', 18.50),
  (5, 5, 5, 5, '2023-05-20', 22.99),
  (6, 6, 6, 6, '2023-06-15', 27.50),
  (7, 7, 7, 7, '2023-07-10', 21.99),
  (8, 8, 8, 8, '2023-08-25', 24.50),
  (9, 9, 9, 9, '2023-09-30', 26.99),
  (10, 10, 10, 10, '2023-10-15', 20.99);

INSERT INTO InfoCompra (idInfoCompra, idLivro, idCompra, quantidade) VALUES
  (1, 1, 1, 1),
  (2, 2, 2, 1),
  (3, 3, 3, 1),
  (4, 4, 4, 1),
  (5, 5, 5, 1),
  (6, 6, 6, 1),
  (7, 7, 7, 1),
  (8, 8, 8, 1),
  (9, 9, 9, 1),
  (10, 10, 10, 1);

INSERT INTO Genero (idGenero, nome) VALUES
  (1, 'Ficção'),
  (2, 'Mistério'),
  (3, 'Romance'),
  (4, 'Fantasia'),
  (5, 'Ação'),
  (6, 'Aventura'),
  (7, 'Suspense'),
  (8, 'Histórico'),
  (9, 'Biografia'),
  (10, 'Terror');

INSERT INTO Autor (idAutor, nome, biografia) VALUES
  (1, 'João Silva', 'João Silva é um escritor renomado com várias obras de ficção científica.'),
  (2, 'Maria Oliveira', 'Maria Oliveira é uma autora best-seller conhecida por seus romances emocionantes.'),
  (3, 'Carlos Pereira', 'Carlos Pereira é um autor premiado de mistério e suspense.'),
  (4, 'Ana Santos', 'Ana Santos é uma escritora versátil, explorando diferentes gêneros literários.'),
  (5, 'Miguel Silva', 'Miguel Silva é um autor jovem e talentoso, contribuindo para a cena literária contemporânea.'),
  (6, 'Sofia Almeida', 'Sofia Almeida é uma poetisa reconhecida por sua sensibilidade e expressividade.'),
  (7, 'Pedro Rodrigues', 'Pedro Rodrigues é um autor de não ficção, compartilhando conhecimentos e experiências.'),
  (8, 'Inês Pereira', 'Inês Pereira é uma escritora de romances históricos, transportando leitores para diferentes épocas.'),
  (9, 'Rui Santos', 'Rui Santos é um autor de suspense, mantendo os leitores à beira de seus assentos.'),
  (10, 'Marta Oliveira', 'Marta Oliveira é uma autora de fantasia, criando mundos imaginários e personagens cativantes.');

INSERT INTO Autoria (idAutor, idLivro) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

INSERT INTO HorarioAtendimento (idHorarioAtendimento, idLivraria, diaUtil, horaAbertura, horaFecho) VALUES
  (1, 1, 'Segunda a Sexta', '09:00:00', '18:00:00'),
  (2, 1, 'Sábado', '09:30:00', '12:30:00');
