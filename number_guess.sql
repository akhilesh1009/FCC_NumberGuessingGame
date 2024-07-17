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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    guesses integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 444);
INSERT INTO public.games VALUES (2, 1, 186);
INSERT INTO public.games VALUES (3, 2, 8);
INSERT INTO public.games VALUES (4, 2, 469);
INSERT INTO public.games VALUES (5, 1, 750);
INSERT INTO public.games VALUES (6, 1, 985);
INSERT INTO public.games VALUES (7, 1, 544);
INSERT INTO public.games VALUES (8, 3, 10);
INSERT INTO public.games VALUES (9, 4, 444);
INSERT INTO public.games VALUES (10, 4, 577);
INSERT INTO public.games VALUES (11, 5, 747);
INSERT INTO public.games VALUES (12, 5, 269);
INSERT INTO public.games VALUES (13, 4, 780);
INSERT INTO public.games VALUES (14, 4, 995);
INSERT INTO public.games VALUES (15, 4, 326);
INSERT INTO public.games VALUES (16, 6, 717);
INSERT INTO public.games VALUES (17, 6, 125);
INSERT INTO public.games VALUES (18, 7, 764);
INSERT INTO public.games VALUES (19, 7, 731);
INSERT INTO public.games VALUES (20, 6, 310);
INSERT INTO public.games VALUES (21, 6, 971);
INSERT INTO public.games VALUES (22, 6, 521);
INSERT INTO public.games VALUES (23, 8, 501);
INSERT INTO public.games VALUES (24, 8, 842);
INSERT INTO public.games VALUES (25, 9, 434);
INSERT INTO public.games VALUES (26, 9, 666);
INSERT INTO public.games VALUES (27, 8, 120);
INSERT INTO public.games VALUES (28, 8, 251);
INSERT INTO public.games VALUES (29, 8, 590);
INSERT INTO public.games VALUES (30, 10, 998);
INSERT INTO public.games VALUES (31, 10, 218);
INSERT INTO public.games VALUES (32, 11, 959);
INSERT INTO public.games VALUES (33, 11, 86);
INSERT INTO public.games VALUES (34, 10, 899);
INSERT INTO public.games VALUES (35, 10, 311);
INSERT INTO public.games VALUES (36, 10, 318);
INSERT INTO public.games VALUES (37, 12, 381);
INSERT INTO public.games VALUES (38, 12, 921);
INSERT INTO public.games VALUES (39, 13, 729);
INSERT INTO public.games VALUES (40, 13, 345);
INSERT INTO public.games VALUES (41, 12, 853);
INSERT INTO public.games VALUES (42, 12, 893);
INSERT INTO public.games VALUES (43, 12, 387);
INSERT INTO public.games VALUES (44, 14, 573);
INSERT INTO public.games VALUES (45, 14, 152);
INSERT INTO public.games VALUES (46, 15, 487);
INSERT INTO public.games VALUES (47, 15, 241);
INSERT INTO public.games VALUES (48, 14, 840);
INSERT INTO public.games VALUES (49, 14, 469);
INSERT INTO public.games VALUES (50, 14, 484);
INSERT INTO public.games VALUES (51, 16, 294);
INSERT INTO public.games VALUES (52, 16, 147);
INSERT INTO public.games VALUES (53, 17, 974);
INSERT INTO public.games VALUES (54, 17, 330);
INSERT INTO public.games VALUES (55, 16, 352);
INSERT INTO public.games VALUES (56, 16, 639);
INSERT INTO public.games VALUES (57, 16, 470);
INSERT INTO public.games VALUES (58, 18, 314);
INSERT INTO public.games VALUES (59, 18, 272);
INSERT INTO public.games VALUES (60, 19, 99);
INSERT INTO public.games VALUES (61, 19, 593);
INSERT INTO public.games VALUES (62, 18, 46);
INSERT INTO public.games VALUES (63, 18, 988);
INSERT INTO public.games VALUES (64, 18, 980);
INSERT INTO public.games VALUES (65, 20, 262);
INSERT INTO public.games VALUES (66, 20, 487);
INSERT INTO public.games VALUES (67, 21, 668);
INSERT INTO public.games VALUES (68, 21, 393);
INSERT INTO public.games VALUES (69, 20, 59);
INSERT INTO public.games VALUES (70, 20, 690);
INSERT INTO public.games VALUES (71, 20, 595);
INSERT INTO public.games VALUES (72, 22, 333);
INSERT INTO public.games VALUES (73, 22, 925);
INSERT INTO public.games VALUES (74, 23, 703);
INSERT INTO public.games VALUES (75, 23, 217);
INSERT INTO public.games VALUES (76, 22, 779);
INSERT INTO public.games VALUES (77, 22, 672);
INSERT INTO public.games VALUES (78, 22, 974);
INSERT INTO public.games VALUES (79, 24, 683);
INSERT INTO public.games VALUES (80, 24, 392);
INSERT INTO public.games VALUES (81, 25, 258);
INSERT INTO public.games VALUES (82, 25, 357);
INSERT INTO public.games VALUES (83, 24, 472);
INSERT INTO public.games VALUES (84, 24, 365);
INSERT INTO public.games VALUES (85, 24, 657);
INSERT INTO public.games VALUES (86, 26, 469);
INSERT INTO public.games VALUES (87, 26, 720);
INSERT INTO public.games VALUES (88, 27, 263);
INSERT INTO public.games VALUES (89, 27, 734);
INSERT INTO public.games VALUES (90, 26, 803);
INSERT INTO public.games VALUES (91, 26, 798);
INSERT INTO public.games VALUES (92, 26, 79);
INSERT INTO public.games VALUES (93, 28, 113);
INSERT INTO public.games VALUES (94, 28, 685);
INSERT INTO public.games VALUES (95, 29, 419);
INSERT INTO public.games VALUES (96, 29, 404);
INSERT INTO public.games VALUES (97, 28, 491);
INSERT INTO public.games VALUES (98, 28, 911);
INSERT INTO public.games VALUES (99, 28, 835);
INSERT INTO public.games VALUES (100, 30, 314);
INSERT INTO public.games VALUES (101, 30, 191);
INSERT INTO public.games VALUES (102, 31, 937);
INSERT INTO public.games VALUES (103, 31, 393);
INSERT INTO public.games VALUES (104, 30, 679);
INSERT INTO public.games VALUES (105, 30, 680);
INSERT INTO public.games VALUES (106, 30, 891);
INSERT INTO public.games VALUES (107, 32, 98);
INSERT INTO public.games VALUES (108, 32, 667);
INSERT INTO public.games VALUES (109, 33, 416);
INSERT INTO public.games VALUES (110, 33, 733);
INSERT INTO public.games VALUES (111, 32, 625);
INSERT INTO public.games VALUES (112, 32, 255);
INSERT INTO public.games VALUES (113, 32, 473);
INSERT INTO public.games VALUES (114, 34, 553);
INSERT INTO public.games VALUES (115, 34, 656);
INSERT INTO public.games VALUES (116, 35, 384);
INSERT INTO public.games VALUES (117, 35, 913);
INSERT INTO public.games VALUES (118, 34, 780);
INSERT INTO public.games VALUES (119, 34, 158);
INSERT INTO public.games VALUES (120, 34, 265);
INSERT INTO public.games VALUES (121, 36, 383);
INSERT INTO public.games VALUES (122, 36, 47);
INSERT INTO public.games VALUES (123, 37, 758);
INSERT INTO public.games VALUES (124, 37, 756);
INSERT INTO public.games VALUES (125, 36, 707);
INSERT INTO public.games VALUES (126, 36, 173);
INSERT INTO public.games VALUES (127, 36, 542);
INSERT INTO public.games VALUES (128, 38, 68);
INSERT INTO public.games VALUES (129, 38, 32);
INSERT INTO public.games VALUES (130, 39, 656);
INSERT INTO public.games VALUES (131, 39, 47);
INSERT INTO public.games VALUES (132, 38, 816);
INSERT INTO public.games VALUES (133, 38, 35);
INSERT INTO public.games VALUES (134, 38, 124);
INSERT INTO public.games VALUES (135, 40, 353);
INSERT INTO public.games VALUES (136, 40, 699);
INSERT INTO public.games VALUES (137, 41, 602);
INSERT INTO public.games VALUES (138, 41, 516);
INSERT INTO public.games VALUES (139, 40, 32);
INSERT INTO public.games VALUES (140, 40, 625);
INSERT INTO public.games VALUES (141, 40, 438);
INSERT INTO public.games VALUES (142, 42, 899);
INSERT INTO public.games VALUES (143, 42, 266);
INSERT INTO public.games VALUES (144, 43, 285);
INSERT INTO public.games VALUES (145, 43, 248);
INSERT INTO public.games VALUES (146, 42, 405);
INSERT INTO public.games VALUES (147, 42, 665);
INSERT INTO public.games VALUES (148, 42, 797);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1721245697684', 2, 8);
INSERT INTO public.users VALUES (1, 'user_1721245697685', 5, 186);
INSERT INTO public.users VALUES (3, 'Akhilesh', 1, 10);
INSERT INTO public.users VALUES (21, 'user_1721246072758', 2, 393);
INSERT INTO public.users VALUES (5, 'user_1721245753611', 2, 269);
INSERT INTO public.users VALUES (20, 'user_1721246072759', 5, 59);
INSERT INTO public.users VALUES (4, 'user_1721245753612', 5, 326);
INSERT INTO public.users VALUES (7, 'user_1721245793657', 2, 731);
INSERT INTO public.users VALUES (23, 'user_1721246617324', 2, 217);
INSERT INTO public.users VALUES (6, 'user_1721245793658', 5, 125);
INSERT INTO public.users VALUES (22, 'user_1721246617325', 5, 333);
INSERT INTO public.users VALUES (9, 'user_1721245951595', 2, 434);
INSERT INTO public.users VALUES (8, 'user_1721245951596', 5, 120);
INSERT INTO public.users VALUES (11, 'user_1721245954488', 2, 86);
INSERT INTO public.users VALUES (25, 'user_1721246625350', 2, 258);
INSERT INTO public.users VALUES (10, 'user_1721245954489', 5, 218);
INSERT INTO public.users VALUES (24, 'user_1721246625351', 5, 365);
INSERT INTO public.users VALUES (26, 'user_1721246716112', 0, NULL);
INSERT INTO public.users VALUES (13, 'user_1721246007984', 2, 345);
INSERT INTO public.users VALUES (27, 'user_1721246716111', 0, NULL);
INSERT INTO public.users VALUES (12, 'user_1721246007985', 5, 381);
INSERT INTO public.users VALUES (15, 'user_1721246010220', 2, 241);
INSERT INTO public.users VALUES (29, 'user_1721246785899', 2, 404);
INSERT INTO public.users VALUES (14, 'user_1721246010221', 5, 152);
INSERT INTO public.users VALUES (28, 'user_1721246785900', 5, 113);
INSERT INTO public.users VALUES (17, 'user_1721246018653', 2, 330);
INSERT INTO public.users VALUES (16, 'user_1721246018654', 5, 147);
INSERT INTO public.users VALUES (19, 'user_1721246023187', 2, 99);
INSERT INTO public.users VALUES (31, 'user_1721246943358', 2, 393);
INSERT INTO public.users VALUES (18, 'user_1721246023188', 5, 46);
INSERT INTO public.users VALUES (30, 'user_1721246943359', 5, 191);
INSERT INTO public.users VALUES (32, 'user_1721246996014', 0, NULL);
INSERT INTO public.users VALUES (33, 'user_1721246996013', 0, NULL);
INSERT INTO public.users VALUES (34, 'user_1721247068617', 0, NULL);
INSERT INTO public.users VALUES (35, 'user_1721247068616', 0, NULL);
INSERT INTO public.users VALUES (36, 'user_1721247083193', 0, NULL);
INSERT INTO public.users VALUES (37, 'user_1721247083192', 0, NULL);
INSERT INTO public.users VALUES (38, 'user_1721247106247', 0, NULL);
INSERT INTO public.users VALUES (39, 'user_1721247106246', 0, NULL);
INSERT INTO public.users VALUES (40, 'user_1721247109049', 0, NULL);
INSERT INTO public.users VALUES (41, 'user_1721247109048', 0, NULL);
INSERT INTO public.users VALUES (42, 'user_1721247207370', 0, NULL);
INSERT INTO public.users VALUES (43, 'user_1721247207369', 0, NULL);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 148, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

