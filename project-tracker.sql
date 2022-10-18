--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: projects; Type: TABLE; Schema: public; Owner: shirleycrenshaw
--

CREATE TABLE public.projects (
    title character varying(30) NOT NULL,
    description character varying(500),
    max_grade integer
);


ALTER TABLE public.projects OWNER TO shirleycrenshaw;

--
-- Name: students; Type: TABLE; Schema: public; Owner: shirleycrenshaw
--

CREATE TABLE public.students (
    github integer NOT NULL,
    first_name character varying(30),
    last_name character varying(30),
    github_username character varying(30)
);


ALTER TABLE public.students OWNER TO shirleycrenshaw;

--
-- Name: students_github_seq; Type: SEQUENCE; Schema: public; Owner: shirleycrenshaw
--

CREATE SEQUENCE public.students_github_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_github_seq OWNER TO shirleycrenshaw;

--
-- Name: students_github_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shirleycrenshaw
--

ALTER SEQUENCE public.students_github_seq OWNED BY public.students.github;


--
-- Name: students github; Type: DEFAULT; Schema: public; Owner: shirleycrenshaw
--

ALTER TABLE ONLY public.students ALTER COLUMN github SET DEFAULT nextval('public.students_github_seq'::regclass);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: shirleycrenshaw
--

COPY public.projects (title, description, max_grade) FROM stdin;
Markov	\t\nTweets generated from Markov chains	50
Blockly	Programmatic Logic Puzzle Game\n	100
Jackson	Mount Olympus\n	70
Rhimes	Grey Scamdal\n	90
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: shirleycrenshaw
--

COPY public.students (github, first_name, last_name, github_username) FROM stdin;
2	Shirley	Ann	\N
3	Raquel	Dias	\N
4	Sarah	Pepita	sdevelops
1	Jane	Hacker	jhacks
\.


--
-- Name: students_github_seq; Type: SEQUENCE SET; Schema: public; Owner: shirleycrenshaw
--

SELECT pg_catalog.setval('public.students_github_seq', 4, true);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: shirleycrenshaw
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: shirleycrenshaw
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

