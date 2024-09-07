CREATE DATABASE ESCOLA;
USE ESCOLA;


CREATE TABLE ALUNO (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Matrícula INT,
    email VARCHAR(255),
    endereço VARCHAR(255),
    Telefone VARCHAR(20)
);


INSERT INTO ALUNO (ID, Nome, Matrícula, email, endereço, Telefone) VALUES
(1, 'Joao Carlos', 1234, 'Jcarlos@gmail.com', 'Rua 13 de Maio', '(11)7825-4489'),
(2, 'José Vitor', 2345, 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589'),
(3, 'Paulo André', 3456, 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');



CREATE TABLE EMPRESTIMO (
    Codigo INT PRIMARY KEY,
    Data_hora TIMESTAMP ,
    Matrícula INT,
    Data_Devolucao DATE
);


INSERT INTO EMPRESTIMO (Codigo, Data_hora, Matrícula, Data_Devolucao) VALUES
(1, '2022-03-12 15:25:00', 1234, '2022-03-15'),
(2, '2022-03-15 14:32:00', 3456, '2022-03-18'),
(3, '2022-03-20 03:51:00', 2345, '2022-03-23');

CREATE TABLE LIVRO_EMPRESTIMO (
    Cod_livro INT,
    Cod_Emprestimo INT,
    PRIMARY KEY (Cod_livro, Cod_Emprestimo)
);


INSERT INTO LIVRO_EMPRESTIMO (Cod_livro, Cod_Emprestimo) VALUES
(3, 1),
(1, 3),
(2, 2);


CREATE TABLE SESSAO (
    Codigo INT PRIMARY KEY,
    Descricao VARCHAR(255),
    Localizacao VARCHAR(255)
);

INSERT INTO SESSAO (Codigo, Descricao, Localizacao) VALUES
(1, 'Sessao1', 'Partilheira1'),
(2, 'Sessao2', 'Partilheira2'),
(3, 'Sessao3', 'Partilheira3');



CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT,
    FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);


INSERT INTO LIVRO (Cod_livro, Titulo, Autor, Cod_Sessao) VALUES
(1, 'Modelo Conceitual e Diagramas ER', 'Pressman, Roger S.', 3),
(2, 'Livro 2: Modelo Relacional Àlgebra Relacional', 'Heuser, Carlos Alberto', 1),
(3, 'Livro 3: Linguagem SQL', 'Beighley, Lynn', 2);


CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT,
    FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);

