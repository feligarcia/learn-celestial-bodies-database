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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    has_humans boolean
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    has_blackhole boolean
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    temperature integer,
    planet_id integer
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    has_humans boolean,
    star_id integer
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    has_humans boolean,
    galaxy_id integer NOT NULL,
    cluster_id integer,
    life_probability numeric(3,2)
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
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


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
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'Cluster de Virgo', 'Cluster de galaxias en la constelación de Virgo', false, false);
INSERT INTO public.cluster VALUES (2, 'Cluster de Coma', 'Cluster de galaxias en la constelación de Coma Berenices', false, false);
INSERT INTO public.cluster VALUES (3, 'Cluster de Fornax', 'Cluster de galaxias en la constelación de Fornax', false, false);
INSERT INTO public.cluster VALUES (4, 'Cluster de Hydra', 'Cluster de galaxias en la constelación de Hydra', false, false);
INSERT INTO public.cluster VALUES (5, 'Cluster de Centaurus', 'Cluster de galaxias en la constelación de Centaurus', false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Es la galaxia donde vivimos', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Es la galaxia mas cercana', false, false);
INSERT INTO public.galaxy VALUES (3, 'Girasol', 'Parecia un girasol', false, false);
INSERT INTO public.galaxy VALUES (4, 'Cigarro', 'Viven los cigarrones uuuy', false, false);
INSERT INTO public.galaxy VALUES (5, 'JF', 'Tengo mi super galaxia!!!!', false, false);
INSERT INTO public.galaxy VALUES (6, 'Magallanes', 'Es hermosa la galaxia', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Satélite natural de la Tierra', false, 384400, -173, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Satélite más cercano a Marte', false, 6000, -150, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Satélite más lejano a Marte', false, 20000, -150, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Satélite volcánico de Júpiter', false, 426000, -145, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Satélite con océano subterráneo de Júpiter', false, 671000, -160, 5);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 'Satélite más grande del sistema solar', false, 1079000, -150, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 'Satélite más lejano a Júpiter', false, 1883000, -145, 5);
INSERT INTO public.moon VALUES (8, 'Titán', 'Satélite más grande de Saturno', false, 1222000, -179, 6);
INSERT INTO public.moon VALUES (9, 'Encélado', 'Satélite con géysers de Saturno', false, 238000, -200, 6);
INSERT INTO public.moon VALUES (10, 'Dione', 'Satélite con cráteres de Saturno', false, 377000, -200, 6);
INSERT INTO public.moon VALUES (11, 'Rea', 'Satélite más grande de Saturno', false, 527000, -200, 6);
INSERT INTO public.moon VALUES (12, 'Tetis', 'Satélite con océano subterráneo de Saturno', false, 295000, -200, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 'Satélite con cráter gigante de Saturno', false, 185000, -200, 6);
INSERT INTO public.moon VALUES (14, 'Japeto', 'Satélite con hemisferios opuestos de Saturno', false, 356000, -200, 6);
INSERT INTO public.moon VALUES (15, 'Febe', 'Satélite irregular de Saturno', false, 1290000, -200, 6);
INSERT INTO public.moon VALUES (16, 'Hiperión', 'Satélite irregular de Saturno', false, 1450000, -200, 6);
INSERT INTO public.moon VALUES (17, 'Janus', 'Satélite co-orbital de Saturno', false, 151000, -200, 6);
INSERT INTO public.moon VALUES (18, 'Epimeteo', 'Satélite co-orbital de Saturno', false, 151000, -200, 6);
INSERT INTO public.moon VALUES (19, 'Prometeo', 'Satélite pastor de Saturno', false, 139000, -200, 6);
INSERT INTO public.moon VALUES (20, 'Pandora', 'Satélite pastor de Saturno', false, 141000, -200, 6);
INSERT INTO public.moon VALUES (21, 'Amaltea', 'Satélite interior de Júpiter', false, 181000, -150, 5);
INSERT INTO public.moon VALUES (22, 'Himalia', 'Satélite irregular de Júpiter', false, 11480000, -150, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Planeta más cercano al Sol', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Planeta más caliente del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', 'Planeta habitable del sistema solar', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 'Planeta rojo del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Júpiter', 'Planeta más grande del sistema solar', false, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Planeta con anillos del sistema solar', false, false, 2);
INSERT INTO public.planet VALUES (7, 'Urano', 'Planeta con eje inclinado del sistema solar', false, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'Planeta más lejano del Sol', false, false, 3);
INSERT INTO public.planet VALUES (9, 'Kepler-62f', 'Planeta extrasolar habitable', false, false, 4);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Planeta extrasolar habitable', false, false, 4);
INSERT INTO public.planet VALUES (11, 'Proxima b', 'Planeta extrasolar más cercano a la Tierra', false, false, 5);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'Planeta extrasolar habitable', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Nuestra estrella maestra', false, false, 1, 1, 0.10);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Estrella más cercana al Sol', false, false, 1, 1, 0.20);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Supergigante roja en la constelación de Orión', false, false, 2, 5, 0.10);
INSERT INTO public.star VALUES (4, 'Rigel', 'Supergigante azul en la constelación de Orión', false, false, 3, 2, 0.30);
INSERT INTO public.star VALUES (5, 'Deneb', 'Supergigante azul en la constelación del Cisne', false, false, 4, 4, 0.40);
INSERT INTO public.star VALUES (6, 'Vega', 'Estrella blanca en la constelación de la Lira', false, false, 5, 1, 0.60);
INSERT INTO public.star VALUES (7, 'Capella', 'Estrella múltiple en la constelación de Auriga', false, false, 6, 3, 0.50);
INSERT INTO public.star VALUES (8, 'Arcturus', 'Estrella naranja en la constelación de Boötes', false, false, 1, 2, 0.70);
INSERT INTO public.star VALUES (9, 'Aldebaran', 'Estrella naranja en la constelación de Tauro', false, false, 2, 4, 0.80);
INSERT INTO public.star VALUES (10, 'Sirio', 'Estrella blanca en la constelación de Can Mayor', false, false, 3, 5, 0.90);
INSERT INTO public.star VALUES (11, 'Polaris', 'Estrella polar en la constelación de la Osa Menor', false, false, 4, 1, 0.10);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


--
-- Name: cluster cluster_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


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

