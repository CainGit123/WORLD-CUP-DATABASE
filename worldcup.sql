--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (437, 2018, 'Final', 4, 2, 619, 620);
INSERT INTO public.games VALUES (438, 2018, 'Third Place', 2, 0, 621, 622);
INSERT INTO public.games VALUES (439, 2018, 'Semi-Final', 2, 1, 620, 622);
INSERT INTO public.games VALUES (440, 2018, 'Semi-Final', 1, 0, 619, 621);
INSERT INTO public.games VALUES (441, 2018, 'Quarter-Final', 3, 2, 620, 623);
INSERT INTO public.games VALUES (442, 2018, 'Quarter-Final', 2, 0, 622, 624);
INSERT INTO public.games VALUES (443, 2018, 'Quarter-Final', 2, 1, 621, 625);
INSERT INTO public.games VALUES (444, 2018, 'Quarter-Final', 2, 0, 619, 626);
INSERT INTO public.games VALUES (445, 2018, 'Eighth-Final', 2, 1, 622, 627);
INSERT INTO public.games VALUES (446, 2018, 'Eighth-Final', 1, 0, 624, 628);
INSERT INTO public.games VALUES (447, 2018, 'Eighth-Final', 3, 2, 621, 629);
INSERT INTO public.games VALUES (448, 2018, 'Eighth-Final', 2, 0, 625, 630);
INSERT INTO public.games VALUES (449, 2018, 'Eighth-Final', 2, 1, 620, 631);
INSERT INTO public.games VALUES (450, 2018, 'Eighth-Final', 2, 1, 623, 632);
INSERT INTO public.games VALUES (451, 2018, 'Eighth-Final', 2, 1, 626, 633);
INSERT INTO public.games VALUES (452, 2018, 'Eighth-Final', 4, 3, 619, 634);
INSERT INTO public.games VALUES (453, 2014, 'Final', 1, 0, 635, 634);
INSERT INTO public.games VALUES (454, 2014, 'Third Place', 3, 0, 636, 625);
INSERT INTO public.games VALUES (455, 2014, 'Semi-Final', 1, 0, 634, 636);
INSERT INTO public.games VALUES (456, 2014, 'Semi-Final', 7, 1, 635, 625);
INSERT INTO public.games VALUES (457, 2014, 'Quarter-Final', 1, 0, 636, 637);
INSERT INTO public.games VALUES (458, 2014, 'Quarter-Final', 1, 0, 634, 621);
INSERT INTO public.games VALUES (459, 2014, 'Quarter-Final', 2, 1, 625, 627);
INSERT INTO public.games VALUES (460, 2014, 'Quarter-Final', 1, 0, 635, 619);
INSERT INTO public.games VALUES (461, 2014, 'Eighth-Final', 2, 1, 625, 638);
INSERT INTO public.games VALUES (462, 2014, 'Eighth-Final', 2, 0, 627, 626);
INSERT INTO public.games VALUES (463, 2014, 'Eighth-Final', 2, 0, 619, 639);
INSERT INTO public.games VALUES (464, 2014, 'Eighth-Final', 2, 1, 635, 640);
INSERT INTO public.games VALUES (465, 2014, 'Eighth-Final', 2, 1, 636, 630);
INSERT INTO public.games VALUES (466, 2014, 'Eighth-Final', 2, 1, 637, 641);
INSERT INTO public.games VALUES (467, 2014, 'Eighth-Final', 1, 0, 634, 628);
INSERT INTO public.games VALUES (468, 2014, 'Eighth-Final', 2, 1, 621, 642);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (619, 'France');
INSERT INTO public.teams VALUES (620, 'Croatia');
INSERT INTO public.teams VALUES (621, 'Belgium');
INSERT INTO public.teams VALUES (622, 'England');
INSERT INTO public.teams VALUES (623, 'Russia');
INSERT INTO public.teams VALUES (624, 'Sweden');
INSERT INTO public.teams VALUES (625, 'Brazil');
INSERT INTO public.teams VALUES (626, 'Uruguay');
INSERT INTO public.teams VALUES (627, 'Colombia');
INSERT INTO public.teams VALUES (628, 'Switzerland');
INSERT INTO public.teams VALUES (629, 'Japan');
INSERT INTO public.teams VALUES (630, 'Mexico');
INSERT INTO public.teams VALUES (631, 'Denmark');
INSERT INTO public.teams VALUES (632, 'Spain');
INSERT INTO public.teams VALUES (633, 'Portugal');
INSERT INTO public.teams VALUES (634, 'Argentina');
INSERT INTO public.teams VALUES (635, 'Germany');
INSERT INTO public.teams VALUES (636, 'Netherlands');
INSERT INTO public.teams VALUES (637, 'Costa Rica');
INSERT INTO public.teams VALUES (638, 'Chile');
INSERT INTO public.teams VALUES (639, 'Nigeria');
INSERT INTO public.teams VALUES (640, 'Algeria');
INSERT INTO public.teams VALUES (641, 'Greece');
INSERT INTO public.teams VALUES (642, 'United States');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 468, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 642, true);


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

