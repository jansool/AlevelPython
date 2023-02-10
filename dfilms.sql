--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8
-- Dumped by pg_dump version 13.8

-- Started on 2023-02-10 23:36:37

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
-- TOC entry 201 (class 1259 OID 24754)
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actors_id integer NOT NULL,
    name text NOT NULL,
    bdate date
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24752)
-- Name: actors_actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_actors_id_seq OWNER TO postgres;

--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 200
-- Name: actors_actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_actors_id_seq OWNED BY public.actors.actors_id;


--
-- TOC entry 206 (class 1259 OID 24779)
-- Name: actors_films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors_films (
    actors_id integer NOT NULL,
    films_id integer NOT NULL
);


ALTER TABLE public.actors_films OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24772)
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    directors_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24770)
-- Name: directors_directors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directors_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_directors_id_seq OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 204
-- Name: directors_directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directors_directors_id_seq OWNED BY public.directors.directors_id;


--
-- TOC entry 207 (class 1259 OID 24782)
-- Name: directors_films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors_films (
    directors_id integer NOT NULL,
    films_id integer NOT NULL
);


ALTER TABLE public.directors_films OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24763)
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    films_id integer NOT NULL,
    title text NOT NULL,
    budget integer
);


ALTER TABLE public.films OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24761)
-- Name: films_films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_films_id_seq OWNER TO postgres;

--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 202
-- Name: films_films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_films_id_seq OWNED BY public.films.films_id;


--
-- TOC entry 2873 (class 2604 OID 24757)
-- Name: actors actors_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN actors_id SET DEFAULT nextval('public.actors_actors_id_seq'::regclass);


--
-- TOC entry 2875 (class 2604 OID 24775)
-- Name: directors directors_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors ALTER COLUMN directors_id SET DEFAULT nextval('public.directors_directors_id_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 24766)
-- Name: films films_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN films_id SET DEFAULT nextval('public.films_films_id_seq'::regclass);


--
-- TOC entry 3007 (class 0 OID 24754)
-- Dependencies: 201
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.actors (actors_id, name, bdate) VALUES (1, 'Robert Downey Jr.', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (2, 'Terrence Howard', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (3, 'Gwyneth Paltrow', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (4, 'Edward Norton', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (5, 'Mickey Rourke', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (6, 'Don Cheadle', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (7, 'Scarlett Johansson', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (8, 'Samuel L. Jackson', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (9, 'Jon Favreau', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (10, 'Chris Hemsworth', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (11, 'Chris Evans', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (12, 'Sebastian Stan', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (13, 'Mark Ruffalo', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (14, 'Jeremy Renner', NULL);
INSERT INTO public.actors (actors_id, name, bdate) VALUES (15, 'Tom Hiddleston', NULL);


--
-- TOC entry 3012 (class 0 OID 24779)
-- Dependencies: 206
-- Data for Name: actors_films; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.actors_films (actors_id, films_id) VALUES (1, 1);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (1, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (1, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (2, 1);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (3, 1);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (3, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (4, 2);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (5, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (5, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (6, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (7, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (7, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (8, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (8, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (9, 3);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (10, 4);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (10, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (11, 5);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (11, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (12, 5);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (13, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (14, 6);
INSERT INTO public.actors_films (actors_id, films_id) VALUES (15, 6);


--
-- TOC entry 3011 (class 0 OID 24772)
-- Dependencies: 205
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.directors (directors_id, name) VALUES (1, 'Jon Favreau');
INSERT INTO public.directors (directors_id, name) VALUES (2, 'Louis Leterrier');
INSERT INTO public.directors (directors_id, name) VALUES (3, 'Taika Waititi');
INSERT INTO public.directors (directors_id, name) VALUES (4, 'Joe Johnston');
INSERT INTO public.directors (directors_id, name) VALUES (5, 'Joss Whedon');


--
-- TOC entry 3013 (class 0 OID 24782)
-- Dependencies: 207
-- Data for Name: directors_films; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3009 (class 0 OID 24763)
-- Dependencies: 203
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.films (films_id, title, budget) VALUES (1, 'Iron man', 140);
INSERT INTO public.films (films_id, title, budget) VALUES (2, 'The Incredible Hulk', 150);
INSERT INTO public.films (films_id, title, budget) VALUES (3, 'Iron Man 2', 200);
INSERT INTO public.films (films_id, title, budget) VALUES (4, 'Thor: Love and Thunder', 250);
INSERT INTO public.films (films_id, title, budget) VALUES (5, 'Captain America: The First Avenger', 140);
INSERT INTO public.films (films_id, title, budget) VALUES (6, 'The Avengers', 220);


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 200
-- Name: actors_actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_actors_id_seq', 15, true);


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 204
-- Name: directors_directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_directors_id_seq', 5, true);


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 202
-- Name: films_films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_films_id_seq', 6, true);


-- Completed on 2023-02-10 23:36:38

--
-- PostgreSQL database dump complete
--

