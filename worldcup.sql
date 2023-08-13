--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (6, 2018, 'Final', 9, 10, 4, 2);
INSERT INTO public.games VALUES (7, 2018, 'Third Place', 11, 12, 2, 0);
INSERT INTO public.games VALUES (8, 2018, 'Semi-Final', 10, 12, 2, 1);
INSERT INTO public.games VALUES (9, 2018, 'Semi-Final', 9, 11, 1, 0);
INSERT INTO public.games VALUES (10, 2018, 'Quarter-Final', 10, 13, 3, 2);
INSERT INTO public.games VALUES (11, 2018, 'Quarter-Final', 12, 14, 2, 0);
INSERT INTO public.games VALUES (12, 2018, 'Quarter-Final', 11, 15, 2, 1);
INSERT INTO public.games VALUES (13, 2018, 'Quarter-Final', 9, 16, 2, 0);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 12, 17, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 14, 18, 1, 0);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 11, 19, 3, 2);
INSERT INTO public.games VALUES (17, 2018, 'Eighth-Final', 15, 20, 2, 0);
INSERT INTO public.games VALUES (18, 2018, 'Eighth-Final', 10, 21, 2, 1);
INSERT INTO public.games VALUES (19, 2018, 'Eighth-Final', 13, 22, 2, 1);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 16, 23, 2, 1);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 9, 24, 4, 3);
INSERT INTO public.games VALUES (22, 2014, 'Final', 25, 24, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Third Place', 26, 15, 3, 0);
INSERT INTO public.games VALUES (24, 2014, 'Semi-Final', 24, 26, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Semi-Final', 25, 15, 7, 1);
INSERT INTO public.games VALUES (26, 2014, 'Quarter-Final', 26, 27, 1, 0);
INSERT INTO public.games VALUES (27, 2014, 'Quarter-Final', 24, 11, 1, 0);
INSERT INTO public.games VALUES (28, 2014, 'Quarter-Final', 15, 17, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Quarter-Final', 25, 9, 1, 0);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 15, 28, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 17, 16, 2, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 9, 29, 2, 0);
INSERT INTO public.games VALUES (33, 2014, 'Eighth-Final', 25, 30, 2, 1);
INSERT INTO public.games VALUES (34, 2014, 'Eighth-Final', 26, 20, 2, 1);
INSERT INTO public.games VALUES (35, 2014, 'Eighth-Final', 27, 31, 2, 1);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 24, 18, 1, 0);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 11, 32, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (9, 'France');
INSERT INTO public.teams VALUES (10, 'Croatia');
INSERT INTO public.teams VALUES (11, 'Belgium');
INSERT INTO public.teams VALUES (12, 'England');
INSERT INTO public.teams VALUES (13, 'Russia');
INSERT INTO public.teams VALUES (14, 'Sweden');
INSERT INTO public.teams VALUES (15, 'Brazil');
INSERT INTO public.teams VALUES (16, 'Uruguay');
INSERT INTO public.teams VALUES (17, 'Colombia');
INSERT INTO public.teams VALUES (18, 'Switzerland');
INSERT INTO public.teams VALUES (19, 'Japan');
INSERT INTO public.teams VALUES (20, 'Mexico');
INSERT INTO public.teams VALUES (21, 'Denmark');
INSERT INTO public.teams VALUES (22, 'Spain');
INSERT INTO public.teams VALUES (23, 'Portugal');
INSERT INTO public.teams VALUES (24, 'Argentina');
INSERT INTO public.teams VALUES (25, 'Germany');
INSERT INTO public.teams VALUES (26, 'Netherlands');
INSERT INTO public.teams VALUES (27, 'Costa Rica');
INSERT INTO public.teams VALUES (28, 'Chile');
INSERT INTO public.teams VALUES (29, 'Nigeria');
INSERT INTO public.teams VALUES (30, 'Algeria');
INSERT INTO public.teams VALUES (31, 'Greece');
INSERT INTO public.teams VALUES (32, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

