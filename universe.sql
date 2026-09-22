--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: anything; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.anything (
    anything_id integer NOT NULL,
    name character varying(30) NOT NULL,
    any_third integer
);


ALTER TABLE public.anything OWNER TO freecodecamp;

--
-- Name: anything_anything_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.anything_anything_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anything_anything_id_seq OWNER TO freecodecamp;

--
-- Name: anything_anything_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.anything_anything_id_seq OWNED BY public.anything.anything_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    scientific_name text NOT NULL,
    distance double precision
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    radius numeric(4,1) NOT NULL,
    can_have_life boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    radius numeric(4,1) NOT NULL,
    can_have_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    radius numeric(4,1) NOT NULL,
    can_have_life boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: anything anything_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anything ALTER COLUMN anything_id SET DEFAULT nextval('public.anything_anything_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: anything; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.anything VALUES (1, 'any', NULL);
INSERT INTO public.anything VALUES (3, 'any2', NULL);
INSERT INTO public.anything VALUES (4, 'any3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 100000, 'g1', 100000.1);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 100000, 'g2', 100000.1);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 100000, 'g3', 100000.1);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 100000, 'g4', 100000.1);
INSERT INTO public.galaxy VALUES (5, 'galaxy0', 100000, 'g0', 100000.1);
INSERT INTO public.galaxy VALUES (6, 'galaxy5', 10000, 'g5', 10000.1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (2, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (3, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (4, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (5, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (6, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (7, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (8, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (9, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (10, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (11, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (12, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (13, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (14, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (15, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (16, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (17, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (18, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (19, 'moon', 11111, 134.1, false, 2);
INSERT INTO public.moon VALUES (20, 'moon', 11111, 134.1, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'planet0', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (3, 'planet1', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (4, 'planet2', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (5, 'planet3', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (6, 'planet4', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (7, 'planet5', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (8, 'planet6', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (9, 'planet7', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (10, 'planet8', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (11, 'planet9', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (12, 'planet10', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (13, 'planet11', 11111, 134.1, false, 2);
INSERT INTO public.planet VALUES (14, 'planet12', 11111, 134.1, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'star0', 11111, 134.1, false, 1);
INSERT INTO public.star VALUES (4, 'star1', 11111, 134.1, false, 1);
INSERT INTO public.star VALUES (5, 'star2', 11111, 134.1, false, 1);
INSERT INTO public.star VALUES (6, 'star3', 11111, 134.1, false, 1);
INSERT INTO public.star VALUES (7, 'star4', 11111, 134.1, false, 1);
INSERT INTO public.star VALUES (8, 'star5', 11111, 134.1, false, 1);


--
-- Name: anything_anything_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.anything_anything_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: anything anything_anything_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anything
    ADD CONSTRAINT anything_anything_id_key UNIQUE (anything_id);


--
-- Name: anything anything_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anything
    ADD CONSTRAINT anything_name_key UNIQUE (name);


--
-- Name: anything anything_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anything
    ADD CONSTRAINT anything_pkey PRIMARY KEY (anything_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_scientific_name_key UNIQUE (scientific_name);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

