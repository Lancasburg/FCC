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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    size_in_kpc numeric,
    discovery_year integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    radius_in_km integer NOT NULL,
    orbital_period_in_day numeric
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    radius_in_km integer NOT NULL,
    has_moon boolean NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_system_id integer NOT NULL,
    radius_in_km integer NOT NULL,
    has_planet boolean NOT NULL
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
-- Name: star_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_system (
    star_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star_system OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_system_star_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_system_star_system_id_seq OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_system_star_system_id_seq OWNED BY public.star_system.star_system_id;


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
-- Name: star_system star_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system ALTER COLUMN star_system_id SET DEFAULT nextval('public.star_system_star_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy containing the Solar System', 40, 1610);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy nearest to the Milky Way', 45, 964);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy in the Local Group', 30, 1780);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical galaxy with a prominent dust lane', 35, 1826);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy with a large central bulge', 25, 1781);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Interacting spiral galaxy with a companion', 32, 1773);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 1737, 27.3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11, 0.32);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 6, 1.26);
INSERT INTO public.moon VALUES (4, 'Io', 5, 1821, 1.77);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 1560, 3.55);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 2634, 7.15);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 2410, 16.7);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 2576, 15.95);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 252, 1.37);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 198, 0.94);
INSERT INTO public.moon VALUES (11, 'Miranda', 7, 235, 1.41);
INSERT INTO public.moon VALUES (12, 'Ariel', 7, 579, 2.52);
INSERT INTO public.moon VALUES (13, 'Umbriel', 7, 584, 4.14);
INSERT INTO public.moon VALUES (14, 'Triton', 8, 1353, -5.88);
INSERT INTO public.moon VALUES (15, 'Proteus', 8, 210, 1.12);
INSERT INTO public.moon VALUES (16, 'Charon', 9, 606, 6.39);
INSERT INTO public.moon VALUES (17, 'Phoebe', 6, 106, 550.48);
INSERT INTO public.moon VALUES (18, 'Tethys', 6, 531, 1.89);
INSERT INTO public.moon VALUES (19, 'Rhea', 6, 763, 4.52);
INSERT INTO public.moon VALUES (20, 'Iapetus', 6, 734, 79.33);
INSERT INTO public.moon VALUES (21, 'Dione', 6, 561, 2.74);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 2439, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 6051, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 6371, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 3389, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 71492, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 60268, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 25559, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 24764, true);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 1188, true);
INSERT INTO public.planet VALUES (10, 'Andromeda Planet 1', 2, 4568, false);
INSERT INTO public.planet VALUES (11, 'Andromeda Planet 2', 2, 6789, true);
INSERT INTO public.planet VALUES (12, 'Andromeda Planet 3', 3, 5432, true);
INSERT INTO public.planet VALUES (13, 'Triangulum Planet 1', 4, 7890, true);
INSERT INTO public.planet VALUES (14, 'Triangulum Planet 2', 5, 4567, true);
INSERT INTO public.planet VALUES (15, 'Centaurus A Planet', 6, 6543, true);
INSERT INTO public.planet VALUES (16, 'Sombrero Planet', 7, 9876, true);
INSERT INTO public.planet VALUES (17, 'Centaurus Planet 1 1', 8, 5678, true);
INSERT INTO public.planet VALUES (18, 'Sombrero Planet 1', 9, 4321, true);
INSERT INTO public.planet VALUES (19, 'Whirlpool Planet 1', 10, 7654, true);
INSERT INTO public.planet VALUES (20, 'Whirlpool Planet 2', 11, 8765, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 696340, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 2, 1766844, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 2, 1411684, false);
INSERT INTO public.star VALUES (4, 'Andromeda Star 1', 2, 3, 2233456, true);
INSERT INTO public.star VALUES (5, 'Andromeda Star 2', 2, 4, 1983456, false);
INSERT INTO public.star VALUES (6, 'Triangulum Star 1', 3, 5, 1345678, true);
INSERT INTO public.star VALUES (7, 'Triangulum Star 2', 3, 6, 1123456, false);
INSERT INTO public.star VALUES (8, 'Centaurus A Star', 4, 7, 2890123, true);
INSERT INTO public.star VALUES (9, 'Sombrero Star', 5, 8, 2109876, true);
INSERT INTO public.star VALUES (10, 'Whirlpool Star 1', 6, 9, 1754321, false);
INSERT INTO public.star VALUES (11, 'Whirlpool Star 2', 6, 10, 1987654, true);


--
-- Data for Name: star_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_system VALUES (1, 'Solar System', 1);
INSERT INTO public.star_system VALUES (2, 'Alpha Centauri System', 1);
INSERT INTO public.star_system VALUES (3, 'Andromeda System 1', 2);
INSERT INTO public.star_system VALUES (4, 'Andromeda System 2', 2);
INSERT INTO public.star_system VALUES (5, 'Triangulum System 1', 3);
INSERT INTO public.star_system VALUES (6, 'Triangulum System 2', 3);
INSERT INTO public.star_system VALUES (7, 'Centaurus A System', 4);
INSERT INTO public.star_system VALUES (8, 'Sombrero System', 5);
INSERT INTO public.star_system VALUES (9, 'Whirlpool System 1', 6);
INSERT INTO public.star_system VALUES (10, 'Whirlpool System 2', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_system_star_system_id_seq', 10, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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
-- Name: star_system star_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_name_key UNIQUE (name);


--
-- Name: star_system star_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_pkey PRIMARY KEY (star_system_id);


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
-- Name: star star_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_system_id_fkey FOREIGN KEY (star_system_id) REFERENCES public.star_system(star_system_id);


--
-- Name: star_system star_system_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

