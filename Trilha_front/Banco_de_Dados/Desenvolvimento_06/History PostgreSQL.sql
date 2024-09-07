--- 07-09-2024 08:35:05
--- PostgreSQL
DROP TABLE demo;

--- 07-09-2024 08:35:30
--- PostgreSQL
/***** ERROR ******
Error 42601 syntax error at or near "USE"
 ----- 
CREATE DATABASE ESCOLA;
USE ESCOLA;
*****/

--- 07-09-2024 08:37:04
--- PostgreSQL
/***** ERROR ******
Error 42601 syntax error at or near "USE"
 ----- 
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
*****/

--- 07-09-2024 08:37:10
--- PostgreSQL
CREATE TABLE ALUNO (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Matrícula INT,
    email VARCHAR(255),
    endereço VARCHAR(255),
    Telefone VARCHAR(20)
);

--- 07-09-2024 08:38:09
--- PostgreSQL
INSERT INTO ALUNO (ID, Nome, Matrícula, email, endereço, Telefone) VALUES
(1, 'Joao Carlos', 1234, 'Jcarlos@gmail.com', 'Rua 13 de Maio', '(11)7825-4489'),
(2, 'José Vitor', 2345, 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589'),
(3, 'Paulo André', 3456, 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');

--- 07-09-2024 08:38:44
--- PostgreSQL
/***** ERROR ******
Error 42704 type "datetime" does not exist
 ----- 
CREATE TABLE EMPRESTIMO (
    Codigo INT PRIMARY KEY,
    Data_hora DATETIME,
    Matrícula INT,
    Data_Devolucao DATE
);
*****/

--- 07-09-2024 08:41:48
--- PostgreSQL
CREATE TABLE EMPRESTIMO (
    Codigo INT PRIMARY KEY,
    Data_hora TIMESTAMP ,
    Matrícula INT,
    Data_Devolucao DATE
);

--- 07-09-2024 08:42:18
--- PostgreSQL
/***** ERROR ******
Error 42601 syntax error at or near "USE"
 ----- 
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
*****/

--- 07-09-2024 08:42:26
--- PostgreSQL
INSERT INTO EMPRESTIMO (Codigo, Data_hora, Matrícula, Data_Devolucao) VALUES
(1, '2022-03-12 15:25:00', 1234, '2022-03-15'),
(2, '2022-03-15 14:32:00', 3456, '2022-03-18'),
(3, '2022-03-20 03:51:00', 2345, '2022-03-23');

--- 07-09-2024 08:44:19
--- PostgreSQL
CREATE TABLE LIVRO_EMPRESTIMO (
    Cod_livro INT,
    Cod_Emprestimo INT,
    PRIMARY KEY (Cod_livro, Cod_Emprestimo)
);

--- 07-09-2024 08:44:41
--- PostgreSQL
INSERT INTO LIVRO_EMPRESTIMO (Cod_livro, Cod_Emprestimo) VALUES
(3, 1),
(1, 3),
(2, 2);

--- 07-09-2024 08:46:14
--- PostgreSQL
/***** ERROR ******
Error 42P01 relation "sessao" does not exist
 ----- 
CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT,
    FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);
*****/

--- 07-09-2024 08:46:26
--- PostgreSQL
/***** ERROR ******
Error 42P01 relation "sessao" does not exist
 ----- 
CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT,
    FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);
*****/

--- 07-09-2024 08:46:48
--- PostgreSQL
/***** ERROR ******
Error 42601 syntax error at or near "USE"
 ----- 
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


CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT,
    FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);
*****/

--- 07-09-2024 08:47:03
--- PostgreSQL
CREATE TABLE SESSAO (
    Codigo INT PRIMARY KEY,
    Descricao VARCHAR(255),
    Localizacao VARCHAR(255)
);

--- 07-09-2024 08:47:18
--- PostgreSQL
INSERT INTO SESSAO (Codigo, Descricao, Localizacao) VALUES
(1, 'Sessao1', 'Partilheira1'),
(2, 'Sessao2', 'Partilheira2'),
(3, 'Sessao3', 'Partilheira3');

--- 07-09-2024 08:48:02
--- PostgreSQL
CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT,
    FOREIGN KEY (Cod_Sessao) REFERENCES SESSAO(Codigo)
);

--- 07-09-2024 08:48:19
--- PostgreSQL
INSERT INTO LIVRO (Cod_livro, Titulo, Autor, Cod_Sessao) VALUES
(1, 'Modelo Conceitual e Diagramas ER', 'Pressman, Roger S.', 3),
(2, 'Livro 2: Modelo Relacional Àlgebra Relacional', 'Heuser, Carlos Alberto', 1),
(3, 'Livro 3: Linguagem SQL', 'Beighley, Lynn', 2);

