--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aluno; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aluno (
    id integer NOT NULL,
    nome character varying(255),
    "matrícula" integer,
    email character varying(255),
    "endereço" character varying(255),
    telefone character varying(20)
);


--
-- Name: emprestimo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.emprestimo (
    codigo integer NOT NULL,
    data_hora timestamp without time zone,
    "matrícula" integer,
    data_devolucao date
);


--
-- Name: livro; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.livro (
    cod_livro integer NOT NULL,
    titulo character varying(255),
    autor character varying(255),
    cod_sessao integer
);


--
-- Name: livro_emprestimo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.livro_emprestimo (
    cod_livro integer NOT NULL,
    cod_emprestimo integer NOT NULL
);


--
-- Name: sessao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessao (
    codigo integer NOT NULL,
    descricao character varying(255),
    localizacao character varying(255)
);


--
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id);


--
-- Name: emprestimo emprestimo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_pkey PRIMARY KEY (codigo);


--
-- Name: livro_emprestimo livro_emprestimo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.livro_emprestimo
    ADD CONSTRAINT livro_emprestimo_pkey PRIMARY KEY (cod_livro, cod_emprestimo);


--
-- Name: livro livro_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (cod_livro);


--
-- Name: sessao sessao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_pkey PRIMARY KEY (codigo);


--
-- Name: livro livro_cod_sessao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_cod_sessao_fkey FOREIGN KEY (cod_sessao) REFERENCES public.sessao(codigo);


--
-- PostgreSQL database dump complete
--

