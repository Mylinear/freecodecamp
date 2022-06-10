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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age numeric,
    description text,
    distance numeric(7,1),
    name character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    air boolean,
    planet_id integer NOT NULL,
    description character varying(60)
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
    air boolean,
    age integer,
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
    name character varying(20) NOT NULL,
    age integer,
    galaxy_id integer,
    description text
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
-- Name: starship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starship (
    starship_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mission text
);


ALTER TABLE public.starship OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1000, NULL, 100000.0, 'milkyway');
INSERT INTO public.galaxy VALUES (2, 1000, NULL, 100000.0, 'magellan');
INSERT INTO public.galaxy VALUES (3, 1000, NULL, 100000.0, 'andromeda');
INSERT INTO public.galaxy VALUES (4, 1000, NULL, 100000.0, 'butterfly');
INSERT INTO public.galaxy VALUES (5, 1000, NULL, 100000.0, 'black');
INSERT INTO public.galaxy VALUES (6, 1000, NULL, 100000.0, 'backward');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, 2, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, 2, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, 2, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, 2, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, 2, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, 3, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, 3, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, 4, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, 4, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, 4, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, 4, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, 4, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'sun1', NULL, 5, 1);
INSERT INTO public.planet VALUES (2, 'sun2', NULL, 5, 1);
INSERT INTO public.planet VALUES (3, 'sun3', NULL, 5, 1);
INSERT INTO public.planet VALUES (4, 'sun4', NULL, 5, 1);
INSERT INTO public.planet VALUES (5, 'sun5', NULL, 5, 1);
INSERT INTO public.planet VALUES (6, 'sun6', NULL, 5, 1);
INSERT INTO public.planet VALUES (7, 'antares1', NULL, 5, 2);
INSERT INTO public.planet VALUES (8, 'antares2', NULL, 5, 2);
INSERT INTO public.planet VALUES (9, 'antares3', NULL, 5, 2);
INSERT INTO public.planet VALUES (10, 'antares4', NULL, 5, 2);
INSERT INTO public.planet VALUES (11, 'antares5', NULL, 5, 2);
INSERT INTO public.planet VALUES (12, 'antares6', NULL, 5, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'canis', NULL, 1, 'big');
INSERT INTO public.star VALUES (1, 'sun', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'antares', NULL, 1, 'close');
INSERT INTO public.star VALUES (3, 'betelgeuse', NULL, 1, 'closer');
INSERT INTO public.star VALUES (4, 'cephei', NULL, 1, 'big');
INSERT INTO public.star VALUES (5, 'cygni', NULL, 1, 'big');


--
-- Data for Name: starship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starship VALUES (1, 'ship1', NULL);
INSERT INTO public.starship VALUES (2, 'ship2', NULL);
INSERT INTO public.starship VALUES (3, 'ship3', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: starship ship_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT ship_id UNIQUE (starship_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: starship starships_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starships_pkey PRIMARY KEY (starship_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

