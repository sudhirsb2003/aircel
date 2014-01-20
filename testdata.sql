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

SELECT pg_catalog.setval('assignments_id_seq', 11, true);


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
    slug character varying(255),
    latitude double precision,
    longitude double precision
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

SELECT pg_catalog.setval('customers_id_seq', 131, true);


--
-- Name: document_photos; Type: TABLE; Schema: public; Owner: desidime; Tablespace: 
--

CREATE TABLE document_photos (
    id integer NOT NULL,
    servey_id character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer,
    photo_updated_at timestamp without time zone
);


ALTER TABLE public.document_photos OWNER TO desidime;

--
-- Name: document_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: desidime
--

CREATE SEQUENCE document_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.document_photos_id_seq OWNER TO desidime;

--
-- Name: document_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: desidime
--

ALTER SEQUENCE document_photos_id_seq OWNED BY document_photos.id;


--
-- Name: document_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desidime
--

SELECT pg_catalog.setval('document_photos_id_seq', 2, true);


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

SELECT pg_catalog.setval('serveys_id_seq', 5, true);


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
    tab_id integer,
    username character varying(255),
    logout_at timestamp without time zone
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

SELECT pg_catalog.setval('users_id_seq', 5, true);


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

ALTER TABLE ONLY document_photos ALTER COLUMN id SET DEFAULT nextval('document_photos_id_seq'::regclass);


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
6	5	2	1	2014-01-15 13:19:47.742868	2014-01-15 13:19:47.742868
7	5	4	1	2014-01-15 13:20:03.339269	2014-01-15 13:20:03.339269
8	5	8	1	2014-01-15 14:36:38.114655	2014-01-15 14:36:38.114655
9	5	11	1	2014-01-20 10:19:11.438157	2014-01-20 10:19:11.438157
10	5	13	1	2014-01-20 10:20:08.616502	2014-01-20 10:20:08.616502
11	5	131	1	2014-01-20 13:51:02.684119	2014-01-20 13:51:02.684119
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY customers (id, application_ref_number, ageny_name, applicant_name, address, landmark, date_of_birth, pincode, contact_number, status, coountry, state, city, created_at, updated_at, slug, latitude, longitude) FROM stdin;
9	9	Scorpeo Private Limited	Brooks Dooley	327 Cole Stream	Test Landmark	2008-07-24	400051	1-723-123-0218 x08468	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.387702	2014-01-14 07:58:42.387702	brooks-dooley	\N	\N
10	10	Scorpeo Private Limited	Mr. Eunice Kozey	19050 Luella Lake	Test Landmark	2008-07-24	400051	449-547-3762	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.40782	2014-01-14 07:58:42.40782	mr-eunice-kozey	\N	\N
12	12	Scorpeo Private Limited	Joanne Metz PhD	3602 Klein Alley	Test Landmark	2008-07-24	400051	857.140.4957 x9741	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.449133	2014-01-14 07:58:42.449133	joanne-metz-phd	\N	\N
14	14	Scorpeo Private Limited	Bailee Douglas	8868 Spencer Square	Test Landmark	2008-07-24	400051	1-745-177-7092 x82402	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.490601	2014-01-14 07:58:42.490601	bailee-douglas	\N	\N
15	15	Scorpeo Private Limited	Adah Cassin Sr.	4651 Baumbach Mews	Test Landmark	2008-07-24	400051	(849)023-7383	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.511197	2014-01-14 07:58:42.511197	adah-cassin-sr	\N	\N
16	16	Scorpeo Private Limited	Eliane Cummings	5159 Kertzmann Rapid	Test Landmark	2008-07-24	400051	214-589-4821	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.532153	2014-01-14 07:58:42.532153	eliane-cummings	\N	\N
17	17	Scorpeo Private Limited	Nathaniel Legros	87789 Roberts Trafficway	Test Landmark	2008-07-24	400051	394-363-8381	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.550997	2014-01-14 07:58:42.550997	nathaniel-legros	\N	\N
18	18	Scorpeo Private Limited	Derek Douglas	192 Rickie Hills	Test Landmark	2008-07-24	400051	(279)479-0026 x3774	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.573521	2014-01-14 07:58:42.573521	derek-douglas	\N	\N
19	19	Scorpeo Private Limited	Janie Bechtelar	4872 Gutmann Mall	Test Landmark	2008-07-24	400051	492.433.5013	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.59341	2014-01-14 07:58:42.59341	janie-bechtelar	\N	\N
20	20	Scorpeo Private Limited	Mr. Gillian Gleichner	464 Spencer Forest	Test Landmark	2008-07-24	400051	314-475-6681 x416	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.613434	2014-01-14 07:58:42.613434	mr-gillian-gleichner	\N	\N
21	21	Scorpeo Private Limited	Jacinto Marks	80704 Prosacco Mill	Test Landmark	2008-07-24	400051	1-278-815-2136 x249	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.634717	2014-01-14 07:58:42.634717	jacinto-marks	\N	\N
22	22	Scorpeo Private Limited	Enos Brekke	623 Rohan Key	Test Landmark	2008-07-24	400051	1-510-263-1579	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.654722	2014-01-14 07:58:42.654722	enos-brekke	\N	\N
23	23	Scorpeo Private Limited	Turner Becker	981 Huels Run	Test Landmark	2008-07-24	400051	842-746-3102	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.676116	2014-01-14 07:58:42.676116	turner-becker	\N	\N
24	24	Scorpeo Private Limited	Sim Schulist V	66290 Alexandro Passage	Test Landmark	2008-07-24	400051	1-505-536-7059	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.696225	2014-01-14 07:58:42.696225	sim-schulist-v	\N	\N
25	25	Scorpeo Private Limited	Domingo Corwin	162 Jayden Islands	Test Landmark	2008-07-24	400051	912.453.2617 x35439	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.716194	2014-01-14 07:58:42.716194	domingo-corwin	\N	\N
26	26	Scorpeo Private Limited	Erica Dooley V	1979 Luciano Route	Test Landmark	2008-07-24	400051	510-426-9954 x718	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.737514	2014-01-14 07:58:42.737514	erica-dooley-v	\N	\N
27	27	Scorpeo Private Limited	Liam Watsica DDS	47872 Amari Lock	Test Landmark	2008-07-24	400051	108-798-5671	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.757625	2014-01-14 07:58:42.757625	liam-watsica-dds	\N	\N
28	28	Scorpeo Private Limited	Taurean Reilly	49309 Mann Crossing	Test Landmark	2008-07-24	400051	(734)968-7409 x93736	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.778909	2014-01-14 07:58:42.778909	taurean-reilly	\N	\N
29	29	Scorpeo Private Limited	Arthur Boyer DDS	4308 Gerhold Rue	Test Landmark	2008-07-24	400051	474.668.9578 x720	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.799013	2014-01-14 07:58:42.799013	arthur-boyer-dds	\N	\N
30	30	Scorpeo Private Limited	Russell Ernser	1766 Gutkowski Row	Test Landmark	2008-07-24	400051	243.821.1947 x29537	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.818985	2014-01-14 07:58:42.818985	russell-ernser	\N	\N
31	31	Scorpeo Private Limited	Mrs. Ezekiel Aufderhar	960 Hilll Mills	Test Landmark	2008-07-24	400051	(377)699-1160 x9073	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.840402	2014-01-14 07:58:42.840402	mrs-ezekiel-aufderhar	\N	\N
32	32	Scorpeo Private Limited	Otis Kozey	47080 Carter Vista	Test Landmark	2008-07-24	400051	513.847.9559 x0566	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.860424	2014-01-14 07:58:42.860424	otis-kozey	\N	\N
33	33	Scorpeo Private Limited	Savannah Mayert	249 Yundt Lodge	Test Landmark	2008-07-24	400051	828-778-3448 x5939	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.881709	2014-01-14 07:58:42.881709	savannah-mayert	\N	\N
34	34	Scorpeo Private Limited	Raymond Corkery V	625 Jerod Ridge	Test Landmark	2008-07-24	400051	(272)183-7237 x0127	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.901728	2014-01-14 07:58:42.901728	raymond-corkery-v	\N	\N
35	35	Scorpeo Private Limited	Cyril Hackett PhD	256 Morissette Road	Test Landmark	2008-07-24	400051	869.638.7683 x8545	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.921907	2014-01-14 07:58:42.921907	cyril-hackett-phd	\N	\N
36	36	Scorpeo Private Limited	Jairo Runte	171 Bertrand Islands	Test Landmark	2008-07-24	400051	765.057.5874 x5834	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.943129	2014-01-14 07:58:42.943129	jairo-runte	\N	\N
37	37	Scorpeo Private Limited	Linnie Bauch	46742 Madge Mission	Test Landmark	2008-07-24	400051	(100)362-3954 x15598	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.963191	2014-01-14 07:58:42.963191	linnie-bauch	\N	\N
38	38	Scorpeo Private Limited	Raven Dickens	3003 Bertram Hollow	Test Landmark	2008-07-24	400051	1-317-408-0218 x4146	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:42.98457	2014-01-14 07:58:42.98457	raven-dickens	\N	\N
39	39	Scorpeo Private Limited	Claire Nienow	4397 Wilkinson Overpass	Test Landmark	2008-07-24	400051	1-886-338-7742	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.004593	2014-01-14 07:58:43.004593	claire-nienow	\N	\N
3	3	Scorpeo Private Limited	Rodolfo Weimann	9791 Heller Ville	Test Landmark	2008-07-24	400051	1-839-784-7775 x9233	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.251864	2014-01-14 07:58:42.251864	rodolfo-weimann	\N	\N
6	6	Scorpeo Private Limited	Aniyah Dickens	9377 Annamarie Stream	Test Landmark	2008-07-24	400051	1-691-739-3344	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.31356	2014-01-14 07:58:42.31356	aniyah-dickens	\N	\N
2	2	Scorpeo Private Limited	Nyah Yundt	8920 Joshuah Run	Test Landmark	2008-07-24	400051	1-327-280-3852	verified	India	Maharashtra	Mumbai	2014-01-14 07:58:42.232572	2014-01-14 07:58:42.232572	nyah-yundt	\N	\N
5	5	Scorpeo Private Limited	Nannie O'Conner	864 Edd Squares	Test Landmark	2008-07-24	400051	1-121-732-8443 x26949	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.2932	2014-01-14 07:58:42.2932	nannie-o-conner	\N	\N
11	11	Scorpeo Private Limited	Mrs. Sam Gorczany	20780 Glover Mews	Test Landmark	2008-07-24	400051	(749)594-6784	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.429104	2014-01-14 07:58:42.429104	mrs-sam-gorczany	\N	\N
4	4	Scorpeo Private Limited	Laverna Bosco	315 Grimes Well	Test Landmark	2008-07-24	400051	(852)138-5738 x03183	verified	India	Maharashtra	Mumbai	2014-01-14 07:58:42.271883	2014-01-14 07:58:42.271883	laverna-bosco	\N	\N
13	13	Scorpeo Private Limited	Hailie Beer Jr.	877 Julian Knolls	Test Landmark	2008-07-24	400051	(548)223-1243 x4185	submitted	India	Maharashtra	Mumbai	2014-01-14 07:58:42.469633	2014-01-14 07:58:42.469633	hailie-beer-jr	\N	\N
8	8	Scorpeo Private Limited	Branson Leffler	52454 Langworth Garden	Test Landmark	2008-07-24	400051	224.651.9479	verified	India	Maharashtra	Mumbai	2014-01-14 07:58:42.366358	2014-01-14 07:58:42.366358	branson-leffler	\N	\N
40	40	Scorpeo Private Limited	Markus Pacocha	2078 Parisian Loop	Test Landmark	2008-07-24	400051	712-215-1303 x9016	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.024636	2014-01-14 07:58:43.024636	markus-pacocha	\N	\N
41	41	Scorpeo Private Limited	Max Schoen	276 Beier Union	Test Landmark	2008-07-24	400051	(151)572-4988	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.046053	2014-01-14 07:58:43.046053	max-schoen	\N	\N
42	42	Scorpeo Private Limited	Maximilian Shanahan	7272 Loraine Grove	Test Landmark	2008-07-24	400051	(777)125-6883 x1465	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.066037	2014-01-14 07:58:43.066037	maximilian-shanahan	\N	\N
43	43	Scorpeo Private Limited	Brain Kuhlman	75979 Nickolas Village	Test Landmark	2008-07-24	400051	509.015.7331 x273	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.087358	2014-01-14 07:58:43.087358	brain-kuhlman	\N	\N
44	44	Scorpeo Private Limited	Vicente Macejkovic	1342 Ella Overpass	Test Landmark	2008-07-24	400051	899.218.5863 x503	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.1074	2014-01-14 07:58:43.1074	vicente-macejkovic	\N	\N
45	45	Scorpeo Private Limited	Mathilde Turner	116 Moen Ports	Test Landmark	2008-07-24	400051	439-557-1060 x074	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.128741	2014-01-14 07:58:43.128741	mathilde-turner	\N	\N
46	46	Scorpeo Private Limited	Lue Beer	3264 Ruecker Coves	Test Landmark	2008-07-24	400051	(125)157-3698 x86146	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.148718	2014-01-14 07:58:43.148718	lue-beer	\N	\N
47	47	Scorpeo Private Limited	Santa Wilkinson	955 Wiegand Plain	Test Landmark	2008-07-24	400051	(940)325-2136 x54279	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.168774	2014-01-14 07:58:43.168774	santa-wilkinson	\N	\N
48	48	Scorpeo Private Limited	Orpha Zemlak	529 Windler Divide	Test Landmark	2008-07-24	400051	442.368.8309 x015	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.190106	2014-01-14 07:58:43.190106	orpha-zemlak	\N	\N
49	49	Scorpeo Private Limited	Enola Kub	992 Gennaro Plains	Test Landmark	2008-07-24	400051	552-205-1446 x1889	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.2101	2014-01-14 07:58:43.2101	enola-kub	\N	\N
50	50	Scorpeo Private Limited	Reinhold Nikolaus	3544 Grant Expressway	Test Landmark	2008-07-24	400051	576.926.3836	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.231508	2014-01-14 07:58:43.231508	reinhold-nikolaus	\N	\N
51	51	Scorpeo Private Limited	Mrs. Heber Schulist	825 Marcus Plaza	Test Landmark	2008-07-24	400051	351-089-1524	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.251563	2014-01-14 07:58:43.251563	mrs-heber-schulist	\N	\N
52	52	Scorpeo Private Limited	Roma O'Reilly	3391 Bartoletti Ranch	Test Landmark	2008-07-24	400051	1-880-936-3622 x63671	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.271578	2014-01-14 07:58:43.271578	roma-o-reilly	\N	\N
53	53	Scorpeo Private Limited	Mr. Fay Doyle	399 Enrique Pine	Test Landmark	2008-07-24	400051	404.024.9191	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.292982	2014-01-14 07:58:43.292982	mr-fay-doyle	\N	\N
54	54	Scorpeo Private Limited	Shakira Haag	723 Kuhic Wall	Test Landmark	2008-07-24	400051	(920)168-4936 x1548	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.313122	2014-01-14 07:58:43.313122	shakira-haag	\N	\N
55	55	Scorpeo Private Limited	Jeramy Bernier IV	391 Ally Hollow	Test Landmark	2008-07-24	400051	118-058-9581	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.334545	2014-01-14 07:58:43.334545	jeramy-bernier-iv	\N	\N
56	56	Scorpeo Private Limited	Rosetta Jakubowski Jr.	71819 Oma Plains	Test Landmark	2008-07-24	400051	349-249-7973 x5113	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.354502	2014-01-14 07:58:43.354502	rosetta-jakubowski-jr	\N	\N
57	57	Scorpeo Private Limited	Elnora Schimmel	79902 Alva Route	Test Landmark	2008-07-24	400051	695-272-5293	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.417485	2014-01-14 07:58:43.417485	elnora-schimmel	\N	\N
58	58	Scorpeo Private Limited	Virginie Hyatt	12142 Kennedi Coves	Test Landmark	2008-07-24	400051	620.057.0351	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.435226	2014-01-14 07:58:43.435226	virginie-hyatt	\N	\N
59	59	Scorpeo Private Limited	Brando Schneider	4447 Kautzer Via	Test Landmark	2008-07-24	400051	378-050-3956 x5862	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.455244	2014-01-14 07:58:43.455244	brando-schneider	\N	\N
60	60	Scorpeo Private Limited	Dax Haag	9089 Adams Hollow	Test Landmark	2008-07-24	400051	915.901.3202 x52691	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.47859	2014-01-14 07:58:43.47859	dax-haag	\N	\N
61	61	Scorpeo Private Limited	Isaac Sauer	6851 Samantha Road	Test Landmark	2008-07-24	400051	703.180.2611	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.498821	2014-01-14 07:58:43.498821	isaac-sauer	\N	\N
62	62	Scorpeo Private Limited	Mervin Romaguera	6943 Dibbert Harbors	Test Landmark	2008-07-24	400051	1-736-442-8302	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.519008	2014-01-14 07:58:43.519008	mervin-romaguera	\N	\N
63	63	Scorpeo Private Limited	Miss Aubrey Pfeffer	7830 Ocie Fields	Test Landmark	2008-07-24	400051	615-955-4717 x508	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.540253	2014-01-14 07:58:43.540253	miss-aubrey-pfeffer	\N	\N
64	64	Scorpeo Private Limited	Uriah Mueller DVM	8193 Gaylord Alley	Test Landmark	2008-07-24	400051	283-369-6566 x754	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.560277	2014-01-14 07:58:43.560277	uriah-mueller-dvm	\N	\N
65	65	Scorpeo Private Limited	Mrs. Leonardo Beatty	7551 Fadel Roads	Test Landmark	2008-07-24	400051	1-467-824-8286 x844	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.581925	2014-01-14 07:58:43.581925	mrs-leonardo-beatty	\N	\N
66	66	Scorpeo Private Limited	Devante Sporer	71383 Gerard Course	Test Landmark	2008-07-24	400051	(386)496-0248 x4932	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.601723	2014-01-14 07:58:43.601723	devante-sporer	\N	\N
67	67	Scorpeo Private Limited	Pedro Waelchi	664 Madeline Dam	Test Landmark	2008-07-24	400051	(835)495-9064	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.621679	2014-01-14 07:58:43.621679	pedro-waelchi	\N	\N
68	68	Scorpeo Private Limited	Gregoria Schuster	306 Bednar Burgs	Test Landmark	2008-07-24	400051	1-667-300-6280	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.643056	2014-01-14 07:58:43.643056	gregoria-schuster	\N	\N
69	69	Scorpeo Private Limited	Mavis Walter	582 Nicholas Squares	Test Landmark	2008-07-24	400051	506-693-6779 x186	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.663042	2014-01-14 07:58:43.663042	mavis-walter	\N	\N
70	70	Scorpeo Private Limited	Liza Barrows	527 Mallie Isle	Test Landmark	2008-07-24	400051	669.713.7653 x3491	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.684344	2014-01-14 07:58:43.684344	liza-barrows	\N	\N
71	71	Scorpeo Private Limited	Gerard Ziemann IV	9641 Grant Wall	Test Landmark	2008-07-24	400051	(752)395-5408 x203	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.704477	2014-01-14 07:58:43.704477	gerard-ziemann-iv	\N	\N
72	72	Scorpeo Private Limited	Kenyatta Douglas	132 Muller Harbors	Test Landmark	2008-07-24	400051	754.612.0082 x42420	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.725713	2014-01-14 07:58:43.725713	kenyatta-douglas	\N	\N
73	73	Scorpeo Private Limited	Faye Gleason	56835 Zulauf Mill	Test Landmark	2008-07-24	400051	862-865-8429	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.745772	2014-01-14 07:58:43.745772	faye-gleason	\N	\N
74	74	Scorpeo Private Limited	Norval Johnson	263 Miller Island	Test Landmark	2008-07-24	400051	247-098-8203	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.765765	2014-01-14 07:58:43.765765	norval-johnson	\N	\N
75	75	Scorpeo Private Limited	Delaney Shields	92604 Vincent River	Test Landmark	2008-07-24	400051	1-946-373-7722 x1183	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.789263	2014-01-14 07:58:43.789263	delaney-shields	\N	\N
76	76	Scorpeo Private Limited	Winifred Davis	1240 Johnson Pike	Test Landmark	2008-07-24	400051	(123)657-5380	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.809711	2014-01-14 07:58:43.809711	winifred-davis	\N	\N
77	77	Scorpeo Private Limited	Heidi Schroeder	14138 Juliet Trail	Test Landmark	2008-07-24	400051	1-592-875-5016	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.831531	2014-01-14 07:58:43.831531	heidi-schroeder	\N	\N
78	78	Scorpeo Private Limited	Jamie Bode	10673 Alejandrin River	Test Landmark	2008-07-24	400051	136-409-2964 x4352	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.852051	2014-01-14 07:58:43.852051	jamie-bode	\N	\N
79	79	Scorpeo Private Limited	Sofia Leffler	573 Cole Spur	Test Landmark	2008-07-24	400051	1-320-776-3730	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.87383	2014-01-14 07:58:43.87383	sofia-leffler	\N	\N
80	80	Scorpeo Private Limited	Lonny Kovacek	97280 Bernier Burgs	Test Landmark	2008-07-24	400051	(638)199-2465 x55570	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.894203	2014-01-14 07:58:43.894203	lonny-kovacek	\N	\N
81	81	Scorpeo Private Limited	Harmony Kerluke	638 Ardith Brook	Test Landmark	2008-07-24	400051	362-451-9593	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.916063	2014-01-14 07:58:43.916063	harmony-kerluke	\N	\N
82	82	Scorpeo Private Limited	Abigail Rowe V	6639 Ebba Ramp	Test Landmark	2008-07-24	400051	1-768-322-3939 x485	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.936571	2014-01-14 07:58:43.936571	abigail-rowe-v	\N	\N
83	83	Scorpeo Private Limited	Breanna Lesch	5218 Breitenberg Rapids	Test Landmark	2008-07-24	400051	737-312-2611	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.956993	2014-01-14 07:58:43.956993	breanna-lesch	\N	\N
84	84	Scorpeo Private Limited	Gabe Bartoletti	853 Pacocha Drives	Test Landmark	2008-07-24	400051	(530)188-3903 x637	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.978816	2014-01-14 07:58:43.978816	gabe-bartoletti	\N	\N
85	85	Scorpeo Private Limited	Kayli Gerhold	90737 Lennie Isle	Test Landmark	2008-07-24	400051	(411)953-7505 x93366	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:43.999342	2014-01-14 07:58:43.999342	kayli-gerhold	\N	\N
86	86	Scorpeo Private Limited	Rylee Botsford	110 Dietrich Village	Test Landmark	2008-07-24	400051	342.384.3439	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.021048	2014-01-14 07:58:44.021048	rylee-botsford	\N	\N
87	87	Scorpeo Private Limited	Guiseppe Gislason II	48335 Betsy Plain	Test Landmark	2008-07-24	400051	713.579.4361	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.041586	2014-01-14 07:58:44.041586	guiseppe-gislason-ii	\N	\N
88	88	Scorpeo Private Limited	Kathlyn Borer	1569 Rice Track	Test Landmark	2008-07-24	400051	705.118.6396 x9907	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.063371	2014-01-14 07:58:44.063371	kathlyn-borer	\N	\N
89	89	Scorpeo Private Limited	Gretchen Mitchell	4886 Rubye Neck	Test Landmark	2008-07-24	400051	(894)949-1875 x949	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.083837	2014-01-14 07:58:44.083837	gretchen-mitchell	\N	\N
90	90	Scorpeo Private Limited	Kaitlin Kozey V	946 Kiehn Station	Test Landmark	2008-07-24	400051	942.044.4658	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.105786	2014-01-14 07:58:44.105786	kaitlin-kozey-v	\N	\N
91	91	Scorpeo Private Limited	Queen Mitchell	2021 Aurelia Courts	Test Landmark	2008-07-24	400051	1-649-591-0204 x77115	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.126121	2014-01-14 07:58:44.126121	queen-mitchell	\N	\N
92	92	Scorpeo Private Limited	Mr. Dariana Mills	29753 Considine Bypass	Test Landmark	2008-07-24	400051	863.196.1890	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.147973	2014-01-14 07:58:44.147973	mr-dariana-mills	\N	\N
93	93	Scorpeo Private Limited	Milford Collier	65207 Monica Crescent	Test Landmark	2008-07-24	400051	1-692-417-2478 x943	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.168402	2014-01-14 07:58:44.168402	milford-collier	\N	\N
94	94	Scorpeo Private Limited	Ella Herman	890 Alana Centers	Test Landmark	2008-07-24	400051	938-654-3203 x09002	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.190133	2014-01-14 07:58:44.190133	ella-herman	\N	\N
95	95	Scorpeo Private Limited	Dashawn Bashirian	3502 Theodore Crossroad	Test Landmark	2008-07-24	400051	(935)094-8441 x298	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.210644	2014-01-14 07:58:44.210644	dashawn-bashirian	\N	\N
96	96	Scorpeo Private Limited	Kameron Feeney	68806 Erik Landing	Test Landmark	2008-07-24	400051	1-800-996-4840	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.231149	2014-01-14 07:58:44.231149	kameron-feeney	\N	\N
97	97	Scorpeo Private Limited	Furman Quitzon	571 Crooks Divide	Test Landmark	2008-07-24	400051	(804)309-6545 x0217	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.25292	2014-01-14 07:58:44.25292	furman-quitzon	\N	\N
98	98	Scorpeo Private Limited	Christina Von V	228 Smith Skyway	Test Landmark	2008-07-24	400051	751.952.7416	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.273398	2014-01-14 07:58:44.273398	christina-von-v	\N	\N
99	99	Scorpeo Private Limited	Bethel Murray	5247 Simonis Village	Test Landmark	2008-07-24	400051	(508)766-1501 x62710	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.2952	2014-01-14 07:58:44.2952	bethel-murray	\N	\N
100	100	Scorpeo Private Limited	Mrs. Rodger Aufderhar	792 Schowalter Ways	Test Landmark	2008-07-24	400051	140-666-9850 x7001	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.315701	2014-01-14 07:58:44.315701	mrs-rodger-aufderhar	\N	\N
101	101	Scorpeo Private Limited	Keyshawn Reilly III	91926 Heller Mount	Test Landmark	2008-07-24	400051	(299)619-2580 x59707	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.337519	2014-01-14 07:58:44.337519	keyshawn-reilly-iii	\N	\N
102	102	Scorpeo Private Limited	Carey Reichert	58791 Hoppe Burgs	Test Landmark	2008-07-24	400051	746.122.9921 x9227	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.357937	2014-01-14 07:58:44.357937	carey-reichert	\N	\N
103	103	Scorpeo Private Limited	Kamron Feest	56966 Jany Hill	Test Landmark	2008-07-24	400051	954-661-7349	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.379673	2014-01-14 07:58:44.379673	kamron-feest	\N	\N
104	104	Scorpeo Private Limited	Mr. Ernie Nikolaus	4311 Ike Park	Test Landmark	2008-07-24	400051	(691)374-9381	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.400285	2014-01-14 07:58:44.400285	mr-ernie-nikolaus	\N	\N
105	105	Scorpeo Private Limited	Jarod Dooley IV	96879 Emmerich Plains	Test Landmark	2008-07-24	400051	(479)627-6317 x960	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.422	2014-01-14 07:58:44.422	jarod-dooley-iv	\N	\N
106	106	Scorpeo Private Limited	Ms. Ephraim White	678 Ritchie Radial	Test Landmark	2008-07-24	400051	279-853-4276	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.442494	2014-01-14 07:58:44.442494	ms-ephraim-white	\N	\N
107	107	Scorpeo Private Limited	Heloise Kilback	527 Tabitha Plaza	Test Landmark	2008-07-24	400051	923-877-2485 x11769	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.463129	2014-01-14 07:58:44.463129	heloise-kilback	\N	\N
108	108	Scorpeo Private Limited	Korey Marquardt	511 Morar Crescent	Test Landmark	2008-07-24	400051	1-126-628-9487	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.484748	2014-01-14 07:58:44.484748	korey-marquardt	\N	\N
109	109	Scorpeo Private Limited	Cortney Kuhic	28526 Hans Extension	Test Landmark	2008-07-24	400051	1-557-598-2641	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.505204	2014-01-14 07:58:44.505204	cortney-kuhic	\N	\N
110	110	Scorpeo Private Limited	Geo Schuster	638 Reynolds Turnpike	Test Landmark	2008-07-24	400051	318.811.2131	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.527022	2014-01-14 07:58:44.527022	geo-schuster	\N	\N
111	111	Scorpeo Private Limited	Coby Mohr	88068 Towne Street	Test Landmark	2008-07-24	400051	791.364.9083 x803	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.548166	2014-01-14 07:58:44.548166	coby-mohr	\N	\N
112	112	Scorpeo Private Limited	Kurtis Conroy	1992 Lang Rapid	Test Landmark	2008-07-24	400051	1-996-136-5064 x72285	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.569891	2014-01-14 07:58:44.569891	kurtis-conroy	\N	\N
113	113	Scorpeo Private Limited	Adelle Welch	79589 Weston Cove	Test Landmark	2008-07-24	400051	1-933-637-5719	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.589915	2014-01-14 07:58:44.589915	adelle-welch	\N	\N
114	114	Scorpeo Private Limited	Lynn Jacobson	633 Brakus Forges	Test Landmark	2008-07-24	400051	(224)995-6459 x50878	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.61166	2014-01-14 07:58:44.61166	lynn-jacobson	\N	\N
115	115	Scorpeo Private Limited	Heber Dickinson	9794 Triston Point	Test Landmark	2008-07-24	400051	1-770-371-2239 x8539	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.632148	2014-01-14 07:58:44.632148	heber-dickinson	\N	\N
116	116	Scorpeo Private Limited	Mr. Nia Cormier	9410 O'Hara Fall	Test Landmark	2008-07-24	400051	1-270-424-0514	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.653963	2014-01-14 07:58:44.653963	mr-nia-cormier	\N	\N
117	117	Scorpeo Private Limited	Edd Hettinger	1288 Alva Shoals	Test Landmark	2008-07-24	400051	1-942-539-0049	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.674423	2014-01-14 07:58:44.674423	edd-hettinger	\N	\N
118	118	Scorpeo Private Limited	Barry Gleichner	50788 Gleason Station	Test Landmark	2008-07-24	400051	(263)685-1376 x18710	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.696242	2014-01-14 07:58:44.696242	barry-gleichner	\N	\N
119	119	Scorpeo Private Limited	Adriel Wilderman	76229 Pete Canyon	Test Landmark	2008-07-24	400051	241.875.4366 x0089	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.716822	2014-01-14 07:58:44.716822	adriel-wilderman	\N	\N
120	120	Scorpeo Private Limited	Germaine Pollich	7915 Ortiz Tunnel	Test Landmark	2008-07-24	400051	243.153.7303 x3435	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.737242	2014-01-14 07:58:44.737242	germaine-pollich	\N	\N
121	121	Scorpeo Private Limited	Wilber Raynor	926 Kertzmann Lake	Test Landmark	2008-07-24	400051	123-300-5190 x04368	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.758925	2014-01-14 07:58:44.758925	wilber-raynor	\N	\N
122	122	Scorpeo Private Limited	Mrs. Quinn Lind	91076 Harrison Parkways	Test Landmark	2008-07-24	400051	850-294-7040	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.779488	2014-01-14 07:58:44.779488	mrs-quinn-lind	\N	\N
123	123	Scorpeo Private Limited	Maybelle Russel	73731 Volkman Tunnel	Test Landmark	2008-07-24	400051	955.189.2419	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.801225	2014-01-14 07:58:44.801225	maybelle-russel	\N	\N
124	124	Scorpeo Private Limited	Lilliana Thompson	16702 Reynolds Falls	Test Landmark	2008-07-24	400051	735-481-5909	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.821695	2014-01-14 07:58:44.821695	lilliana-thompson	\N	\N
125	125	Scorpeo Private Limited	Dolly Rodriguez PhD	143 Mills Cliff	Test Landmark	2008-07-24	400051	518-497-2416 x63378	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.843595	2014-01-14 07:58:44.843595	dolly-rodriguez-phd	\N	\N
126	126	Scorpeo Private Limited	Devonte Swift	8164 Runte Terrace	Test Landmark	2008-07-24	400051	1-466-487-7182 x05079	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.864088	2014-01-14 07:58:44.864088	devonte-swift	\N	\N
127	127	Scorpeo Private Limited	Mr. Gwen Schulist	923 Gust Mills	Test Landmark	2008-07-24	400051	(898)808-7979 x2185	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.885826	2014-01-14 07:58:44.885826	mr-gwen-schulist	\N	\N
128	128	Scorpeo Private Limited	Mr. Irma Veum	550 Bogan Shoals	Test Landmark	2008-07-24	400051	301.343.2305 x665	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.906267	2014-01-14 07:58:44.906267	mr-irma-veum	\N	\N
129	129	Scorpeo Private Limited	Roy Grady	648 Cormier Summit	Test Landmark	2008-07-24	400051	(757)390-9547	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.928039	2014-01-14 07:58:44.928039	roy-grady	\N	\N
130	130	Scorpeo Private Limited	Gavin McClure	541 Toy Village	Test Landmark	2008-07-24	400051	(691)718-1090 x530	pending	India	Maharashtra	Mumbai	2014-01-14 07:58:44.948516	2014-01-14 07:58:44.948516	gavin-mcclure	\N	\N
1	1	Scorpeo Private Limited	Miss Geovanny Yundt	580 Vickie Fork	Test Landmark	2008-07-24	400051	236.542.2938	verified	India	Maharashtra	Mumbai	2014-01-14 07:58:42.183361	2014-01-14 07:58:42.183361	miss-geovanny-yundt	\N	\N
7	7	Scorpeo Private Limited	Ms. Ottilie Brakus	639 Gabriella Mission	Test Landmark	2008-07-24	400051	345-043-5673 x6831	verified	India	Maharashtra	Mumbai	2014-01-14 07:58:42.346758	2014-01-14 07:58:42.346758	ms-ottilie-brakus	\N	\N
131	131	Scorpeo Private Limited	Amir Khan	Kurla	MIG Colony	1993-02-03	400079	9819288158	submitted	India	Maharashtra	Mumbai	2014-01-15 13:16:23.635326	2014-01-15 13:16:23.635326	amir-khan	19.071988999999999	72.884081999999992
\.


--
-- Data for Name: document_photos; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY document_photos (id, servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, photo_updated_at) FROM stdin;
1	4	2014-01-15 14:38:03.458324	2014-01-15 14:38:03.458324	3665598340_db342552ce_o.jpg	image/jpeg	635167	2014-01-15 14:38:02.951478
2	5	2014-01-20 12:15:57.242631	2014-01-20 12:15:57.242631	9325782441_8aa0d6d02e_o.jpg	image/jpeg	83582	2014-01-20 12:15:56.663812
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
20140115131351
20140115140041
20140115140128
20140116070234
20140116074704
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: desidime
--

COPY serveys (id, customer_id, tab_id, user_id, landmark, ease_of_location, telephone_number, mobile_number, person_contacted, relationship_with_applicant, years_at_current_address, expected_monthly_usage, bill_payer, bill_payer_occupation, residence_type, locality, residence_status, age, customer_attitude, credit_card, pan_card, pancard_number, address_proof_sighted, asset_seen, vihicle_owned, final_recomendation, av_done_by, av_supervisor_name, created_at, updated_at) FROM stdin;
1	1	6	1	test	Easy	9870240913	9819925066	slef	self	8	3523	self	self employed	Flat	Up Middle Class	Owned	25 to 35	co-operative	No credit card	Pan Card Available 	ASDDSF23424D	Electricity Bill	TV	Two Wheeler	Positive	FDSAFAFGDS	AFSADFGAF	2014-01-14 09:52:26.002516	2014-01-14 09:52:26.002516
2	7	5	1	test	Easy	9870240913	9819925066	slef	self`	15	3523	self	self employed	Bunglow	Up Middle Class	Owned	Below 18	co-operative	No credit card	Pan Card Available 	ASDDSF23424D	Passport	Music System	Two Wheeler	Positive	FDSAFAFGDS	AFSADFGAF	2014-01-14 10:25:25.103257	2014-01-14 10:25:25.103257
3	2	5	1	test	Easy	9870240913	9819925066	Sudhir Vishwakarma	Brother	11	3523	\N	\N	\N	\N	Owned	18 to 25	co-operative	\N	Pan Card Available 	ASDDSF23424D	Driving Licence	TV	Two Wheeler	Positive	Sunil Kumar Verma	Mohd. Azahruddin	2014-01-15 14:09:09.891387	2014-01-15 14:09:09.891387
4	8	5	1	test	Easy	9870240913	9819925066	Sudhir Vishwakarma	Brother	12	3523	Husband/Wife	self employed	Bunglow	Up Middle Class	Owned	Below 18	co-operative	Recent paid statement shown	No pan card	ASDDSF23424D	Electricity Bill	TV	Two Wheeler	Positive	Sunil Kumar Verma	Mohd. Azahruddin	2014-01-15 14:38:03.454628	2014-01-15 14:38:03.454628
5	4	5	1	test	Easy	9870240913	9819925066	Sudhir Vishwakarma	Brother	17	3523	Son/Daughter	self employed	Flat	Lower Middle Class	Owned	25 to 35	co-operative	No credit card	Pan Card Available 	ASDDSF23424D	Passport	Music System	Two Wheeler	Positive	Sunil Kumar Verma	Mohd. Azahruddin	2014-01-20 12:15:57.199072	2014-01-20 12:15:57.199072
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

COPY users (id, name, address, employee_uid, created_at, updated_at, password_digest, admin, photo_file_name, photo_content_type, photo_file_size, photo_updated_at, role_name, tab_id, username, logout_at) FROM stdin;
3	Beena Shetty	Mumbai	097YTTRE	2014-01-14 10:18:13.914607	2014-01-17 14:27:12.687534	$2a$10$e3JD3S.PcnoNMyJD/txsmOr1c/djIUVLCPlPEELXrTxs5L68Ar5Om	f	IMG_6329.JPG	image/jpeg	4376267	2014-01-17 14:27:11.49399	tab_user	5	beena.shetty	2014-01-16 13:25:59.529538
1	Sudhir Vishwakarma	\N	\N	2014-01-14 07:59:57.031592	2014-01-16 13:26:17.279897	$2a$10$Lq.AMkcz7VUIXi.kvmHXpuiwiKEXnnuQMnf0p.RMfrsfYaqgog5my	t	\N	\N	\N	\N	super_user	1	sudhirsb2003	2014-01-16 11:53:29.253093
2	Shiva Kumar		sudhirsb2003@gmail.com	2014-01-14 09:20:26.087379	2014-01-16 12:04:45.962249	$2a$10$Z1SSnLcxHt6lc5LwDPtXO..fRWXu5HaaV8gZr70IBlZHUBpSs.Qky	f	IMG_6525.JPG	image/jpeg	1923435	2014-01-14 09:24:12.937519	tab_user	6	shiva	2014-01-16 12:04:45.960724
4	Sunil Kumar	\N	\N	2014-01-14 10:24:11.463124	2014-01-16 13:27:04.663331	$2a$10$aCTJemyvOjhkHwhaExaXa.NFC9kR.wzwqZmj5JNogWbUjamIK6E..	f	\N	\N	\N	\N	tab_user	3	sunil.kumar	2014-01-16 11:56:40.889401
5	Chetan Tandel	Mumbai	097YT	2014-01-17 14:04:08.948213	2014-01-20 10:18:35.405223	$2a$10$4JKk6B2OpKcrt0w/LOrzWuehSLoSltHsHIv0fLEqlNCVmip9dXVGO	f	IMG_6885.JPG	image/jpeg	2182696	2014-01-17 14:07:29.272366	tab_user	7	blazetango	\N
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
-- Name: document_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: desidime; Tablespace: 
--

ALTER TABLE ONLY document_photos
    ADD CONSTRAINT document_photos_pkey PRIMARY KEY (id);


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

