--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: root
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO root;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: assignments; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE assignments (
    id integer NOT NULL,
    tab_id integer,
    customer_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.assignments OWNER TO desidime;

--
-- Name: assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: desidime
--

CREATE SEQUENCE assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.assignments_id_seq OWNER TO desidime;

--
-- Name: assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: desidime
--

ALTER SEQUENCE assignments_id_seq OWNED BY assignments.id;


--
-- Name: assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desidime
--

SELECT pg_catalog.setval('assignments_id_seq', 5, true);


--
-- Name: customers; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE customers (
    id integer NOT NULL,
    application_ref_number character varying(255),
    ageny_name character varying(255),
    applicant_name character varying(255),
    address text,
    landmark character varying(255),
    date_of_birth date,
    pincode character varying(255),
    contact_number character varying(255),
    status character varying(255),
    coountry character varying(255),
    state character varying(255),
    city character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    slug character varying(255)
);


ALTER TABLE public.customers OWNER TO desidime;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: desidime
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO desidime;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: desidime
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desidime
--

SELECT pg_catalog.setval('customers_id_seq', 130, true);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO desidime;

--
-- Name: serveys; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE serveys (
    id integer NOT NULL,
    customer_id integer,
    tab_id integer,
    user_id integer,
    landmark character varying(255),
    ease_of_location character varying(255),
    telephone_number character varying(255),
    mobile_number character varying(255),
    person_contacted character varying(255),
    relationship_with_applicant character varying(255),
    years_at_current_address integer,
    expected_monthly_usage double precision,
    bill_payer character varying(255),
    bill_payer_occupation character varying(255),
    residence_type character varying(255),
    locality character varying(255),
    residence_status character varying(255),
    age character varying(255),
    customer_attitude character varying(255),
    credit_card character varying(255),
    pan_card character varying(255),
    pancard_number character varying(255),
    address_proof_sighted character varying(255),
    asset_seen character varying(255),
    vihicle_owned character varying(255),
    final_recomendation character varying(255),
    av_done_by character varying(255),
    av_supervisor_name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.serveys OWNER TO desidime;

--
-- Name: serveys_id_seq; Type: SEQUENCE; Schema: public; Owner: desidime
--

CREATE SEQUENCE serveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.serveys_id_seq OWNER TO desidime;

--
-- Name: serveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: desidime
--

ALTER SEQUENCE serveys_id_seq OWNED BY serveys.id;


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desidime
--

SELECT pg_catalog.setval('serveys_id_seq', 2, true);


--
-- Name: tabs; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE tabs (
    id integer NOT NULL,
    name character varying(255),
    tab_code character varying(255),
    pincode character varying(255),
    mac_address character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.tabs OWNER TO desidime;

--
-- Name: tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: desidime
--

CREATE SEQUENCE tabs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tabs_id_seq OWNER TO desidime;

--
-- Name: tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: desidime
--

ALTER SEQUENCE tabs_id_seq OWNED BY tabs.id;


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desidime
--

SELECT pg_catalog.setval('tabs_id_seq', 30, true);


--
-- Name: users; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255),
    address text,
    employee_uid character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    password_digest character varying(255),
    admin boolean DEFAULT false,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer,
    photo_updated_at timestamp without time zone,
    role_name character varying(255),
    tab_id integer
);


ALTER TABLE public.users OWNER TO desidime;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: desidime
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO desidime;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: desidime
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desidime
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: desidime
--

ALTER TABLE ONLY assignments ALTER COLUMN id SET DEFAULT nextval('assignments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: desidime
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: desidime
--

ALTER TABLE ONLY serveys ALTER COLUMN id SET DEFAULT nextval('serveys_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: desidime
--

ALTER TABLE ONLY tabs ALTER COLUMN id SET DEFAULT nextval('tabs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: desidime
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: assignments; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY assignments (id, tab_id, customer_id, user_id, created_at, updated_at) FROM stdin;
1	6	1	1	2014-01-14 09:17:25.299511	2014-01-14 09:17:25.299511
2	3	3	1	2014-01-14 10:18:27.191944	2014-01-14 10:18:27.191944
3	3	6	1	2014-01-14 10:20:08.872249	2014-01-14 10:20:08.872249
4	5	7	1	2014-01-14 10:23:29.565031	2014-01-14 10:23:29.565031
5	3	5	1	2014-01-14 10:24:21.134422	2014-01-14 10:24:21.134422
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY customers (id, application_ref_number, ageny_name, applicant_name, address, landmark, date_of_birth, pincode, contact_number, status, coountry, state, city, created_at, updated_at, slug) FROM stdin;
2	2	Scorpeo Private Limited	Nyah Yundt	8920 Joshuah Run	Test Landmark	2008-07-24	400051	1-327-280-3852	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.232572	2014-01-14 07:58:42.232572	nyah-yundt
4	4	Scorpeo Private Limited	Laverna Bosco	315 Grimes Well	Test Landmark	2008-07-24	400051	(852)138-5738 x03183	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.271883	2014-01-14 07:58:42.271883	laverna-bosco
8	8	Scorpeo Private Limited	Branson Leffler	52454 Langworth Garden	Test Landmark	2008-07-24	400051	224.651.9479	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.366358	2014-01-14 07:58:42.366358	branson-leffler
9	9	Scorpeo Private Limited	Brooks Dooley	327 Cole Stream	Test Landmark	2008-07-24	400051	1-723-123-0218 x08468	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.387702	2014-01-14 07:58:42.387702	brooks-dooley
10	10	Scorpeo Private Limited	Mr. Eunice Kozey	19050 Luella Lake	Test Landmark	2008-07-24	400051	449-547-3762	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.40782	2014-01-14 07:58:42.40782	mr-eunice-kozey
11	11	Scorpeo Private Limited	Mrs. Sam Gorczany	20780 Glover Mews	Test Landmark	2008-07-24	400051	(749)594-6784	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.429104	2014-01-14 07:58:42.429104	mrs-sam-gorczany
12	12	Scorpeo Private Limited	Joanne Metz PhD	3602 Klein Alley	Test Landmark	2008-07-24	400051	857.140.4957 x9741	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.449133	2014-01-14 07:58:42.449133	joanne-metz-phd
13	13	Scorpeo Private Limited	Hailie Beer Jr.	877 Julian Knolls	Test Landmark	2008-07-24	400051	(548)223-1243 x4185	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.469633	2014-01-14 07:58:42.469633	hailie-beer-jr
14	14	Scorpeo Private Limited	Bailee Douglas	8868 Spencer Square	Test Landmark	2008-07-24	400051	1-745-177-7092 x82402	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.490601	2014-01-14 07:58:42.490601	bailee-douglas
15	15	Scorpeo Private Limited	Adah Cassin Sr.	4651 Baumbach Mews	Test Landmark	2008-07-24	400051	(849)023-7383	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.511197	2014-01-14 07:58:42.511197	adah-cassin-sr
16	16	Scorpeo Private Limited	Eliane Cummings	5159 Kertzmann Rapid	Test Landmark	2008-07-24	400051	214-589-4821	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.532153	2014-01-14 07:58:42.532153	eliane-cummings
17	17	Scorpeo Private Limited	Nathaniel Legros	87789 Roberts Trafficway	Test Landmark	2008-07-24	400051	394-363-8381	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.550997	2014-01-14 07:58:42.550997	nathaniel-legros
18	18	Scorpeo Private Limited	Derek Douglas	192 Rickie Hills	Test Landmark	2008-07-24	400051	(279)479-0026 x3774	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.573521	2014-01-14 07:58:42.573521	derek-douglas
19	19	Scorpeo Private Limited	Janie Bechtelar	4872 Gutmann Mall	Test Landmark	2008-07-24	400051	492.433.5013	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.59341	2014-01-14 07:58:42.59341	janie-bechtelar
20	20	Scorpeo Private Limited	Mr. Gillian Gleichner	464 Spencer Forest	Test Landmark	2008-07-24	400051	314-475-6681 x416	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.613434	2014-01-14 07:58:42.613434	mr-gillian-gleichner
21	21	Scorpeo Private Limited	Jacinto Marks	80704 Prosacco Mill	Test Landmark	2008-07-24	400051	1-278-815-2136 x249	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.634717	2014-01-14 07:58:42.634717	jacinto-marks
22	22	Scorpeo Private Limited	Enos Brekke	623 Rohan Key	Test Landmark	2008-07-24	400051	1-510-263-1579	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.654722	2014-01-14 07:58:42.654722	enos-brekke
23	23	Scorpeo Private Limited	Turner Becker	981 Huels Run	Test Landmark	2008-07-24	400051	842-746-3102	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.676116	2014-01-14 07:58:42.676116	turner-becker
24	24	Scorpeo Private Limited	Sim Schulist V	66290 Alexandro Passage	Test Landmark	2008-07-24	400051	1-505-536-7059	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.696225	2014-01-14 07:58:42.696225	sim-schulist-v
25	25	Scorpeo Private Limited	Domingo Corwin	162 Jayden Islands	Test Landmark	2008-07-24	400051	912.453.2617 x35439	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.716194	2014-01-14 07:58:42.716194	domingo-corwin
26	26	Scorpeo Private Limited	Erica Dooley V	1979 Luciano Route	Test Landmark	2008-07-24	400051	510-426-9954 x718	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.737514	2014-01-14 07:58:42.737514	erica-dooley-v
27	27	Scorpeo Private Limited	Liam Watsica DDS	47872 Amari Lock	Test Landmark	2008-07-24	400051	108-798-5671	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.757625	2014-01-14 07:58:42.757625	liam-watsica-dds
28	28	Scorpeo Private Limited	Taurean Reilly	49309 Mann Crossing	Test Landmark	2008-07-24	400051	(734)968-7409 x93736	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.778909	2014-01-14 07:58:42.778909	taurean-reilly
29	29	Scorpeo Private Limited	Arthur Boyer DDS	4308 Gerhold Rue	Test Landmark	2008-07-24	400051	474.668.9578 x720	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.799013	2014-01-14 07:58:42.799013	arthur-boyer-dds
30	30	Scorpeo Private Limited	Russell Ernser	1766 Gutkowski Row	Test Landmark	2008-07-24	400051	243.821.1947 x29537	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.818985	2014-01-14 07:58:42.818985	russell-ernser
31	31	Scorpeo Private Limited	Mrs. Ezekiel Aufderhar	960 Hilll Mills	Test Landmark	2008-07-24	400051	(377)699-1160 x9073	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.840402	2014-01-14 07:58:42.840402	mrs-ezekiel-aufderhar
32	32	Scorpeo Private Limited	Otis Kozey	47080 Carter Vista	Test Landmark	2008-07-24	400051	513.847.9559 x0566	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.860424	2014-01-14 07:58:42.860424	otis-kozey
33	33	Scorpeo Private Limited	Savannah Mayert	249 Yundt Lodge	Test Landmark	2008-07-24	400051	828-778-3448 x5939	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.881709	2014-01-14 07:58:42.881709	savannah-mayert
34	34	Scorpeo Private Limited	Raymond Corkery V	625 Jerod Ridge	Test Landmark	2008-07-24	400051	(272)183-7237 x0127	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.901728	2014-01-14 07:58:42.901728	raymond-corkery-v
35	35	Scorpeo Private Limited	Cyril Hackett PhD	256 Morissette Road	Test Landmark	2008-07-24	400051	869.638.7683 x8545	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.921907	2014-01-14 07:58:42.921907	cyril-hackett-phd
36	36	Scorpeo Private Limited	Jairo Runte	171 Bertrand Islands	Test Landmark	2008-07-24	400051	765.057.5874 x5834	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.943129	2014-01-14 07:58:42.943129	jairo-runte
37	37	Scorpeo Private Limited	Linnie Bauch	46742 Madge Mission	Test Landmark	2008-07-24	400051	(100)362-3954 x15598	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.963191	2014-01-14 07:58:42.963191	linnie-bauch
38	38	Scorpeo Private Limited	Raven Dickens	3003 Bertram Hollow	Test Landmark	2008-07-24	400051	1-317-408-0218 x4146	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.98457	2014-01-14 07:58:42.98457	raven-dickens
39	39	Scorpeo Private Limited	Claire Nienow	4397 Wilkinson Overpass	Test Landmark	2008-07-24	400051	1-886-338-7742	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.004593	2014-01-14 07:58:43.004593	claire-nienow
3	3	Scorpeo Private Limited	Rodolfo Weimann	9791 Heller Ville	Test Landmark	2008-07-24	400051	1-839-784-7775 x9233	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.251864	2014-01-14 07:58:42.251864	rodolfo-weimann
6	6	Scorpeo Private Limited	Aniyah Dickens	9377 Annamarie Stream	Test Landmark	2008-07-24	400051	1-691-739-3344	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.31356	2014-01-14 07:58:42.31356	aniyah-dickens
5	5	Scorpeo Private Limited	Nannie O'Conner	864 Edd Squares	Test Landmark	2008-07-24	400051	1-121-732-8443 x26949	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.2932	2014-01-14 07:58:42.2932	nannie-o-conner
7	7	Scorpeo Private Limited	Ms. Ottilie Brakus	639 Gabriella Mission	Test Landmark	2008-07-24	400051	345-043-5673 x6831	completed	India	Maharashtra	Mumbai	2014-01-14 07:58:42.346758	2014-01-14 07:58:42.346758	ms-ottilie-brakus
40	40	Scorpeo Private Limited	Markus Pacocha	2078 Parisian Loop	Test Landmark	2008-07-24	400051	712-215-1303 x9016	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.024636	2014-01-14 07:58:43.024636	markus-pacocha
41	41	Scorpeo Private Limited	Max Schoen	276 Beier Union	Test Landmark	2008-07-24	400051	(151)572-4988	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.046053	2014-01-14 07:58:43.046053	max-schoen
42	42	Scorpeo Private Limited	Maximilian Shanahan	7272 Loraine Grove	Test Landmark	2008-07-24	400051	(777)125-6883 x1465	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.066037	2014-01-14 07:58:43.066037	maximilian-shanahan
43	43	Scorpeo Private Limited	Brain Kuhlman	75979 Nickolas Village	Test Landmark	2008-07-24	400051	509.015.7331 x273	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.087358	2014-01-14 07:58:43.087358	brain-kuhlman
44	44	Scorpeo Private Limited	Vicente Macejkovic	1342 Ella Overpass	Test Landmark	2008-07-24	400051	899.218.5863 x503	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.1074	2014-01-14 07:58:43.1074	vicente-macejkovic
45	45	Scorpeo Private Limited	Mathilde Turner	116 Moen Ports	Test Landmark	2008-07-24	400051	439-557-1060 x074	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.128741	2014-01-14 07:58:43.128741	mathilde-turner
46	46	Scorpeo Private Limited	Lue Beer	3264 Ruecker Coves	Test Landmark	2008-07-24	400051	(125)157-3698 x86146	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.148718	2014-01-14 07:58:43.148718	lue-beer
47	47	Scorpeo Private Limited	Santa Wilkinson	955 Wiegand Plain	Test Landmark	2008-07-24	400051	(940)325-2136 x54279	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.168774	2014-01-14 07:58:43.168774	santa-wilkinson
48	48	Scorpeo Private Limited	Orpha Zemlak	529 Windler Divide	Test Landmark	2008-07-24	400051	442.368.8309 x015	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.190106	2014-01-14 07:58:43.190106	orpha-zemlak
49	49	Scorpeo Private Limited	Enola Kub	992 Gennaro Plains	Test Landmark	2008-07-24	400051	552-205-1446 x1889	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.2101	2014-01-14 07:58:43.2101	enola-kub
50	50	Scorpeo Private Limited	Reinhold Nikolaus	3544 Grant Expressway	Test Landmark	2008-07-24	400051	576.926.3836	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.231508	2014-01-14 07:58:43.231508	reinhold-nikolaus
51	51	Scorpeo Private Limited	Mrs. Heber Schulist	825 Marcus Plaza	Test Landmark	2008-07-24	400051	351-089-1524	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.251563	2014-01-14 07:58:43.251563	mrs-heber-schulist
52	52	Scorpeo Private Limited	Roma O'Reilly	3391 Bartoletti Ranch	Test Landmark	2008-07-24	400051	1-880-936-3622 x63671	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.271578	2014-01-14 07:58:43.271578	roma-o-reilly
53	53	Scorpeo Private Limited	Mr. Fay Doyle	399 Enrique Pine	Test Landmark	2008-07-24	400051	404.024.9191	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.292982	2014-01-14 07:58:43.292982	mr-fay-doyle
54	54	Scorpeo Private Limited	Shakira Haag	723 Kuhic Wall	Test Landmark	2008-07-24	400051	(920)168-4936 x1548	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.313122	2014-01-14 07:58:43.313122	shakira-haag
55	55	Scorpeo Private Limited	Jeramy Bernier IV	391 Ally Hollow	Test Landmark	2008-07-24	400051	118-058-9581	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.334545	2014-01-14 07:58:43.334545	jeramy-bernier-iv
56	56	Scorpeo Private Limited	Rosetta Jakubowski Jr.	71819 Oma Plains	Test Landmark	2008-07-24	400051	349-249-7973 x5113	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.354502	2014-01-14 07:58:43.354502	rosetta-jakubowski-jr
57	57	Scorpeo Private Limited	Elnora Schimmel	79902 Alva Route	Test Landmark	2008-07-24	400051	695-272-5293	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.417485	2014-01-14 07:58:43.417485	elnora-schimmel
58	58	Scorpeo Private Limited	Virginie Hyatt	12142 Kennedi Coves	Test Landmark	2008-07-24	400051	620.057.0351	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.435226	2014-01-14 07:58:43.435226	virginie-hyatt
59	59	Scorpeo Private Limited	Brando Schneider	4447 Kautzer Via	Test Landmark	2008-07-24	400051	378-050-3956 x5862	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.455244	2014-01-14 07:58:43.455244	brando-schneider
60	60	Scorpeo Private Limited	Dax Haag	9089 Adams Hollow	Test Landmark	2008-07-24	400051	915.901.3202 x52691	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.47859	2014-01-14 07:58:43.47859	dax-haag
61	61	Scorpeo Private Limited	Isaac Sauer	6851 Samantha Road	Test Landmark	2008-07-24	400051	703.180.2611	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.498821	2014-01-14 07:58:43.498821	isaac-sauer
62	62	Scorpeo Private Limited	Mervin Romaguera	6943 Dibbert Harbors	Test Landmark	2008-07-24	400051	1-736-442-8302	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.519008	2014-01-14 07:58:43.519008	mervin-romaguera
63	63	Scorpeo Private Limited	Miss Aubrey Pfeffer	7830 Ocie Fields	Test Landmark	2008-07-24	400051	615-955-4717 x508	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.540253	2014-01-14 07:58:43.540253	miss-aubrey-pfeffer
64	64	Scorpeo Private Limited	Uriah Mueller DVM	8193 Gaylord Alley	Test Landmark	2008-07-24	400051	283-369-6566 x754	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.560277	2014-01-14 07:58:43.560277	uriah-mueller-dvm
65	65	Scorpeo Private Limited	Mrs. Leonardo Beatty	7551 Fadel Roads	Test Landmark	2008-07-24	400051	1-467-824-8286 x844	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.581925	2014-01-14 07:58:43.581925	mrs-leonardo-beatty
66	66	Scorpeo Private Limited	Devante Sporer	71383 Gerard Course	Test Landmark	2008-07-24	400051	(386)496-0248 x4932	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.601723	2014-01-14 07:58:43.601723	devante-sporer
67	67	Scorpeo Private Limited	Pedro Waelchi	664 Madeline Dam	Test Landmark	2008-07-24	400051	(835)495-9064	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.621679	2014-01-14 07:58:43.621679	pedro-waelchi
68	68	Scorpeo Private Limited	Gregoria Schuster	306 Bednar Burgs	Test Landmark	2008-07-24	400051	1-667-300-6280	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.643056	2014-01-14 07:58:43.643056	gregoria-schuster
69	69	Scorpeo Private Limited	Mavis Walter	582 Nicholas Squares	Test Landmark	2008-07-24	400051	506-693-6779 x186	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.663042	2014-01-14 07:58:43.663042	mavis-walter
70	70	Scorpeo Private Limited	Liza Barrows	527 Mallie Isle	Test Landmark	2008-07-24	400051	669.713.7653 x3491	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.684344	2014-01-14 07:58:43.684344	liza-barrows
71	71	Scorpeo Private Limited	Gerard Ziemann IV	9641 Grant Wall	Test Landmark	2008-07-24	400051	(752)395-5408 x203	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.704477	2014-01-14 07:58:43.704477	gerard-ziemann-iv
72	72	Scorpeo Private Limited	Kenyatta Douglas	132 Muller Harbors	Test Landmark	2008-07-24	400051	754.612.0082 x42420	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.725713	2014-01-14 07:58:43.725713	kenyatta-douglas
73	73	Scorpeo Private Limited	Faye Gleason	56835 Zulauf Mill	Test Landmark	2008-07-24	400051	862-865-8429	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.745772	2014-01-14 07:58:43.745772	faye-gleason
74	74	Scorpeo Private Limited	Norval Johnson	263 Miller Island	Test Landmark	2008-07-24	400051	247-098-8203	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.765765	2014-01-14 07:58:43.765765	norval-johnson
75	75	Scorpeo Private Limited	Delaney Shields	92604 Vincent River	Test Landmark	2008-07-24	400051	1-946-373-7722 x1183	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.789263	2014-01-14 07:58:43.789263	delaney-shields
76	76	Scorpeo Private Limited	Winifred Davis	1240 Johnson Pike	Test Landmark	2008-07-24	400051	(123)657-5380	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.809711	2014-01-14 07:58:43.809711	winifred-davis
77	77	Scorpeo Private Limited	Heidi Schroeder	14138 Juliet Trail	Test Landmark	2008-07-24	400051	1-592-875-5016	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.831531	2014-01-14 07:58:43.831531	heidi-schroeder
78	78	Scorpeo Private Limited	Jamie Bode	10673 Alejandrin River	Test Landmark	2008-07-24	400051	136-409-2964 x4352	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.852051	2014-01-14 07:58:43.852051	jamie-bode
79	79	Scorpeo Private Limited	Sofia Leffler	573 Cole Spur	Test Landmark	2008-07-24	400051	1-320-776-3730	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.87383	2014-01-14 07:58:43.87383	sofia-leffler
80	80	Scorpeo Private Limited	Lonny Kovacek	97280 Bernier Burgs	Test Landmark	2008-07-24	400051	(638)199-2465 x55570	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.894203	2014-01-14 07:58:43.894203	lonny-kovacek
81	81	Scorpeo Private Limited	Harmony Kerluke	638 Ardith Brook	Test Landmark	2008-07-24	400051	362-451-9593	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.916063	2014-01-14 07:58:43.916063	harmony-kerluke
82	82	Scorpeo Private Limited	Abigail Rowe V	6639 Ebba Ramp	Test Landmark	2008-07-24	400051	1-768-322-3939 x485	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.936571	2014-01-14 07:58:43.936571	abigail-rowe-v
83	83	Scorpeo Private Limited	Breanna Lesch	5218 Breitenberg Rapids	Test Landmark	2008-07-24	400051	737-312-2611	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.956993	2014-01-14 07:58:43.956993	breanna-lesch
84	84	Scorpeo Private Limited	Gabe Bartoletti	853 Pacocha Drives	Test Landmark	2008-07-24	400051	(530)188-3903 x637	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.978816	2014-01-14 07:58:43.978816	gabe-bartoletti
85	85	Scorpeo Private Limited	Kayli Gerhold	90737 Lennie Isle	Test Landmark	2008-07-24	400051	(411)953-7505 x93366	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.999342	2014-01-14 07:58:43.999342	kayli-gerhold
86	86	Scorpeo Private Limited	Rylee Botsford	110 Dietrich Village	Test Landmark	2008-07-24	400051	342.384.3439	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.021048	2014-01-14 07:58:44.021048	rylee-botsford
87	87	Scorpeo Private Limited	Guiseppe Gislason II	48335 Betsy Plain	Test Landmark	2008-07-24	400051	713.579.4361	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.041586	2014-01-14 07:58:44.041586	guiseppe-gislason-ii
88	88	Scorpeo Private Limited	Kathlyn Borer	1569 Rice Track	Test Landmark	2008-07-24	400051	705.118.6396 x9907	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.063371	2014-01-14 07:58:44.063371	kathlyn-borer
89	89	Scorpeo Private Limited	Gretchen Mitchell	4886 Rubye Neck	Test Landmark	2008-07-24	400051	(894)949-1875 x949	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.083837	2014-01-14 07:58:44.083837	gretchen-mitchell
90	90	Scorpeo Private Limited	Kaitlin Kozey V	946 Kiehn Station	Test Landmark	2008-07-24	400051	942.044.4658	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.105786	2014-01-14 07:58:44.105786	kaitlin-kozey-v
91	91	Scorpeo Private Limited	Queen Mitchell	2021 Aurelia Courts	Test Landmark	2008-07-24	400051	1-649-591-0204 x77115	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.126121	2014-01-14 07:58:44.126121	queen-mitchell
92	92	Scorpeo Private Limited	Mr. Dariana Mills	29753 Considine Bypass	Test Landmark	2008-07-24	400051	863.196.1890	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.147973	2014-01-14 07:58:44.147973	mr-dariana-mills
93	93	Scorpeo Private Limited	Milford Collier	65207 Monica Crescent	Test Landmark	2008-07-24	400051	1-692-417-2478 x943	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.168402	2014-01-14 07:58:44.168402	milford-collier
94	94	Scorpeo Private Limited	Ella Herman	890 Alana Centers	Test Landmark	2008-07-24	400051	938-654-3203 x09002	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.190133	2014-01-14 07:58:44.190133	ella-herman
95	95	Scorpeo Private Limited	Dashawn Bashirian	3502 Theodore Crossroad	Test Landmark	2008-07-24	400051	(935)094-8441 x298	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.210644	2014-01-14 07:58:44.210644	dashawn-bashirian
96	96	Scorpeo Private Limited	Kameron Feeney	68806 Erik Landing	Test Landmark	2008-07-24	400051	1-800-996-4840	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.231149	2014-01-14 07:58:44.231149	kameron-feeney
97	97	Scorpeo Private Limited	Furman Quitzon	571 Crooks Divide	Test Landmark	2008-07-24	400051	(804)309-6545 x0217	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.25292	2014-01-14 07:58:44.25292	furman-quitzon
98	98	Scorpeo Private Limited	Christina Von V	228 Smith Skyway	Test Landmark	2008-07-24	400051	751.952.7416	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.273398	2014-01-14 07:58:44.273398	christina-von-v
99	99	Scorpeo Private Limited	Bethel Murray	5247 Simonis Village	Test Landmark	2008-07-24	400051	(508)766-1501 x62710	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.2952	2014-01-14 07:58:44.2952	bethel-murray
100	100	Scorpeo Private Limited	Mrs. Rodger Aufderhar	792 Schowalter Ways	Test Landmark	2008-07-24	400051	140-666-9850 x7001	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.315701	2014-01-14 07:58:44.315701	mrs-rodger-aufderhar
101	101	Scorpeo Private Limited	Keyshawn Reilly III	91926 Heller Mount	Test Landmark	2008-07-24	400051	(299)619-2580 x59707	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.337519	2014-01-14 07:58:44.337519	keyshawn-reilly-iii
102	102	Scorpeo Private Limited	Carey Reichert	58791 Hoppe Burgs	Test Landmark	2008-07-24	400051	746.122.9921 x9227	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.357937	2014-01-14 07:58:44.357937	carey-reichert
103	103	Scorpeo Private Limited	Kamron Feest	56966 Jany Hill	Test Landmark	2008-07-24	400051	954-661-7349	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.379673	2014-01-14 07:58:44.379673	kamron-feest
104	104	Scorpeo Private Limited	Mr. Ernie Nikolaus	4311 Ike Park	Test Landmark	2008-07-24	400051	(691)374-9381	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.400285	2014-01-14 07:58:44.400285	mr-ernie-nikolaus
105	105	Scorpeo Private Limited	Jarod Dooley IV	96879 Emmerich Plains	Test Landmark	2008-07-24	400051	(479)627-6317 x960	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.422	2014-01-14 07:58:44.422	jarod-dooley-iv
106	106	Scorpeo Private Limited	Ms. Ephraim White	678 Ritchie Radial	Test Landmark	2008-07-24	400051	279-853-4276	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.442494	2014-01-14 07:58:44.442494	ms-ephraim-white
107	107	Scorpeo Private Limited	Heloise Kilback	527 Tabitha Plaza	Test Landmark	2008-07-24	400051	923-877-2485 x11769	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.463129	2014-01-14 07:58:44.463129	heloise-kilback
108	108	Scorpeo Private Limited	Korey Marquardt	511 Morar Crescent	Test Landmark	2008-07-24	400051	1-126-628-9487	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.484748	2014-01-14 07:58:44.484748	korey-marquardt
109	109	Scorpeo Private Limited	Cortney Kuhic	28526 Hans Extension	Test Landmark	2008-07-24	400051	1-557-598-2641	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.505204	2014-01-14 07:58:44.505204	cortney-kuhic
110	110	Scorpeo Private Limited	Geo Schuster	638 Reynolds Turnpike	Test Landmark	2008-07-24	400051	318.811.2131	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.527022	2014-01-14 07:58:44.527022	geo-schuster
111	111	Scorpeo Private Limited	Coby Mohr	88068 Towne Street	Test Landmark	2008-07-24	400051	791.364.9083 x803	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.548166	2014-01-14 07:58:44.548166	coby-mohr
112	112	Scorpeo Private Limited	Kurtis Conroy	1992 Lang Rapid	Test Landmark	2008-07-24	400051	1-996-136-5064 x72285	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.569891	2014-01-14 07:58:44.569891	kurtis-conroy
113	113	Scorpeo Private Limited	Adelle Welch	79589 Weston Cove	Test Landmark	2008-07-24	400051	1-933-637-5719	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.589915	2014-01-14 07:58:44.589915	adelle-welch
114	114	Scorpeo Private Limited	Lynn Jacobson	633 Brakus Forges	Test Landmark	2008-07-24	400051	(224)995-6459 x50878	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.61166	2014-01-14 07:58:44.61166	lynn-jacobson
115	115	Scorpeo Private Limited	Heber Dickinson	9794 Triston Point	Test Landmark	2008-07-24	400051	1-770-371-2239 x8539	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.632148	2014-01-14 07:58:44.632148	heber-dickinson
116	116	Scorpeo Private Limited	Mr. Nia Cormier	9410 O'Hara Fall	Test Landmark	2008-07-24	400051	1-270-424-0514	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.653963	2014-01-14 07:58:44.653963	mr-nia-cormier
117	117	Scorpeo Private Limited	Edd Hettinger	1288 Alva Shoals	Test Landmark	2008-07-24	400051	1-942-539-0049	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.674423	2014-01-14 07:58:44.674423	edd-hettinger
118	118	Scorpeo Private Limited	Barry Gleichner	50788 Gleason Station	Test Landmark	2008-07-24	400051	(263)685-1376 x18710	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.696242	2014-01-14 07:58:44.696242	barry-gleichner
119	119	Scorpeo Private Limited	Adriel Wilderman	76229 Pete Canyon	Test Landmark	2008-07-24	400051	241.875.4366 x0089	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.716822	2014-01-14 07:58:44.716822	adriel-wilderman
120	120	Scorpeo Private Limited	Germaine Pollich	7915 Ortiz Tunnel	Test Landmark	2008-07-24	400051	243.153.7303 x3435	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.737242	2014-01-14 07:58:44.737242	germaine-pollich
121	121	Scorpeo Private Limited	Wilber Raynor	926 Kertzmann Lake	Test Landmark	2008-07-24	400051	123-300-5190 x04368	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.758925	2014-01-14 07:58:44.758925	wilber-raynor
122	122	Scorpeo Private Limited	Mrs. Quinn Lind	91076 Harrison Parkways	Test Landmark	2008-07-24	400051	850-294-7040	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.779488	2014-01-14 07:58:44.779488	mrs-quinn-lind
123	123	Scorpeo Private Limited	Maybelle Russel	73731 Volkman Tunnel	Test Landmark	2008-07-24	400051	955.189.2419	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.801225	2014-01-14 07:58:44.801225	maybelle-russel
124	124	Scorpeo Private Limited	Lilliana Thompson	16702 Reynolds Falls	Test Landmark	2008-07-24	400051	735-481-5909	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.821695	2014-01-14 07:58:44.821695	lilliana-thompson
125	125	Scorpeo Private Limited	Dolly Rodriguez PhD	143 Mills Cliff	Test Landmark	2008-07-24	400051	518-497-2416 x63378	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.843595	2014-01-14 07:58:44.843595	dolly-rodriguez-phd
126	126	Scorpeo Private Limited	Devonte Swift	8164 Runte Terrace	Test Landmark	2008-07-24	400051	1-466-487-7182 x05079	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.864088	2014-01-14 07:58:44.864088	devonte-swift
127	127	Scorpeo Private Limited	Mr. Gwen Schulist	923 Gust Mills	Test Landmark	2008-07-24	400051	(898)808-7979 x2185	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.885826	2014-01-14 07:58:44.885826	mr-gwen-schulist
128	128	Scorpeo Private Limited	Mr. Irma Veum	550 Bogan Shoals	Test Landmark	2008-07-24	400051	301.343.2305 x665	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.906267	2014-01-14 07:58:44.906267	mr-irma-veum
129	129	Scorpeo Private Limited	Roy Grady	648 Cormier Summit	Test Landmark	2008-07-24	400051	(757)390-9547	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.928039	2014-01-14 07:58:44.928039	roy-grady
130	130	Scorpeo Private Limited	Gavin McClure	541 Toy Village	Test Landmark	2008-07-24	400051	(691)718-1090 x530	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.948516	2014-01-14 07:58:44.948516	gavin-mcclure
1	1	Scorpeo Private Limited	Miss Geovanny Yundt	580 Vickie Fork	Test Landmark	2008-07-24	400051	236.542.2938	verified	India	Maharashtra	Mumbai	2014-01-14 07:58:42.183361	2014-01-14 07:58:42.183361	miss-geovanny-yundt
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY schema_migrations (version) FROM stdin;
20131102054418
20131102151747
20140112034855
20140112052938
20140112053311
20140113054205
20140113065122
20140113074148
20140113093658
20140113104439
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY serveys (id, customer_id, tab_id, user_id, landmark, ease_of_location, telephone_number, mobile_number, person_contacted, relationship_with_applicant, years_at_current_address, expected_monthly_usage, bill_payer, bill_payer_occupation, residence_type, locality, residence_status, age, customer_attitude, credit_card, pan_card, pancard_number, address_proof_sighted, asset_seen, vihicle_owned, final_recomendation, av_done_by, av_supervisor_name, created_at, updated_at) FROM stdin;
1	1	6	1	test	Easy	9870240913	9819925066	slef	self	8	3523	self	self employed	Flat	Up Middle Class	Owned	25 to 35	co-operative	No credit card	Pan Card Available 	ASDDSF23424D	Electricity Bill	TV	Two Wheeler	Positive	FDSAFAFGDS	AFSADFGAF	2014-01-14 09:52:26.002516	2014-01-14 09:52:26.002516
2	7	5	1	test	Easy	9870240913	9819925066	slef	self`	15	3523	self	self employed	Bunglow	Up Middle Class	Owned	Below 18	co-operative	No credit card	Pan Card Available 	ASDDSF23424D	Passport	Music System	Two Wheeler	Positive	FDSAFAFGDS	AFSADFGAF	2014-01-14 10:25:25.103257	2014-01-14 10:25:25.103257
\.


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY tabs (id, name, tab_code, pincode, mac_address, created_at, updated_at) FROM stdin;
1	Tab-1	Tab-1	400051	\N	2014-01-14 07:58:41.335563	2014-01-14 07:58:41.335563
2	Tab-2	Tab-2	400051	\N	2014-01-14 07:58:41.49157	2014-01-14 07:58:41.49157
3	Tab-3	Tab-3	400051	\N	2014-01-14 07:58:41.528636	2014-01-14 07:58:41.528636
4	Tab-4	Tab-4	400051	\N	2014-01-14 07:58:41.540523	2014-01-14 07:58:41.540523
5	Tab-5	Tab-5	400051	\N	2014-01-14 07:58:41.555218	2014-01-14 07:58:41.555218
6	Tab-6	Tab-6	400051	\N	2014-01-14 07:58:41.566724	2014-01-14 07:58:41.566724
7	Tab-7	Tab-7	400051	\N	2014-01-14 07:58:41.578454	2014-01-14 07:58:41.578454
8	Tab-8	Tab-8	400051	\N	2014-01-14 07:58:41.591517	2014-01-14 07:58:41.591517
9	Tab-9	Tab-9	400051	\N	2014-01-14 07:58:41.603207	2014-01-14 07:58:41.603207
10	Tab-10	Tab-10	400051	\N	2014-01-14 07:58:41.616225	2014-01-14 07:58:41.616225
11	Tab-11	Tab-11	400051	\N	2014-01-14 07:58:41.627927	2014-01-14 07:58:41.627927
12	Tab-12	Tab-12	400051	\N	2014-01-14 07:58:41.63965	2014-01-14 07:58:41.63965
13	Tab-13	Tab-13	400051	\N	2014-01-14 07:58:41.652681	2014-01-14 07:58:41.652681
14	Tab-14	Tab-14	400051	\N	2014-01-14 07:58:41.664336	2014-01-14 07:58:41.664336
15	Tab-15	Tab-15	400051	\N	2014-01-14 07:58:41.677357	2014-01-14 07:58:41.677357
16	Tab-16	Tab-16	400051	\N	2014-01-14 07:58:41.689088	2014-01-14 07:58:41.689088
17	Tab-17	Tab-17	400051	\N	2014-01-14 07:58:41.702125	2014-01-14 07:58:41.702125
18	Tab-18	Tab-18	400051	\N	2014-01-14 07:58:41.713842	2014-01-14 07:58:41.713842
19	Tab-19	Tab-19	400051	\N	2014-01-14 07:58:41.725537	2014-01-14 07:58:41.725537
20	Tab-20	Tab-20	400051	\N	2014-01-14 07:58:41.738471	2014-01-14 07:58:41.738471
21	Tab-21	Tab-21	400051	\N	2014-01-14 07:58:41.750287	2014-01-14 07:58:41.750287
22	Tab-22	Tab-22	400051	\N	2014-01-14 07:58:41.763328	2014-01-14 07:58:41.763328
23	Tab-23	Tab-23	400051	\N	2014-01-14 07:58:41.775016	2014-01-14 07:58:41.775016
24	Tab-24	Tab-24	400051	\N	2014-01-14 07:58:41.786738	2014-01-14 07:58:41.786738
25	Tab-25	Tab-25	400051	\N	2014-01-14 07:58:41.799771	2014-01-14 07:58:41.799771
26	Tab-26	Tab-26	400051	\N	2014-01-14 07:58:41.811472	2014-01-14 07:58:41.811472
27	Tab-27	Tab-27	400051	\N	2014-01-14 07:58:41.824458	2014-01-14 07:58:41.824458
28	Tab-28	Tab-28	400051	\N	2014-01-14 07:58:41.836189	2014-01-14 07:58:41.836189
29	Tab-29	Tab-29	400051	\N	2014-01-14 07:58:41.84788	2014-01-14 07:58:41.84788
30	Tab-30	Tab-30	400051	\N	2014-01-14 07:58:41.86092	2014-01-14 07:58:41.86092
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY users (id, name, address, employee_uid, created_at, updated_at, password_digest, admin, photo_file_name, photo_content_type, photo_file_size, photo_updated_at, role_name, tab_id) FROM stdin;
1	sudhirsb2003@gmail.com	\N	\N	2014-01-14 07:59:57.031592	2014-01-14 08:02:04.128344	$2a$10$Lq.AMkcz7VUIXi.kvmHXpuiwiKEXnnuQMnf0p.RMfrsfYaqgog5my	t	\N	\N	\N	\N	super_user	1
2	shiva		sudhirsb2003@gmail.com	2014-01-14 09:20:26.087379	2014-01-14 09:24:13.932505	$2a$10$Z1SSnLcxHt6lc5LwDPtXO..fRWXu5HaaV8gZr70IBlZHUBpSs.Qky	f	IMG_6525.JPG	image/jpeg	1923435	2014-01-14 09:24:12.937519	tab_user	6
3	beena.shetty	\N	\N	2014-01-14 10:18:13.914607	2014-01-14 10:18:13.914607	$2a$10$e3JD3S.PcnoNMyJD/txsmOr1c/djIUVLCPlPEELXrTxs5L68Ar5Om	f	\N	\N	\N	\N	tab_user	5
4	sunil.kumar	\N	\N	2014-01-14 10:24:11.463124	2014-01-14 10:24:11.463124	$2a$10$aCTJemyvOjhkHwhaExaXa.NFC9kR.wzwqZmj5JNogWbUjamIK6E..	f	\N	\N	\N	\N	tab_user	3
\.


--
-- Name: assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: desidime; Tablespace: 
--

ALTER TABLE ONLY assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: desidime; Tablespace: 
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: serveys_pkey; Type: CONSTRAINT; Schema: public; Owner: desidime; Tablespace: 
--

ALTER TABLE ONLY serveys
    ADD CONSTRAINT serveys_pkey PRIMARY KEY (id);


--
-- Name: tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: desidime; Tablespace: 
--

ALTER TABLE ONLY tabs
    ADD CONSTRAINT tabs_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: desidime; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: desidime; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

