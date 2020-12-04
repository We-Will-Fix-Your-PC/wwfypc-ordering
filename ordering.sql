--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4

-- Started on 2020-09-19 13:36:39 UTC

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
-- TOC entry 209 (class 1259 OID 1012329)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ordering;

--
-- TOC entry 208 (class 1259 OID 1012327)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ordering;

--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 1012339)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ordering;

--
-- TOC entry 210 (class 1259 OID 1012337)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ordering;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 1012321)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ordering;

--
-- TOC entry 206 (class 1259 OID 1012319)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ordering;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 1012347)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ordering;

--
-- TOC entry 215 (class 1259 OID 1012357)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ordering;

--
-- TOC entry 214 (class 1259 OID 1012355)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ordering;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 1012345)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ordering;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 1012365)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ordering;

--
-- TOC entry 216 (class 1259 OID 1012363)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ordering;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 219 (class 1259 OID 1012425)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ordering;

--
-- TOC entry 218 (class 1259 OID 1012423)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ordering;

--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 1012311)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ordering;

--
-- TOC entry 204 (class 1259 OID 1012309)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ordering;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 221 (class 1259 OID 1012458)
-- Name: django_keycloak_auth_nonce; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.django_keycloak_auth_nonce (
    id integer NOT NULL,
    state uuid NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    next_path character varying(255)
);


ALTER TABLE public.django_keycloak_auth_nonce OWNER TO ordering;

--
-- TOC entry 220 (class 1259 OID 1012456)
-- Name: django_keycloak_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.django_keycloak_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_keycloak_auth_nonce_id_seq OWNER TO ordering;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 220
-- Name: django_keycloak_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.django_keycloak_auth_nonce_id_seq OWNED BY public.django_keycloak_auth_nonce.id;


--
-- TOC entry 223 (class 1259 OID 1012471)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.django_keycloak_auth_remoteuseropenidconnectprofile (
    id integer NOT NULL,
    access_token text,
    expires_before timestamp with time zone,
    refresh_token text,
    refresh_expires_before timestamp with time zone,
    sub character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.django_keycloak_auth_remoteuseropenidconnectprofile OWNER TO ordering;

--
-- TOC entry 222 (class 1259 OID 1012469)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.django_keycloak_auth_remoteuseropenidconnectprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_keycloak_auth_remoteuseropenidconnectprofile_id_seq OWNER TO ordering;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 222
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.django_keycloak_auth_remoteuseropenidconnectprofile_id_seq OWNED BY public.django_keycloak_auth_remoteuseropenidconnectprofile.id;


--
-- TOC entry 203 (class 1259 OID 1012300)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ordering;

--
-- TOC entry 202 (class 1259 OID 1012298)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ordering;

--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 224 (class 1259 OID 1012490)
-- Name: django_session; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ordering;

--
-- TOC entry 228 (class 1259 OID 1012530)
-- Name: unlocking_brand; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.unlocking_brand (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.unlocking_brand OWNER TO ordering;

--
-- TOC entry 227 (class 1259 OID 1012528)
-- Name: unlocking_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.unlocking_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unlocking_brand_id_seq OWNER TO ordering;

--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 227
-- Name: unlocking_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.unlocking_brand_id_seq OWNED BY public.unlocking_brand.id;


--
-- TOC entry 230 (class 1259 OID 1012541)
-- Name: unlocking_model; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.unlocking_model (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    brand_id integer NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.unlocking_model OWNER TO ordering;

--
-- TOC entry 229 (class 1259 OID 1012539)
-- Name: unlocking_model_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.unlocking_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unlocking_model_id_seq OWNER TO ordering;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 229
-- Name: unlocking_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.unlocking_model_id_seq OWNED BY public.unlocking_model.id;


--
-- TOC entry 226 (class 1259 OID 1012502)
-- Name: unlocking_network; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.unlocking_network (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.unlocking_network OWNER TO ordering;

--
-- TOC entry 225 (class 1259 OID 1012500)
-- Name: unlocking_network_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.unlocking_network_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unlocking_network_id_seq OWNER TO ordering;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 225
-- Name: unlocking_network_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.unlocking_network_id_seq OWNED BY public.unlocking_network.id;


--
-- TOC entry 236 (class 1259 OID 1012596)
-- Name: unlocking_networkname; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.unlocking_networkname (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    network_id integer NOT NULL
);


ALTER TABLE public.unlocking_networkname OWNER TO ordering;

--
-- TOC entry 235 (class 1259 OID 1012594)
-- Name: unlocking_networkname_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.unlocking_networkname_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unlocking_networkname_id_seq OWNER TO ordering;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 235
-- Name: unlocking_networkname_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.unlocking_networkname_id_seq OWNED BY public.unlocking_networkname.id;


--
-- TOC entry 234 (class 1259 OID 1012563)
-- Name: unlocking_phoneunlock; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.unlocking_phoneunlock (
    id integer NOT NULL,
    price numeric(10,2) NOT NULL,
    "time" character varying(255) NOT NULL,
    brand_id integer NOT NULL,
    device_id integer,
    network_id integer NOT NULL
);


ALTER TABLE public.unlocking_phoneunlock OWNER TO ordering;

--
-- TOC entry 233 (class 1259 OID 1012561)
-- Name: unlocking_phoneunlock_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.unlocking_phoneunlock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unlocking_phoneunlock_id_seq OWNER TO ordering;

--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 233
-- Name: unlocking_phoneunlock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.unlocking_phoneunlock_id_seq OWNED BY public.unlocking_phoneunlock.id;


--
-- TOC entry 232 (class 1259 OID 1012552)
-- Name: unlocking_repairtype; Type: TABLE; Schema: public; Owner: ordering
--

CREATE TABLE public.unlocking_repairtype (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL
);


ALTER TABLE public.unlocking_repairtype OWNER TO ordering;

--
-- TOC entry 231 (class 1259 OID 1012550)
-- Name: unlocking_repairtype_id_seq; Type: SEQUENCE; Schema: public; Owner: ordering
--

CREATE SEQUENCE public.unlocking_repairtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unlocking_repairtype_id_seq OWNER TO ordering;

--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 231
-- Name: unlocking_repairtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ordering
--

ALTER SEQUENCE public.unlocking_repairtype_id_seq OWNED BY public.unlocking_repairtype.id;


--
-- TOC entry 2891 (class 2604 OID 1012332)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2892 (class 2604 OID 1012342)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2890 (class 2604 OID 1012324)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2893 (class 2604 OID 1012350)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2894 (class 2604 OID 1012360)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2895 (class 2604 OID 1012368)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2896 (class 2604 OID 1012428)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2889 (class 2604 OID 1012314)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 1012461)
-- Name: django_keycloak_auth_nonce id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.django_keycloak_auth_nonce_id_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 1012474)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_remoteuseropenidconnectprofile ALTER COLUMN id SET DEFAULT nextval('public.django_keycloak_auth_remoteuseropenidconnectprofile_id_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 1012303)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 1012533)
-- Name: unlocking_brand id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_brand ALTER COLUMN id SET DEFAULT nextval('public.unlocking_brand_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 1012544)
-- Name: unlocking_model id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_model ALTER COLUMN id SET DEFAULT nextval('public.unlocking_model_id_seq'::regclass);


--
-- TOC entry 2900 (class 2604 OID 1012505)
-- Name: unlocking_network id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_network ALTER COLUMN id SET DEFAULT nextval('public.unlocking_network_id_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 1012599)
-- Name: unlocking_networkname id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_networkname ALTER COLUMN id SET DEFAULT nextval('public.unlocking_networkname_id_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 1012566)
-- Name: unlocking_phoneunlock id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_phoneunlock ALTER COLUMN id SET DEFAULT nextval('public.unlocking_phoneunlock_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 1012555)
-- Name: unlocking_repairtype id; Type: DEFAULT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_repairtype ALTER COLUMN id SET DEFAULT nextval('public.unlocking_repairtype_id_seq'::regclass);


--
-- TOC entry 3129 (class 0 OID 1012329)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3131 (class 0 OID 1012339)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3127 (class 0 OID 1012321)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add nonce	7	add_nonce
26	Can change nonce	7	change_nonce
27	Can delete nonce	7	delete_nonce
28	Can view nonce	7	view_nonce
29	Can add remote user open id connect profile	8	add_remoteuseropenidconnectprofile
30	Can change remote user open id connect profile	8	change_remoteuseropenidconnectprofile
31	Can delete remote user open id connect profile	8	delete_remoteuseropenidconnectprofile
32	Can view remote user open id connect profile	8	view_remoteuseropenidconnectprofile
33	Can add network	9	add_network
34	Can change network	9	change_network
35	Can delete network	9	delete_network
36	Can view network	9	view_network
37	Can add brand	10	add_brand
38	Can change brand	10	change_brand
39	Can delete brand	10	delete_brand
40	Can view brand	10	view_brand
41	Can add model	11	add_model
42	Can change model	11	change_model
43	Can delete model	11	delete_model
44	Can view model	11	view_model
45	Can add repair type	12	add_repairtype
46	Can change repair type	12	change_repairtype
47	Can delete repair type	12	delete_repairtype
48	Can view repair type	12	view_repairtype
49	Can add phone unlock	13	add_phoneunlock
50	Can change phone unlock	13	change_phoneunlock
51	Can delete phone unlock	13	delete_phoneunlock
52	Can view phone unlock	13	view_phoneunlock
53	Can add network name	14	add_networkname
54	Can change network name	14	change_networkname
55	Can delete network name	14	delete_networkname
56	Can view network name	14	view_networkname
\.


--
-- TOC entry 3133 (class 0 OID 1012347)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1		\N	f	9f0622c0-f428-4277-9ab7-d210caceff9b				f	t	2020-04-18 14:39:30.79499+00
3		2020-05-03 19:02:27.46052+00	f	0e60f0c0-58d9-4e21-8df3-f46de5750f96	Neil	Paget	neil@cardifftec.co.uk	t	t	2020-05-03 19:02:27.418669+00
2		2020-05-03 19:28:45.930252+00	f	766639c9-608d-4029-af77-2aa830ead343	Q	🦄	q@magicalcodewit.ch	t	t	2020-04-18 14:46:34.773801+00
\.


--
-- TOC entry 3135 (class 0 OID 1012357)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3137 (class 0 OID 1012365)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3139 (class 0 OID 1012425)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-18 15:03:15.304555+00	1	ee	1	[{"added": {}}, {"added": {"name": "network name", "object": "EE"}}, {"added": {"name": "network name", "object": "ASDA Mobile"}}]	9	2
2	2020-04-18 15:03:32.025888+00	2	vodafone	1	[{"added": {}}, {"added": {"name": "network name", "object": "Vodafone"}}]	9	2
3	2020-04-18 15:03:47.886205+00	3	three	1	[{"added": {}}, {"added": {"name": "network name", "object": "Three"}}]	9	2
4	2020-04-18 15:04:33.008843+00	1	Apple	1	[{"added": {}}]	10	2
5	2020-04-18 15:04:45.395038+00	2	Huawei	1	[{"added": {}}]	10	2
6	2020-04-18 15:04:55.13645+00	3	Samsung	1	[{"added": {}}]	10	2
7	2020-04-19 16:47:26.278374+00	1	Apple  on ee	1	[{"added": {}}]	13	2
8	2020-04-19 16:47:59.904642+00	1	Samsung  on ee	2	[{"changed": {"fields": ["Brand"]}}]	13	2
9	2020-04-19 16:49:24.331081+00	1	iPhone 6s	1	[{"added": {}}]	11	2
10	2020-04-19 16:49:34.031253+00	2	iPhone 7	1	[{"added": {}}]	11	2
11	2020-04-19 16:49:47.509128+00	2	Apple iPhone 6s on ee	1	[{"added": {}}]	13	2
12	2020-04-19 16:49:59.422874+00	3	Apple iPhone 7 on ee	1	[{"added": {}}]	13	2
13	2020-05-03 19:47:38.702036+00	4	Sony	1	[{"added": {}}]	10	3
14	2020-05-03 19:49:20.035536+00	5	Motorola	1	[{"added": {}}]	10	3
15	2020-05-03 19:50:22.212766+00	6	HTC	1	[{"added": {}}]	10	3
16	2020-05-03 19:52:08.420702+00	7	LG	1	[{"added": {}}]	10	3
17	2020-05-03 19:53:40.429929+00	8	Nokia	1	[{"added": {}}]	10	3
18	2020-05-03 19:55:17.35031+00	2	iPhone 7	3		11	3
19	2020-05-03 19:55:17.353652+00	1	iPhone 6s	3		11	3
20	2020-05-03 20:05:03.882873+00	3	iPhone 5, 5c, 5s, SE	1	[{"added": {}}]	11	3
21	2020-05-03 20:05:39.886074+00	4	iPhone 6, 6+, 6s, 6s+	1	[{"added": {}}]	11	3
22	2020-05-03 20:06:07.557247+00	5	iPhone 7, 7+, 8, 8+	1	[{"added": {}}]	11	3
23	2020-05-03 20:06:30.553096+00	6	iPhone X	1	[{"added": {}}]	11	3
24	2020-05-03 20:08:53.700747+00	6	iPhone X	3		11	3
25	2020-05-03 20:08:53.716146+00	5	iPhone 7, 7+, 8, 8+	3		11	3
26	2020-05-03 20:08:53.721191+00	4	iPhone 6, 6+, 6s, 6s+	3		11	3
27	2020-05-03 20:09:18.165568+00	7	iPhone 6, 6+, 6s, 6s+	1	[{"added": {}}]	11	3
28	2020-05-03 20:09:46.358271+00	8	iPhone 7, 7+, 8, 8+	1	[{"added": {}}]	11	3
29	2020-05-03 20:10:07.312417+00	9	iPhone X	1	[{"added": {}}]	11	3
30	2020-05-03 20:13:29.180189+00	9	iPhone X	3		11	3
31	2020-05-03 20:13:29.183602+00	8	iPhone 7, 7+, 8, 8+	3		11	3
32	2020-05-03 20:13:29.187086+00	7	iPhone 6, 6+, 6s, 6s+	3		11	3
33	2020-05-03 20:13:53.779497+00	10	iPhone 6, 6+, 6s, 6s+	1	[{"added": {}}]	11	3
34	2020-05-03 20:14:07.412649+00	11	iPhone 7, 7+, 8, 8+	1	[{"added": {}}]	11	3
35	2020-05-03 20:14:23.512847+00	12	iPhone X	1	[{"added": {}}]	11	3
36	2020-05-03 20:16:01.103493+00	12	iPhone X	3		11	3
37	2020-05-03 20:16:01.117746+00	11	iPhone 7, 7+, 8, 8+	3		11	3
38	2020-05-03 20:16:01.135577+00	10	iPhone 6, 6+, 6s, 6s+	3		11	3
39	2020-05-03 20:16:17.443033+00	13	iPhone 6, 6+, 6s, 6s+	1	[{"added": {}}]	11	3
40	2020-05-03 20:16:29.218456+00	14	iPhone 7, 7+, 8, 8+	1	[{"added": {}}]	11	3
41	2020-05-03 20:16:41.336819+00	15	iPhone X	1	[{"added": {}}]	11	3
42	2020-05-03 20:19:16.031175+00	16	Huawei - All Models	1	[{"added": {}}]	11	3
43	2020-05-03 20:20:54.566198+00	17	Samsung - All Models	1	[{"added": {}}]	11	3
44	2020-05-03 20:22:40.28315+00	18	Sony - All Models	1	[{"added": {}}]	11	3
45	2020-05-03 20:24:05.805435+00	19	Motorola - All Models	1	[{"added": {}}]	11	3
46	2020-05-03 20:26:09.236789+00	20	HTC - All Models	1	[{"added": {}}]	11	3
47	2020-05-03 20:27:26.077077+00	21	LG - All Models	1	[{"added": {}}]	11	3
48	2020-05-03 20:29:12.50451+00	22	Nokia - All Models	1	[{"added": {}}]	11	3
49	2020-05-03 20:30:28.653875+00	3	three	3		9	3
50	2020-05-03 20:30:28.657593+00	2	vodafone	3		9	3
51	2020-05-03 20:30:28.660935+00	1	ee	3		9	3
52	2020-05-03 20:32:24.70945+00	4	EE	1	[{"added": {}}, {"added": {"name": "network name", "object": "EE"}}]	9	3
53	2020-05-03 20:32:43.788658+00	5	o2	1	[{"added": {}}, {"added": {"name": "network name", "object": "o2"}}]	9	3
54	2020-05-03 20:33:02.655491+00	6	Vodafone	1	[{"added": {}}, {"added": {"name": "network name", "object": "Vodafone"}}]	9	3
55	2020-05-03 20:33:17.003753+00	7	3	1	[{"added": {}}, {"added": {"name": "network name", "object": "3"}}]	9	3
56	2020-05-03 20:35:02.264925+00	5	o2	2	[{"deleted": {"name": "network name", "object": "o2"}}]	9	3
57	2020-05-03 20:35:23.64591+00	5	o2	2	[{"added": {"name": "network name", "object": "o2"}}]	9	3
58	2020-05-03 20:39:11.503566+00	7	3	3		9	3
59	2020-05-03 20:39:11.51179+00	6	Vodafone	3		9	3
60	2020-05-03 20:39:11.515249+00	5	o2	3		9	3
61	2020-05-03 20:39:11.529508+00	4	EE	3		9	3
62	2020-05-03 20:39:31.200142+00	8	EE	1	[{"added": {}}, {"added": {"name": "network name", "object": "EE"}}]	9	3
63	2020-05-03 20:39:45.754677+00	9	o2	1	[{"added": {}}, {"added": {"name": "network name", "object": "o2"}}]	9	3
64	2020-05-03 20:40:02.080966+00	10	Vodafone	1	[{"added": {}}, {"added": {"name": "network name", "object": "Vodafone"}}]	9	3
65	2020-05-03 20:40:17.313891+00	11	3	1	[{"added": {}}, {"added": {"name": "network name", "object": "3"}}]	9	3
66	2020-05-03 20:43:26.231173+00	11	3	3		9	3
67	2020-05-03 20:43:26.241286+00	10	Vodafone	3		9	3
68	2020-05-03 20:43:26.247957+00	9	o2	3		9	3
69	2020-05-03 20:43:26.251451+00	8	EE	3		9	3
70	2020-05-03 20:43:44.325953+00	12	EE	1	[{"added": {}}, {"added": {"name": "network name", "object": "EE"}}]	9	3
71	2020-05-03 20:44:04.265165+00	13	o2	1	[{"added": {}}, {"added": {"name": "network name", "object": "o2"}}]	9	3
72	2020-05-03 20:44:21.844538+00	14	Vodafone	1	[{"added": {}}, {"added": {"name": "network name", "object": "Vodafone"}}]	9	3
73	2020-05-03 20:44:34.286163+00	15	3	1	[{"added": {}}, {"added": {"name": "network name", "object": "3"}}]	9	3
74	2020-05-03 22:37:23.463188+00	4	Apple iPhone 5, 5c, 5s, SE on o2	1	[{"added": {}}]	13	3
75	2020-05-03 22:37:37.94135+00	5	Apple iPhone 6, 6+, 6s, 6s+ on o2	1	[{"added": {}}]	13	3
76	2020-05-03 22:37:52.202506+00	6	Apple iPhone 7, 7+, 8, 8+ on o2	1	[{"added": {}}]	13	3
77	2020-05-03 22:38:03.555398+00	7	Apple iPhone X on o2	1	[{"added": {}}]	13	3
78	2020-05-03 22:39:17.145147+00	8	Apple iPhone 5, 5c, 5s, SE on EE	1	[{"added": {}}]	13	3
79	2020-05-03 22:39:27.383839+00	9	Apple iPhone 6, 6+, 6s, 6s+ on EE	1	[{"added": {}}]	13	3
80	2020-05-03 22:39:39.404384+00	10	Apple iPhone 7, 7+, 8, 8+ on EE	1	[{"added": {}}]	13	3
81	2020-05-03 22:39:49.689939+00	11	Apple iPhone X on EE	1	[{"added": {}}]	13	3
82	2020-05-03 22:40:13.580751+00	12	Apple iPhone 5, 5c, 5s, SE on Vodafone	1	[{"added": {}}]	13	3
83	2020-05-03 22:40:36.275618+00	13	Apple iPhone 6, 6+, 6s, 6s+ on Vodafone	1	[{"added": {}}]	13	3
84	2020-05-03 22:40:47.41697+00	14	Apple iPhone 7, 7+, 8, 8+ on Vodafone	1	[{"added": {}}]	13	3
85	2020-05-03 22:41:03.166873+00	15	Apple iPhone X on Vodafone	1	[{"added": {}}]	13	3
86	2020-05-03 22:41:24.047908+00	16	Apple iPhone 5, 5c, 5s, SE on 3	1	[{"added": {}}]	13	3
87	2020-05-03 22:41:40.330549+00	17	Apple iPhone 6, 6+, 6s, 6s+ on 3	1	[{"added": {}}]	13	3
88	2020-05-03 22:41:52.697898+00	18	Apple iPhone 7, 7+, 8, 8+ on 3	1	[{"added": {}}]	13	3
89	2020-05-03 22:42:05.91463+00	19	Apple iPhone X on 3	1	[{"added": {}}]	13	3
90	2020-05-03 22:43:16.555015+00	20	Sony Sony - All Models on EE	1	[{"added": {}}]	13	3
91	2020-05-03 22:43:35.417057+00	21	Sony Sony - All Models on o2	1	[{"added": {}}]	13	3
92	2020-05-03 22:43:50.846753+00	22	Sony Sony - All Models on Vodafone	1	[{"added": {}}]	13	3
93	2020-05-03 22:44:05.466034+00	23	Sony Sony - All Models on 3	1	[{"added": {}}]	13	3
94	2020-05-03 22:44:22.228521+00	24	Huawei Huawei - All Models on o2	1	[{"added": {}}]	13	3
95	2020-05-03 22:44:44.576301+00	25	Huawei Huawei - All Models on EE	1	[{"added": {}}]	13	3
96	2020-05-03 22:45:02.810149+00	26	Huawei Huawei - All Models on Vodafone	1	[{"added": {}}]	13	3
97	2020-05-03 22:45:19.136549+00	27	Huawei Huawei - All Models on 3	1	[{"added": {}}]	13	3
98	2020-05-03 22:45:41.301341+00	28	Samsung Samsung - All Models on o2	1	[{"added": {}}]	13	3
99	2020-05-03 22:45:59.72648+00	29	Samsung Samsung - All Models on EE	1	[{"added": {}}]	13	3
100	2020-05-03 22:46:17.413867+00	30	Samsung Samsung - All Models on Vodafone	1	[{"added": {}}]	13	3
101	2020-05-03 22:46:33.544889+00	31	Samsung Samsung - All Models on 3	1	[{"added": {}}]	13	3
102	2020-05-03 22:46:53.953478+00	32	Motorola Motorola - All Models on o2	1	[{"added": {}}]	13	3
103	2020-05-03 22:47:10.360283+00	33	Motorola Motorola - All Models on EE	1	[{"added": {}}]	13	3
104	2020-05-03 22:47:24.538146+00	34	Motorola Motorola - All Models on Vodafone	1	[{"added": {}}]	13	3
105	2020-05-03 22:47:40.389166+00	35	Motorola Motorola - All Models on 3	1	[{"added": {}}]	13	3
106	2020-05-03 22:47:56.193425+00	36	HTC HTC - All Models on o2	1	[{"added": {}}]	13	3
107	2020-05-03 22:48:11.580095+00	37	HTC HTC - All Models on EE	1	[{"added": {}}]	13	3
108	2020-05-03 22:48:24.700771+00	38	HTC HTC - All Models on Vodafone	1	[{"added": {}}]	13	3
109	2020-05-03 22:48:42.294618+00	39	HTC HTC - All Models on 3	1	[{"added": {}}]	13	3
110	2020-05-03 22:48:59.594604+00	40	LG LG - All Models on o2	1	[{"added": {}}]	13	3
111	2020-05-03 22:49:13.067681+00	41	LG LG - All Models on EE	1	[{"added": {}}]	13	3
112	2020-05-03 22:49:26.371718+00	42	LG LG - All Models on Vodafone	1	[{"added": {}}]	13	3
113	2020-05-03 22:49:39.397789+00	43	LG LG - All Models on 3	1	[{"added": {}}]	13	3
114	2020-05-03 22:49:55.142807+00	44	Nokia Nokia - All Models on o2	1	[{"added": {}}]	13	3
115	2020-05-03 22:50:08.456257+00	45	Nokia Nokia - All Models on EE	1	[{"added": {}}]	13	3
116	2020-05-03 22:50:24.592274+00	46	Nokia Nokia - All Models on Vodafone	1	[{"added": {}}]	13	3
117	2020-05-03 22:50:38.944448+00	47	Nokia Nokia - All Models on 3	1	[{"added": {}}]	13	3
\.


--
-- TOC entry 3125 (class 0 OID 1012311)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	django_keycloak_auth	nonce
8	django_keycloak_auth	remoteuseropenidconnectprofile
9	unlocking	network
10	unlocking	brand
11	unlocking	model
12	unlocking	repairtype
13	unlocking	phoneunlock
14	unlocking	networkname
\.


--
-- TOC entry 3141 (class 0 OID 1012458)
-- Dependencies: 221
-- Data for Name: django_keycloak_auth_nonce; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.django_keycloak_auth_nonce (id, state, redirect_uri, next_path) FROM stdin;
8	1b00d8ec-0bec-4835-aac1-ebec2d9ed590	https://ordering.cardifftec.uk/auth/callback/	/admin/
10	20636359-f0e2-43de-a0ac-4e66d0bfa89b	https://ordering.cardifftec.uk/auth/callback/	/admin/
11	2d256f4a-fcd3-4da5-b1cb-29e34d21e0a7	https://ordering.cardifftec.uk/auth/callback/	/admin/
12	9b9422c1-1f8b-43a9-a13f-37bcc060a01d	https://ordering.cardifftec.uk/auth/callback/	/admin/
15	53919fa9-84a8-490d-a114-200b97727e93	https://ordering.cardifftec.uk/auth/callback/	/admin/
16	700e0692-6b93-4e2f-be53-98280de1131c	https://ordering.cardifftec.uk/auth/callback/	/admin/
17	ebb89a02-0596-49f2-a8b9-e0cdb6f36605	https://ordering.cardifftec.uk/auth/callback/	/admin/
18	5ffcda22-5059-4c96-acb3-efe37697051b	https://ordering.cardifftec.uk/auth/callback/	/admin/
19	893452ab-a44e-4ba9-b059-e6a761dd8f7e	https://ordering.cardifftec.uk/auth/callback/	/admin/
20	152b4741-ccbe-406e-bd5f-5dd2e73f09fd	https://ordering.cardifftec.uk/auth/callback/	/admin/
21	4b3c5fa3-ec60-498a-a884-fb7d74b5aaa8	https://ordering.cardifftec.uk/auth/callback/	/admin/
22	88e72927-7f16-4f2a-9610-8acffcc65684	https://ordering.cardifftec.uk/auth/callback/	/admin/
23	28d02718-c65f-4b1a-bd81-796efd141c61	https://ordering.cardifftec.uk/auth/callback/	/admin/
24	811f3fd1-ec37-410b-aec1-2d8b03e08b59	https://ordering.cardifftec.uk/auth/callback/	/admin/
25	a9450c3c-1c92-452f-badc-d0ef058a2fb7	https://ordering.cardifftec.uk/auth/callback/	/admin/
\.


--
-- TOC entry 3143 (class 0 OID 1012471)
-- Dependencies: 223
-- Data for Name: django_keycloak_auth_remoteuseropenidconnectprofile; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.django_keycloak_auth_remoteuseropenidconnectprofile (id, access_token, expires_before, refresh_token, refresh_expires_before, sub, user_id) FROM stdin;
1	eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJfbGNGNlZMaU5DWTVEX2w5VWNQa1lzaEdnOXJlWEotMFc2b1lST210cExFIn0.eyJqdGkiOiJmZDI3ZTRjZi01NzQ0LTQwMWMtYjJlMC0yZTVjYzY4M2RkNTMiLCJleHAiOjE1OTkzMjAxMjEsIm5iZiI6MCwiaWF0IjoxNTk5MzE5ODIxLCJpc3MiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJhdWQiOlsicGF5bWVudHMtc2VydmVyIiwiYWNjb3VudCJdLCJzdWIiOiI5ZjA2MjJjMC1mNDI4LTQyNzctOWFiNy1kMjEwY2FjZWZmOWIiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJvcmRlci1zeXN0ZW0iLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiJhMDNlYWM3ZC03NGQwLTRlNTMtOTE2Ny1hN2E2NmE2YmM0MWIiLCJhY3IiOiIxIiwiYWxsb3dlZC1vcmlnaW5zIjpbImh0dHBzOi8vb3JkZXJpbmcuY2FyZGlmZnRlYy51ayJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7InBheW1lbnRzLXNlcnZlciI6eyJyb2xlcyI6WyJ2aWV3LXBheW1lbnRzIl19LCJvcmRlci1zeXN0ZW0iOnsicm9sZXMiOlsidW1hX3Byb3RlY3Rpb24iXX0sImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJjbGllbnRJZCI6Im9yZGVyLXN5c3RlbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiY2xpZW50SG9zdCI6IjEwLjAuMC4xIiwicHJlZmVycmVkX3VzZXJuYW1lIjoic2VydmljZS1hY2NvdW50LW9yZGVyLXN5c3RlbSIsImNsaWVudEFkZHJlc3MiOiIxMC4wLjAuMSJ9.oiyIJqNNuLKEyi_LTV_0Z-dxRhqiHuj28rJ1MV_jpshDlartoT2fIR8It8TKORi1zsQdjIeYbrEGG_guF2w6sMnQD27qI23WXdvBK9tqOzZqIs4kMFlCYmSLTYFei4ry1vVQZhvZ8jLk7w04oxFouSOHl2jS_R-1aHGrccYLYU0dEkA0FVzGqY5RzGVydFRfz_wLHztfCCQYzm4dXm4z0bJ7gNO_caiywNc97XIf-0Dgbu7wEzSvWSZhjyJh_QV3F-t5QBctmdiGT5G6dLqNFO81Yc6xlybWgk93C8eRkvAbd27i4zE3NRBdOXQDgXX6V7mWD1BmAO2GVfvM0e5jlQ	2020-09-05 15:35:21.514078+00	eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI0ZjQwYzEwMS0xZjc3LTRiMmYtYmZhMi1jNzA2MTc5ZTNhOTgifQ.eyJqdGkiOiJhZDRkYjQ2Zi0xNDMxLTQ3NDgtOTE2OS03MDg4Y2E0NGU4ZjEiLCJleHAiOjE1OTk0MDYyMjEsIm5iZiI6MCwiaWF0IjoxNTk5MzE5ODIxLCJpc3MiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJhdWQiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJzdWIiOiI5ZjA2MjJjMC1mNDI4LTQyNzctOWFiNy1kMjEwY2FjZWZmOWIiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoib3JkZXItc3lzdGVtIiwiYXV0aF90aW1lIjowLCJzZXNzaW9uX3N0YXRlIjoiYTAzZWFjN2QtNzRkMC00ZTUzLTkxNjctYTdhNjZhNmJjNDFiIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJwYXltZW50cy1zZXJ2ZXIiOnsicm9sZXMiOlsidmlldy1wYXltZW50cyJdfSwib3JkZXItc3lzdGVtIjp7InJvbGVzIjpbInVtYV9wcm90ZWN0aW9uIl19LCJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6Im9wZW5pZCBwcm9maWxlIGVtYWlsIn0.-YwAtthDCLXuAqXzO5oK1MXpic30RezYKBqdyhjd2hU	2020-09-06 15:30:21.514078+00	9f0622c0-f428-4277-9ab7-d210caceff9b	1
2	eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJfbGNGNlZMaU5DWTVEX2w5VWNQa1lzaEdnOXJlWEotMFc2b1lST210cExFIn0.eyJqdGkiOiIyYjkzMTQ3NC02NmViLTQ1OTYtYjQ0NC0yNzIyN2EyMjg3ODMiLCJleHAiOjE1ODg1MzQ0MjUsIm5iZiI6MCwiaWF0IjoxNTg4NTM0MTI1LCJpc3MiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJhdWQiOlsidnNtcyIsImJvdC1zZXJ2ZXIiLCJhYmMtcHJveHkiLCJjbHMiLCJicm9rZXIiLCJhY2NvdW50Il0sInN1YiI6Ijc2NjYzOWM5LTYwOGQtNDAyOS1hZjc3LTJhYTgzMGVhZDM0MyIsInR5cCI6IkJlYXJlciIsImF6cCI6Im9yZGVyLXN5c3RlbSIsImF1dGhfdGltZSI6MTU4ODUzNDA5Nywic2Vzc2lvbl9zdGF0ZSI6IjFiOTIxNmYxLWE0YjMtNDlhOS1iZTZhLTRiODk0OWM5NjdiMyIsImFjciI6IjAiLCJhbGxvd2VkLW9yaWdpbnMiOlsiaHR0cHM6Ly9vcmRlcmluZy5jYXJkaWZmdGVjLnVrIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJjdXN0b21lcl9zdXBwb3J0X2FnZW50Iiwib2ZmbGluZV9hY2Nlc3MiLCJhZG1pbiIsImRldmVsb3BlciIsInVtYV9hdXRob3JpemF0aW9uIiwiY3VzdG9tZXIiXX0sInJlc291cmNlX2FjY2VzcyI6eyJ2c21zIjp7InJvbGVzIjpbInNlbmQtbWVzc2FnZXMiXX0sImJvdC1zZXJ2ZXIiOnsicm9sZXMiOlsic2VuZC1tZXNzYWdlcyIsInN0YWZmIl19LCJvcmRlci1zeXN0ZW0iOnsicm9sZXMiOlsic3RhZmYiXX0sImFiYy1wcm94eSI6eyJyb2xlcyI6WyJzdGFmZiJdfSwiY2xzIjp7InJvbGVzIjpbImFnZW50Iiwic3RhZmYiXX0sImJyb2tlciI6eyJyb2xlcyI6WyJyZWFkLXRva2VuIl19LCJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6Im9wZW5pZCBwcm9maWxlIGVtYWlsIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImdlbmRlciI6Im51bGwiLCJuYW1lIjoiUSBcdUQ4M0VcdUREODQiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJxQG1hZ2ljYWxjb2Rld2l0LmNoIiwibG9jYWxlIjoiZW5fR0IiLCJnaXZlbl9uYW1lIjoiUSIsImZhbWlseV9uYW1lIjoiXHVEODNFXHVERDg0IiwiZW1haWwiOiJxQG1hZ2ljYWxjb2Rld2l0LmNoIn0.ozkXfXPXe7Mzb6vVsCt14x0_uVMU5CSw_U2WkPgWq6Q_BC7-VoxsMZkO6v6822T2BdghDibUHmjHvoQe9lM-4VRoc4dZWEHaAbdGI2QGts9kMX915jGgY3TC75jd91ufF1rWm02x6UkQjTGTmb7fSYsn1aT6xCAGYn2cqJKUI940D8BvTQnKHieEK1SYB2-bUZw-dxkkz4s0T8AzdnT8--q4a_zx9CrjwVvztxVHjRURiuHfwYmRZpGT3AZKgaYIWa0GsQ-phCVZwRXlwaq1jcRWcDb9ZG5XU_auGUhsC2RJA8wmV0JdPH6abEoOltxDlyPgwBKXWGgwaBLf3WE_9A	2020-05-03 19:33:45.857033+00	eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI0ZjQwYzEwMS0xZjc3LTRiMmYtYmZhMi1jNzA2MTc5ZTNhOTgifQ.eyJqdGkiOiI4OGZjMWY0ZC1hZmUxLTQ0N2MtYTQ0Mi00ZThiODcyNTBmYjIiLCJleHAiOjE1ODg2MjA1MjUsIm5iZiI6MCwiaWF0IjoxNTg4NTM0MTI1LCJpc3MiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJhdWQiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJzdWIiOiI3NjY2MzljOS02MDhkLTQwMjktYWY3Ny0yYWE4MzBlYWQzNDMiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoib3JkZXItc3lzdGVtIiwiYXV0aF90aW1lIjowLCJzZXNzaW9uX3N0YXRlIjoiMWI5MjE2ZjEtYTRiMy00OWE5LWJlNmEtNGI4OTQ5Yzk2N2IzIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbImN1c3RvbWVyX3N1cHBvcnRfYWdlbnQiLCJvZmZsaW5lX2FjY2VzcyIsImFkbWluIiwiZGV2ZWxvcGVyIiwidW1hX2F1dGhvcml6YXRpb24iLCJjdXN0b21lciJdfSwicmVzb3VyY2VfYWNjZXNzIjp7InZzbXMiOnsicm9sZXMiOlsic2VuZC1tZXNzYWdlcyJdfSwiYm90LXNlcnZlciI6eyJyb2xlcyI6WyJzZW5kLW1lc3NhZ2VzIiwic3RhZmYiXX0sIm9yZGVyLXN5c3RlbSI6eyJyb2xlcyI6WyJzdGFmZiJdfSwiYWJjLXByb3h5Ijp7InJvbGVzIjpbInN0YWZmIl19LCJjbHMiOnsicm9sZXMiOlsiYWdlbnQiLCJzdGFmZiJdfSwiYnJva2VyIjp7InJvbGVzIjpbInJlYWQtdG9rZW4iXX0sImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwifQ.46DxaHToXPr_XwiZlvXH7c9oLb9dPfNy1pmV-ifSbnY	2020-05-04 19:28:45.857033+00	766639c9-608d-4029-af77-2aa830ead343	2
3	eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJfbGNGNlZMaU5DWTVEX2w5VWNQa1lzaEdnOXJlWEotMFc2b1lST210cExFIn0.eyJqdGkiOiI3MTU1YTNkNC0zODg2LTQxMmItOTE3ZS05MWVlMzJlYjkyNjkiLCJleHAiOjE1ODg1NDYzNjAsIm5iZiI6MCwiaWF0IjoxNTg4NTQ2MDYwLCJpc3MiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJhdWQiOlsicmVhbG0tbWFuYWdlbWVudCIsImJvdC1zZXJ2ZXIiLCJjbHMiLCJhY2NvdW50Il0sInN1YiI6IjBlNjBmMGMwLTU4ZDktNGUyMS04ZGYzLWY0NmRlNTc1MGY5NiIsInR5cCI6IkJlYXJlciIsImF6cCI6Im9yZGVyLXN5c3RlbSIsImF1dGhfdGltZSI6MTU4NDk2MzI3OSwic2Vzc2lvbl9zdGF0ZSI6IjE2NmUwZmZmLTFhY2QtNDExMS05OTk3LTVjZDg0Yzc0M2Q4NiIsImFjciI6IjAiLCJhbGxvd2VkLW9yaWdpbnMiOlsiaHR0cHM6Ly9vcmRlcmluZy5jYXJkaWZmdGVjLnVrIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJ1c2VyX21hbmFnZXIiLCJjdXN0b21lcl9zdXBwb3J0X2FnZW50Iiwib2ZmbGluZV9hY2Nlc3MiLCJhZG1pbiIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsicmVhbG0tbWFuYWdlbWVudCI6eyJyb2xlcyI6WyJ2aWV3LWlkZW50aXR5LXByb3ZpZGVycyIsInZpZXctcmVhbG0iLCJ2aWV3LWV2ZW50cyIsIm1hbmFnZS11c2VycyIsInZpZXctdXNlcnMiLCJ2aWV3LWNsaWVudHMiLCJ2aWV3LWF1dGhvcml6YXRpb24iLCJxdWVyeS1jbGllbnRzIiwicXVlcnktZ3JvdXBzIiwicXVlcnktdXNlcnMiXX0sImJvdC1zZXJ2ZXIiOnsicm9sZXMiOlsic3RhZmYiXX0sIm9yZGVyLXN5c3RlbSI6eyJyb2xlcyI6WyJzdGFmZiJdfSwiY2xzIjp7InJvbGVzIjpbImFnZW50Il19LCJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6Im9wZW5pZCBwcm9maWxlIGVtYWlsIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJOZWlsIFBhZ2V0IiwicHJlZmVycmVkX3VzZXJuYW1lIjoibmVpbCIsImdpdmVuX25hbWUiOiJOZWlsIiwiZmFtaWx5X25hbWUiOiJQYWdldCIsImVtYWlsIjoibmVpbEBjYXJkaWZmdGVjLmNvLnVrIn0.GPMfO0u5DN9VmsEvMu1JrtUuNoYlBtWeyg4i7PStOD0AiysgPeHN3xDmhOMO0njjTJud_7XB_XlrSu9BXrONJJmFkvSrKQPAjuhJDzlxvqk6mABIk9yI-Qntr54N_8AEwOb2QwOMoi5ZkUQo2mebBC3XQclPNN-Aep3UfohcvtJSIO41iwMqedR7sG3NydoEGg83gfM82OMAjqzWG1fCL5sR-FxjF7dI3mTsfGyk1tAjCZ0brMb3uHedfgMsFe0_2z5u0mDgQZfVTsYTw71cEtwBRGC2VVtyTLzIeovwUD41SJskH8SB8tLLxXSTsSYjE1vgVhVvEEYDbbSJErb28w	2020-05-03 22:52:40.333647+00	eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI0ZjQwYzEwMS0xZjc3LTRiMmYtYmZhMi1jNzA2MTc5ZTNhOTgifQ.eyJqdGkiOiI4NjgxOGE4Mi1lOTkxLTQ3NjEtODI3Yi01MzkzZmZlYjM0NDYiLCJleHAiOjE1OTExMzgwNjAsIm5iZiI6MCwiaWF0IjoxNTg4NTQ2MDYwLCJpc3MiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJhdWQiOiJodHRwczovL2FjY291bnQuY2FyZGlmZnRlYy51ay9hdXRoL3JlYWxtcy93d2Z5cGMiLCJzdWIiOiIwZTYwZjBjMC01OGQ5LTRlMjEtOGRmMy1mNDZkZTU3NTBmOTYiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoib3JkZXItc3lzdGVtIiwiYXV0aF90aW1lIjowLCJzZXNzaW9uX3N0YXRlIjoiMTY2ZTBmZmYtMWFjZC00MTExLTk5OTctNWNkODRjNzQzZDg2IiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbInVzZXJfbWFuYWdlciIsImN1c3RvbWVyX3N1cHBvcnRfYWdlbnQiLCJvZmZsaW5lX2FjY2VzcyIsImFkbWluIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJyZWFsbS1tYW5hZ2VtZW50Ijp7InJvbGVzIjpbInZpZXctaWRlbnRpdHktcHJvdmlkZXJzIiwidmlldy1yZWFsbSIsInZpZXctZXZlbnRzIiwibWFuYWdlLXVzZXJzIiwidmlldy11c2VycyIsInZpZXctY2xpZW50cyIsInZpZXctYXV0aG9yaXphdGlvbiIsInF1ZXJ5LWNsaWVudHMiLCJxdWVyeS1ncm91cHMiLCJxdWVyeS11c2VycyJdfSwiYm90LXNlcnZlciI6eyJyb2xlcyI6WyJzdGFmZiJdfSwib3JkZXItc3lzdGVtIjp7InJvbGVzIjpbInN0YWZmIl19LCJjbHMiOnsicm9sZXMiOlsiYWdlbnQiXX0sImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwifQ.VTHsHEBAvNzczKWcU3gG-ybXIetHr4viniyOIqfSoLU	2020-06-02 22:47:40.333647+00	0e60f0c0-58d9-4e21-8df3-f46de5750f96	3
\.


--
-- TOC entry 3123 (class 0 OID 1012300)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-18 14:39:28.050895+00
2	auth	0001_initial	2020-04-18 14:39:28.172008+00
3	admin	0001_initial	2020-04-18 14:39:28.385684+00
4	admin	0002_logentry_remove_auto_add	2020-04-18 14:39:28.431968+00
5	admin	0003_logentry_add_action_flag_choices	2020-04-18 14:39:28.441643+00
6	contenttypes	0002_remove_content_type_name	2020-04-18 14:39:28.465822+00
7	auth	0002_alter_permission_name_max_length	2020-04-18 14:39:28.475594+00
8	auth	0003_alter_user_email_max_length	2020-04-18 14:39:28.501073+00
9	auth	0004_alter_user_username_opts	2020-04-18 14:39:28.530334+00
10	auth	0005_alter_user_last_login_null	2020-04-18 14:39:28.546502+00
11	auth	0006_require_contenttypes_0002	2020-04-18 14:39:28.550476+00
12	auth	0007_alter_validators_add_error_messages	2020-04-18 14:39:28.560135+00
13	auth	0008_alter_user_username_max_length	2020-04-18 14:39:28.597094+00
14	auth	0009_alter_user_last_name_max_length	2020-04-18 14:39:28.608172+00
15	auth	0010_alter_group_name_max_length	2020-04-18 14:39:28.626706+00
16	auth	0011_update_proxy_permissions	2020-04-18 14:39:28.641012+00
17	django_keycloak_auth	0001_initial	2020-04-18 14:39:28.751208+00
18	sessions	0001_initial	2020-04-18 14:39:28.789778+00
19	unlocking	0001_initial	2020-04-18 14:39:28.888256+00
20	unlocking	0002_brand_model_phoneunlock_repairtype	2020-04-18 14:39:29.083801+00
21	unlocking	0003_network_image	2020-04-18 14:39:29.188101+00
22	unlocking	0004_auto_20200324_1310	2020-04-18 14:39:29.264809+00
23	unlocking	0005_brand_image	2020-04-18 14:39:29.353075+00
24	unlocking	0006_model_image	2020-04-18 14:39:29.369338+00
\.


--
-- TOC entry 3144 (class 0 OID 1012490)
-- Dependencies: 224
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
388yupadn91hcmdzq89s5bcipq9nhhyv	YTlmY2JiYjFjNDA2NTZjMjkzNzQ4MWUxODFjZGMwMDk5YjQ4NGNiMDp7Im9pZGNfc3RhdGUiOiI4Zjk2ZTU1YS1iOTc1LTRkNzMtYWMzMi02NGIwN2QwZDM2NjgiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nb19rZXljbG9ha19hdXRoLmF1dGguS2V5Y2xvYWtBdXRob3JpemF0aW9uIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFkZThkMzUwYjYyMTc3NmYyM2U3NjEyM2E2ZWYwYWY4MWMzZTM1YyJ9	2020-05-03 16:44:17.014447+00
pbv6ybuvxmwwqlcheesyyg0higzruaut	NjgyNTk5NmMxNWNhZWE4ZWI5OWNlY2Q2Mzc0ZjQ5NWVhN2U0YjYyNDp7Im9pZGNfc3RhdGUiOiIxYjAwZDhlYy0wYmVjLTQ4MzUtYWFjMS1lYmVjMmQ5ZWQ1OTAifQ==	2020-05-03 16:44:25.859627+00
gdv60h8rs9385c9ydtb492nunamxahfq	ZmYyOTBhYmU5MDhiNTY3YjUyMTUyMmZlMWJjNDlhOTAzNjhkZWFlNDp7Im9pZGNfc3RhdGUiOiIzYzkxZWQwYS03ZmMyLTRkNzMtODA5OC1iZTYzODVmM2Y0NzUiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nb19rZXljbG9ha19hdXRoLmF1dGguS2V5Y2xvYWtBdXRob3JpemF0aW9uIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFkZThkMzUwYjYyMTc3NmYyM2U3NjEyM2E2ZWYwYWY4MWMzZTM1YyJ9	2020-05-17 19:02:27.469347+00
zlqul8sqq5qpvubfxg04on77levy5yf5	MTYxNWNhYmRiNzRlZmU3MGE1OWZkODQ0ZmVlZjhiNGMxNDI0NmM0Mjp7Im9pZGNfc3RhdGUiOiIyMDYzNjM1OS1mMGUyLTQzZGUtYTBhYy00ZTY2ZDBiZmE4OWIifQ==	2020-05-17 19:03:23.088705+00
94s60wte51befus38u0d5dyaxudlm0jt	MzRiNTdlNDMxZDNkOTI3NWUyNGU2ZGQxZGIwZGQ2ODFiZjBiZWFmOTp7Im9pZGNfc3RhdGUiOiIyZDI1NmY0YS1mY2QzLTRkYTUtYjFjYi0yOWUzNGQyMWUwYTcifQ==	2020-05-17 19:03:26.044538+00
rc1tnf6c0szuzeis7iv75ft3z1ch63gu	NzJhZTk3OWRiMDA4NzY2OTc2YzBiYTEwMzkzNGE4YTU4YWQ4NzZkNDp7Im9pZGNfc3RhdGUiOiI5Yjk0MjJjMS0xZjhiLTQzYTktYTEzZi0zN2JjYzA2MGEwMWQifQ==	2020-05-17 19:03:27.41588+00
3iou3fg597dpfqdsf8ruopc824ha67nd	NWIyYTRmMGUyZjk2MGRiOWViNzZlNzcyYzBjYjliOWY0MWUxNGU3ZDp7Im9pZGNfc3RhdGUiOiI3ZjkzZWJlOC1iZTlhLTQzYWEtYTA1Zi1mNmEzM2IwZjQ1NWUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nb19rZXljbG9ha19hdXRoLmF1dGguS2V5Y2xvYWtBdXRob3JpemF0aW9uIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFkZThkMzUwYjYyMTc3NmYyM2U3NjEyM2E2ZWYwYWY4MWMzZTM1YyJ9	2020-05-17 19:28:45.936882+00
75z1lunfjmfolyhadw8936qib0d53skv	Y2ZlMzNmZmMzNWI2Y2I3YTk2ZmY4MWU2ODExMGEwZmNmNDExNmZkMTp7Im9pZGNfc3RhdGUiOiI1MzkxOWZhOS04NGE4LTQ5MGQtYTExNC0yMDBiOTc3MjdlOTMifQ==	2020-07-01 14:24:56.767206+00
l8we0ijmi49bcdvjqiez4xm3uyh7bsrq	YTI2Mjg1YTg4M2QwYzBiNDFjODBjZWJkNWQ0MzI5OTcyYzBlNDU4Yjp7Im9pZGNfc3RhdGUiOiI3MDBlMDY5Mi02YjkzLTRlMmYtYmU1My05ODI4MGRlMTEzMWMifQ==	2020-07-10 20:12:27.553643+00
12px0qrtqh6h9rwoqqh65a5nmmqcgl6x	MTcxNmJhZjk5OTI4ZWM1MTY1NDZiZTMzMjQwOTU5NWQzMmQ0NzljYTp7Im9pZGNfc3RhdGUiOiJlYmI4OWEwMi0wNTk2LTQ5ZjItYThiOS1lMGNkYjZmMzY2MDUifQ==	2020-07-10 20:12:27.557907+00
9menj0bifxem8pgzcrff9xmfv0oc7nh5	NThkYzExZWI5NTc3NmExNTJhMTBlZDE2NWEyN2UxM2RlZGFmZWZkMzp7Im9pZGNfc3RhdGUiOiI1ZmZjZGEyMi01MDU5LTRjOTYtYWNiMy1lZmUzNzY5NzA1MWIifQ==	2020-07-10 20:12:27.562061+00
kjd95nv2d0xwso02u02xm655a9m5jq88	ZWUxYjEwOGQzNTAxODdmNDBhNGZjMGE3YzcyNDRlNjU4YjY2MDBlMTp7Im9pZGNfc3RhdGUiOiI4OTM0NTJhYi1hNDRlLTRiYTktYjA1OS1lNmE3NjFkZDhmN2UifQ==	2020-08-04 17:40:56.010651+00
7mgqc55ynjl0lebvpsr1ptsxulefajdg	NTkwMWNjODJkNjEwYjBlOWM3ODU1OTJkODY5MjE4NDhiZGRlYmI4YTp7Im9pZGNfc3RhdGUiOiIxNTJiNDc0MS1jY2JlLTQwNmUtYmQ1Zi01ZGQyZTczZjA5ZmQifQ==	2020-08-10 06:54:45.164488+00
td569miomi33agiifuf6arnowmo4hj07	MjZiZWU3Mzc3MTQ2ODBiNWJmOWNjMGI1YzExYzNlMjhmMWMzOWMxODp7Im9pZGNfc3RhdGUiOiI0YjNjNWZhMy1lYzYwLTQ5OGEtYTg4NC1mYjdkNzRiNWFhYTgifQ==	2020-08-10 09:20:05.574433+00
r2hugqtj8wf30mv3jyl75ckf4i2dhc9h	ZDVhNTY2YTQ3MTJlMGY3MTQ5ZWNlOWZjODI0OTVkZmEzZjI5NDM5Mjp7Im9pZGNfc3RhdGUiOiI4OGU3MjkyNy03ZjE2LTRmMmEtOTYxMC04YWNmZmNjNjU2ODQifQ==	2020-08-26 17:58:59.770251+00
c5axwa6ilg585g3bgmdfytiqclhz5t0p	OThhODVkMGY1YTRlYjAyNDQxOTBlMGU5Nzg0NTRmMTM4MTljN2Y5NTp7Im9pZGNfc3RhdGUiOiIyOGQwMjcxOC1jNjVmLTRiMWEtYmQ4MS03OTZlZmQxNDFjNjEifQ==	2020-08-26 17:59:43.458232+00
5txzq9pousebsd8ke82w5e7a7czi8hrq	MDQ4YTMzNjBiNzRjMTUwNDJmZjY2NTkzNzUyYTNlZDVhNWFhNTA2Mzp7Im9pZGNfc3RhdGUiOiI4MTFmM2ZkMS1lYzM3LTQxMGItYWVjMS0yZDhiMDNlMDhiNTkifQ==	2020-08-26 18:00:05.778286+00
2vpi0m7dn7gnscuj6nucgfhtq28bd0mw	MTk5NTdhYmQzYjk2OTI4NzAyNjMzYzA3MzY1NmIyOTExMjMyZWFkMzp7Im9pZGNfc3RhdGUiOiJhOTQ1MGMzYy0xYzkyLTQ1MmYtYmFkYy1kMGVmMDU4YTJmYjcifQ==	2020-09-03 02:44:38.337825+00
\.


--
-- TOC entry 3148 (class 0 OID 1012530)
-- Dependencies: 228
-- Data for Name: unlocking_brand; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.unlocking_brand (id, name, display_name, image) FROM stdin;
1	apple	Apple	150px-Apple_logo_black.svg.png
2	huawei	Huawei	huawei-logo-200x100.jpg
3	samsung	Samsung	samsung-logo-200x100.jpg
4	Sony	Sony	sony.png
5	Motorola	Motorola	Motorola.png
6	HTC	HTC	HTC.png
7	LG	LG	LG.png
8	Nokia	Nokia	Nokia.jpg
\.


--
-- TOC entry 3150 (class 0 OID 1012541)
-- Dependencies: 230
-- Data for Name: unlocking_model; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.unlocking_model (id, name, display_name, brand_id, image) FROM stdin;
3	iPhone 5, 5c, 5s, SE	iPhone 5, 5c, 5s, SE	1	iPhone_5_5c_5s_SE.jpg
13	iPhone 6, 6+, 6s, 6s+	iPhone 6, 6+, 6s, 6s+	1	iPhone_6_cCm9B8Z.jpg
14	iPhone 7, 7+, 8, 8+	iPhone 7, 7+, 8, 8+	1	iPhone_7_hwoK1iq.png
15	iPhone X	iPhone X	1	iPhone_x_rPOLsvd.jpg
16	Huawei - All Models	Huawei - All Models	2	Huawei_-_All_Models.jpg
17	Samsung - All Models	Samsung - All Models	3	Samsung_-_All_Models.jpg
18	Sony - All Models	Sony - All Models	4	sony_-_All_Models.jpg
19	Motorola - All Models	Motorola - All Models	5	Motorola.jpg
20	HTC - All Models	HTC - All Models	6	HTC_PwVy8RP.png
21	LG - All Models	LG - All Models	7	lg.jpg
22	Nokia - All Models	Nokia - All Models	8	Nokia_B56NUuG.jpg
\.


--
-- TOC entry 3146 (class 0 OID 1012502)
-- Dependencies: 226
-- Data for Name: unlocking_network; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.unlocking_network (id, name) FROM stdin;
12	EE
13	o2
14	Vodafone
15	3
\.


--
-- TOC entry 3156 (class 0 OID 1012596)
-- Dependencies: 236
-- Data for Name: unlocking_networkname; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.unlocking_networkname (id, name, display_name, image, network_id) FROM stdin;
14	EE	EE	ee.png	12
15	o2	o2	o2a_KamXIb2.jpg	13
16	Vodafone	Vodafone	vodafone-logo-200x100_xm3KPQU.jpg	14
17	3	3	3-logo-200x100_tiNq34w.jpg	15
\.


--
-- TOC entry 3154 (class 0 OID 1012563)
-- Dependencies: 234
-- Data for Name: unlocking_phoneunlock; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.unlocking_phoneunlock (id, price, "time", brand_id, device_id, network_id) FROM stdin;
4	30.00	5 days	1	3	13
5	30.00	5 days	1	13	13
6	30.00	5 days	1	14	13
7	30.00	5 days	1	15	13
8	30.00	5 days	1	3	12
9	30.00	5 days	1	13	12
10	30.00	5 days	1	14	12
11	30.00	5 days	1	15	12
12	35.00	3 days	1	3	14
13	50.00	3 days	1	13	14
14	50.00	3 days	1	14	14
15	50.00	3 days	1	15	14
16	30.00	3 days	1	3	15
17	30.00	3 days	1	13	15
18	30.00	3 days	1	14	15
19	30.00	3 days	1	15	15
20	35.00	10 days	4	18	12
21	25.00	6 days	4	18	13
22	35.00	10 days	4	18	14
23	35.00	10 days	4	18	15
24	25.00	6 days	2	16	13
25	35.00	5 days	2	16	12
26	30.00	5 days	2	16	14
27	35.00	5 days	2	16	15
28	30.00	6 days	3	17	13
29	35.00	3 days	3	17	12
30	30.00	5 days	3	17	14
31	35.00	3 days	3	17	15
32	30.00	6 days	5	19	13
33	35.00	5 days	5	19	12
34	30.00	6 days	5	19	14
35	35.00	5 days	5	19	15
36	30.00	3 days	6	20	13
37	30.00	3 days	6	20	12
38	30.00	5 days	6	20	14
39	30.00	3 days	6	20	15
40	30.00	6 days	7	21	13
41	30.00	6 days	7	21	12
42	30.00	6 days	7	21	14
43	30.00	6 days	7	21	15
44	40.00	5 days	8	22	13
45	40.00	5 days	8	22	12
46	30.00	5 days	8	22	14
47	40.00	5 days	8	22	15
\.


--
-- TOC entry 3152 (class 0 OID 1012552)
-- Dependencies: 232
-- Data for Name: unlocking_repairtype; Type: TABLE DATA; Schema: public; Owner: ordering
--

COPY public.unlocking_repairtype (id, name, display_name) FROM stdin;
\.


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 117, true);


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 220
-- Name: django_keycloak_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.django_keycloak_auth_nonce_id_seq', 25, true);


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 222
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.django_keycloak_auth_remoteuseropenidconnectprofile_id_seq', 3, true);


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 227
-- Name: unlocking_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.unlocking_brand_id_seq', 8, true);


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 229
-- Name: unlocking_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.unlocking_model_id_seq', 22, true);


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 225
-- Name: unlocking_network_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.unlocking_network_id_seq', 15, true);


--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 235
-- Name: unlocking_networkname_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.unlocking_networkname_id_seq', 17, true);


--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 233
-- Name: unlocking_phoneunlock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.unlocking_phoneunlock_id_seq', 47, true);


--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 231
-- Name: unlocking_repairtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ordering
--

SELECT pg_catalog.setval('public.unlocking_repairtype_id_seq', 1, false);


--
-- TOC entry 2919 (class 2606 OID 1012454)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2924 (class 2606 OID 1012381)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2927 (class 2606 OID 1012344)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2921 (class 2606 OID 1012334)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2914 (class 2606 OID 1012372)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2916 (class 2606 OID 1012326)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 1012362)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2938 (class 2606 OID 1012396)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2929 (class 2606 OID 1012352)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 1012370)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2944 (class 2606 OID 1012410)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2932 (class 2606 OID 1012448)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2947 (class 2606 OID 1012434)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 1012318)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2911 (class 2606 OID 1012316)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 1012466)
-- Name: django_keycloak_auth_nonce django_keycloak_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_nonce
    ADD CONSTRAINT django_keycloak_auth_nonce_pkey PRIMARY KEY (id);


--
-- TOC entry 2952 (class 2606 OID 1012468)
-- Name: django_keycloak_auth_nonce django_keycloak_auth_nonce_state_key; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_nonce
    ADD CONSTRAINT django_keycloak_auth_nonce_state_key UNIQUE (state);


--
-- TOC entry 2955 (class 2606 OID 1012479)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile django_keycloak_auth_remoteuseropenidconnectprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_remoteuseropenidconnectprofile
    ADD CONSTRAINT django_keycloak_auth_remoteuseropenidconnectprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 2957 (class 2606 OID 1012481)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile django_keycloak_auth_remoteuseropenidconnectprofile_sub_key; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_remoteuseropenidconnectprofile
    ADD CONSTRAINT django_keycloak_auth_remoteuseropenidconnectprofile_sub_key UNIQUE (sub);


--
-- TOC entry 2959 (class 2606 OID 1012483)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile django_keycloak_auth_remoteuseropenidconnectprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_remoteuseropenidconnectprofile
    ADD CONSTRAINT django_keycloak_auth_remoteuseropenidconnectprofile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2907 (class 2606 OID 1012308)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2962 (class 2606 OID 1012497)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2967 (class 2606 OID 1012538)
-- Name: unlocking_brand unlocking_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_brand
    ADD CONSTRAINT unlocking_brand_pkey PRIMARY KEY (id);


--
-- TOC entry 2970 (class 2606 OID 1012549)
-- Name: unlocking_model unlocking_model_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_model
    ADD CONSTRAINT unlocking_model_pkey PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 1012510)
-- Name: unlocking_network unlocking_network_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_network
    ADD CONSTRAINT unlocking_network_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 1012604)
-- Name: unlocking_networkname unlocking_networkname_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_networkname
    ADD CONSTRAINT unlocking_networkname_pkey PRIMARY KEY (id);


--
-- TOC entry 2977 (class 2606 OID 1012568)
-- Name: unlocking_phoneunlock unlocking_phoneunlock_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_phoneunlock
    ADD CONSTRAINT unlocking_phoneunlock_pkey PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 1012560)
-- Name: unlocking_repairtype unlocking_repairtype_pkey; Type: CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_repairtype
    ADD CONSTRAINT unlocking_repairtype_pkey PRIMARY KEY (id);


--
-- TOC entry 2917 (class 1259 OID 1012455)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2922 (class 1259 OID 1012392)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2925 (class 1259 OID 1012393)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2912 (class 1259 OID 1012378)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2933 (class 1259 OID 1012408)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2936 (class 1259 OID 1012407)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2939 (class 1259 OID 1012422)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2942 (class 1259 OID 1012421)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2930 (class 1259 OID 1012449)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2945 (class 1259 OID 1012445)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2948 (class 1259 OID 1012446)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2953 (class 1259 OID 1012489)
-- Name: django_keycloak_auth_rem_sub_1611186a_like; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX django_keycloak_auth_rem_sub_1611186a_like ON public.django_keycloak_auth_remoteuseropenidconnectprofile USING btree (sub varchar_pattern_ops);


--
-- TOC entry 2960 (class 1259 OID 1012499)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2963 (class 1259 OID 1012498)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2968 (class 1259 OID 1012574)
-- Name: unlocking_model_brand_id_4b83d870; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX unlocking_model_brand_id_4b83d870 ON public.unlocking_model USING btree (brand_id);


--
-- TOC entry 2978 (class 1259 OID 1012610)
-- Name: unlocking_networkname_network_id_1f17ae02; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX unlocking_networkname_network_id_1f17ae02 ON public.unlocking_networkname USING btree (network_id);


--
-- TOC entry 2973 (class 1259 OID 1012590)
-- Name: unlocking_phoneunlock_brand_id_ecca7011; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX unlocking_phoneunlock_brand_id_ecca7011 ON public.unlocking_phoneunlock USING btree (brand_id);


--
-- TOC entry 2974 (class 1259 OID 1012591)
-- Name: unlocking_phoneunlock_device_id_81211ef7; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX unlocking_phoneunlock_device_id_81211ef7 ON public.unlocking_phoneunlock USING btree (device_id);


--
-- TOC entry 2975 (class 1259 OID 1012592)
-- Name: unlocking_phoneunlock_network_id_5281c408; Type: INDEX; Schema: public; Owner: ordering
--

CREATE INDEX unlocking_phoneunlock_network_id_5281c408 ON public.unlocking_phoneunlock USING btree (network_id);


--
-- TOC entry 2983 (class 2606 OID 1012387)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2982 (class 2606 OID 1012382)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2981 (class 2606 OID 1012373)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2985 (class 2606 OID 1012402)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2984 (class 2606 OID 1012397)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2987 (class 2606 OID 1012416)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2986 (class 2606 OID 1012411)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2988 (class 2606 OID 1012435)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2989 (class 2606 OID 1012440)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2990 (class 2606 OID 1012484)
-- Name: django_keycloak_auth_remoteuseropenidconnectprofile django_keycloak_auth_user_id_a685881b_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.django_keycloak_auth_remoteuseropenidconnectprofile
    ADD CONSTRAINT django_keycloak_auth_user_id_a685881b_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2991 (class 2606 OID 1012569)
-- Name: unlocking_model unlocking_model_brand_id_4b83d870_fk_unlocking_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_model
    ADD CONSTRAINT unlocking_model_brand_id_4b83d870_fk_unlocking_brand_id FOREIGN KEY (brand_id) REFERENCES public.unlocking_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2995 (class 2606 OID 1012605)
-- Name: unlocking_networkname unlocking_networknam_network_id_1f17ae02_fk_unlocking; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_networkname
    ADD CONSTRAINT unlocking_networknam_network_id_1f17ae02_fk_unlocking FOREIGN KEY (network_id) REFERENCES public.unlocking_network(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2994 (class 2606 OID 1012585)
-- Name: unlocking_phoneunlock unlocking_phoneunloc_network_id_5281c408_fk_unlocking; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_phoneunlock
    ADD CONSTRAINT unlocking_phoneunloc_network_id_5281c408_fk_unlocking FOREIGN KEY (network_id) REFERENCES public.unlocking_network(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2992 (class 2606 OID 1012575)
-- Name: unlocking_phoneunlock unlocking_phoneunlock_brand_id_ecca7011_fk_unlocking_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_phoneunlock
    ADD CONSTRAINT unlocking_phoneunlock_brand_id_ecca7011_fk_unlocking_brand_id FOREIGN KEY (brand_id) REFERENCES public.unlocking_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2993 (class 2606 OID 1012580)
-- Name: unlocking_phoneunlock unlocking_phoneunlock_device_id_81211ef7_fk_unlocking_model_id; Type: FK CONSTRAINT; Schema: public; Owner: ordering
--

ALTER TABLE ONLY public.unlocking_phoneunlock
    ADD CONSTRAINT unlocking_phoneunlock_device_id_81211ef7_fk_unlocking_model_id FOREIGN KEY (device_id) REFERENCES public.unlocking_model(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-09-19 13:36:39 UTC

--
-- PostgreSQL database dump complete
--

