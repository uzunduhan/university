--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12rc1

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
-- Name: Cevap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cevap" (
    "cevapNo" integer NOT NULL,
    tarihi date NOT NULL,
    durum character varying(20) NOT NULL,
    "soruId" integer NOT NULL
);


ALTER TABLE public."Cevap" OWNER TO postgres;

--
-- Name: CevapOyu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CevapOyu" (
    "oyNo" integer NOT NULL,
    tarihi date NOT NULL,
    durum character varying(20) NOT NULL,
    "cevapId" integer NOT NULL
);


ALTER TABLE public."CevapOyu" OWNER TO postgres;

--
-- Name: Etiket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Etiket" (
    "etiketNo" integer NOT NULL,
    skor integer NOT NULL,
    "kullanilmaSayisi" integer NOT NULL
);


ALTER TABLE public."Etiket" OWNER TO postgres;

--
-- Name: Kayitli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kayitli" (
    "kayitliNo" integer NOT NULL,
    "kullaniciAdi" character varying(20) NOT NULL,
    email character varying(40) NOT NULL,
    sifre character varying(16) NOT NULL,
    "kayitliId" integer NOT NULL
);


ALTER TABLE public."Kayitli" OWNER TO postgres;

--
-- Name: KayitliEtiketi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KayitliEtiketi" (
    "etiketNo" integer NOT NULL,
    "kayitNo" integer NOT NULL
);


ALTER TABLE public."KayitliEtiketi" OWNER TO postgres;

--
-- Name: KayitliTopluluğu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KayitliTopluluğu" (
    "toplulukNo" integer NOT NULL,
    "kayitNo" integer NOT NULL
);


ALTER TABLE public."KayitliTopluluğu" OWNER TO postgres;

--
-- Name: Kayitli_kayitliNo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Kayitli_kayitliNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Kayitli_kayitliNo_seq" OWNER TO postgres;

--
-- Name: Kayitli_kayitliNo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Kayitli_kayitliNo_seq" OWNED BY public."Kayitli"."kayitliNo";


--
-- Name: Kisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kisi" (
    id integer NOT NULL
);


ALTER TABLE public."Kisi" OWNER TO postgres;

--
-- Name: Kisi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Kisi_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Kisi_id_seq" OWNER TO postgres;

--
-- Name: Kisi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Kisi_id_seq" OWNED BY public."Kisi".id;


--
-- Name: Konum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Konum" (
    "konumNo" integer NOT NULL,
    "ulkeNo" integer NOT NULL
);


ALTER TABLE public."Konum" OWNER TO postgres;

--
-- Name: Kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kullanici" (
    "kullaniciId" integer NOT NULL
);


ALTER TABLE public."Kullanici" OWNER TO postgres;

--
-- Name: Moderator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Moderator" (
    "moderatorId" integer NOT NULL
);


ALTER TABLE public."Moderator" OWNER TO postgres;

--
-- Name: Profil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Profil" (
    "profilId" integer NOT NULL,
    "profilNo" integer NOT NULL,
    "sonGirisTarihi" date NOT NULL,
    "sonGorulmeTarihi" date NOT NULL,
    "fotografUrl" character varying(80) NOT NULL,
    biyografi character varying(100),
    "goruntulenmeSayisi" integer NOT NULL,
    konum character varying(50) NOT NULL,
    ulke integer NOT NULL
);


ALTER TABLE public."Profil" OWNER TO postgres;

--
-- Name: Profil_profilId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Profil_profilId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profil_profilId_seq" OWNER TO postgres;

--
-- Name: Profil_profilId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Profil_profilId_seq" OWNED BY public."Profil"."profilId";


--
-- Name: Rozet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rozet" (
    "rozetNo" integer NOT NULL,
    adi character varying(40) NOT NULL,
    sayisi integer NOT NULL,
    turu character varying(20) NOT NULL
);


ALTER TABLE public."Rozet" OWNER TO postgres;

--
-- Name: RozetTuru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RozetTuru" (
    "rozetNo" integer NOT NULL,
    "turNo" integer NOT NULL
);


ALTER TABLE public."RozetTuru" OWNER TO postgres;

--
-- Name: Soru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Soru" (
    id integer NOT NULL,
    basligi character varying(20) NOT NULL,
    "goruntulenmeSayisi" integer NOT NULL,
    etiket character varying(40) NOT NULL,
    oy character varying(20) NOT NULL,
    "favoriSayisi" integer NOT NULL,
    tarih date NOT NULL,
    "soruNo" integer NOT NULL
);


ALTER TABLE public."Soru" OWNER TO postgres;

--
-- Name: SoruEtiketi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruEtiketi" (
    "etiketNo" integer NOT NULL,
    "soruId" integer NOT NULL
);


ALTER TABLE public."SoruEtiketi" OWNER TO postgres;

--
-- Name: SoruOyu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruOyu" (
    "oyNo" integer NOT NULL,
    tarih date NOT NULL,
    durum character varying(40) NOT NULL,
    "soruId" integer NOT NULL
);


ALTER TABLE public."SoruOyu" OWNER TO postgres;

--
-- Name: Topluluk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Topluluk" (
    "toplulukNo" integer NOT NULL,
    adi character varying(20) NOT NULL,
    "kisiSayisi" integer NOT NULL
);


ALTER TABLE public."Topluluk" OWNER TO postgres;

--
-- Name: Tur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tur" (
    "turNo" integer NOT NULL,
    "turAdi" character varying(20) NOT NULL,
    renk character varying(20) NOT NULL
);


ALTER TABLE public."Tur" OWNER TO postgres;

--
-- Name: Ziyaretci; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ziyaretci" (
    "ziyaretciNo" integer NOT NULL,
    "ziyaretciId" integer NOT NULL
);


ALTER TABLE public."Ziyaretci" OWNER TO postgres;

--
-- Name: Ziyaretci_ziyaretciNo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ziyaretci_ziyaretciNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ziyaretci_ziyaretciNo_seq" OWNER TO postgres;

--
-- Name: Ziyaretci_ziyaretciNo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ziyaretci_ziyaretciNo_seq" OWNED BY public."Ziyaretci"."ziyaretciNo";


--
-- Name: kayitliRozeti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."kayitliRozeti" (
    "rozetNo" integer NOT NULL,
    "kayitNo" integer NOT NULL
);


ALTER TABLE public."kayitliRozeti" OWNER TO postgres;

--
-- Name: Kisi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kisi" ALTER COLUMN id SET DEFAULT nextval('public."Kisi_id_seq"'::regclass);


--
-- Name: Profil profilId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil" ALTER COLUMN "profilId" SET DEFAULT nextval('public."Profil_profilId_seq"'::regclass);


--
-- Data for Name: Cevap; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cevap" VALUES (8101, '2018-01-31', 'onayla', 7001);
INSERT INTO public."Cevap" VALUES (8102, '2019-09-09', 'reddet', 7002);
INSERT INTO public."Cevap" VALUES (8103, '2018-08-18', 'onayla', 7003);


--
-- Data for Name: CevapOyu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CevapOyu" VALUES (9801, '2019-09-19', 'evet', 8101);
INSERT INTO public."CevapOyu" VALUES (9802, '2019-08-28', 'hayir', 8102);
INSERT INTO public."CevapOyu" VALUES (9803, '2019-09-18', 'evet', 8103);


--
-- Data for Name: Etiket; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Etiket" VALUES (3101, 3434, 891);
INSERT INTO public."Etiket" VALUES (3102, 6000, 1000);
INSERT INTO public."Etiket" VALUES (3103, 2301, 653);


--
-- Data for Name: Kayitli; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kayitli" VALUES (202, 'mucahid', 'muco54@gmail.com', '545454', 1);
INSERT INTO public."Kayitli" VALUES (201, 'kadir', 'kadircelik249@gmail.com', '343434', 0);
INSERT INTO public."Kayitli" VALUES (203, 'hüseyin', 'hüso58@gmail.com', '585858', 2);


--
-- Data for Name: KayitliEtiketi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KayitliEtiketi" VALUES (3101, 201);
INSERT INTO public."KayitliEtiketi" VALUES (3102, 202);
INSERT INTO public."KayitliEtiketi" VALUES (3103, 203);


--
-- Data for Name: KayitliTopluluğu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KayitliTopluluğu" VALUES (201, 6030);
INSERT INTO public."KayitliTopluluğu" VALUES (202, 6031);
INSERT INTO public."KayitliTopluluğu" VALUES (203, 6032);


--
-- Data for Name: Kisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kisi" VALUES (0);
INSERT INTO public."Kisi" VALUES (1);
INSERT INTO public."Kisi" VALUES (2);
INSERT INTO public."Kisi" VALUES (3);
INSERT INTO public."Kisi" VALUES (4);
INSERT INTO public."Kisi" VALUES (5);


--
-- Data for Name: Konum; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Konum" VALUES (1801, 1);
INSERT INTO public."Konum" VALUES (1802, 2);
INSERT INTO public."Konum" VALUES (1803, 3);


--
-- Data for Name: Kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kullanici" VALUES (201);
INSERT INTO public."Kullanici" VALUES (202);
INSERT INTO public."Kullanici" VALUES (203);


--
-- Data for Name: Moderator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Moderator" VALUES (201);
INSERT INTO public."Moderator" VALUES (202);
INSERT INTO public."Moderator" VALUES (203);


--
-- Data for Name: Profil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Profil" VALUES (201, 1001, '2019-09-19', '2019-02-16', 'url001', NULL, 1089, 'turkiye', 1801);
INSERT INTO public."Profil" VALUES (202, 1002, '2019-08-19', '2019-08-16', 'url002', NULL, 8723, 'izlanda', 1802);
INSERT INTO public."Profil" VALUES (203, 1003, '2019-07-19', '2019-07-16', 'url003', NULL, 20321, 'ingiltere', 1803);


--
-- Data for Name: Rozet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Rozet" VALUES (1901, 'cok soru soran', 345, 'gizemli');
INSERT INTO public."Rozet" VALUES (1902, 'cok cevaplayan', 9823, 'nadir');
INSERT INTO public."Rozet" VALUES (1903, 'etiketi bol', 672, 'kutsal');


--
-- Data for Name: RozetTuru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."RozetTuru" VALUES (1901, 5401);
INSERT INTO public."RozetTuru" VALUES (1902, 5402);
INSERT INTO public."RozetTuru" VALUES (1903, 5403);


--
-- Data for Name: Soru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Soru" VALUES (7001, 'nasil alinir', 2312, 'uyelik', '343', 123, '2018-07-23', 201);
INSERT INTO public."Soru" VALUES (7002, 'nasil kazanilir', 12321, 'madalya', '23423', 674, '2015-01-20', 202);
INSERT INTO public."Soru" VALUES (7003, 'iki kere kayit olma', 92832, 'kayit', '2343', 3564, '1999-08-19', 203);


--
-- Data for Name: SoruEtiketi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruEtiketi" VALUES (3101, 7001);
INSERT INTO public."SoruEtiketi" VALUES (3102, 7002);
INSERT INTO public."SoruEtiketi" VALUES (3103, 7003);


--
-- Data for Name: SoruOyu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruOyu" VALUES (6501, '2019-06-19', 'evet', 7001);
INSERT INTO public."SoruOyu" VALUES (6502, '2019-08-28', 'hayir', 7002);
INSERT INTO public."SoruOyu" VALUES (6503, '2018-12-17', 'evet', 7003);


--
-- Data for Name: Topluluk; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Topluluk" VALUES (6030, 'github', 10923);
INSERT INTO public."Topluluk" VALUES (6031, 'ubuntu', 21032);
INSERT INTO public."Topluluk" VALUES (6032, 'linux', 23231);


--
-- Data for Name: Tur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Tur" VALUES (5401, 'altin', 'sari');
INSERT INTO public."Tur" VALUES (5402, 'gumus', 'beyaz');
INSERT INTO public."Tur" VALUES (5403, 'bronz', 'parlak sari');


--
-- Data for Name: Ziyaretci; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Ziyaretci" VALUES (101, 0);
INSERT INTO public."Ziyaretci" VALUES (102, 1);
INSERT INTO public."Ziyaretci" VALUES (103, 2);


--
-- Data for Name: kayitliRozeti; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."kayitliRozeti" VALUES (201, 1901);
INSERT INTO public."kayitliRozeti" VALUES (202, 1902);
INSERT INTO public."kayitliRozeti" VALUES (203, 1903);


--
-- Name: Kayitli_kayitliNo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Kayitli_kayitliNo_seq"', 1, false);


--
-- Name: Kisi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Kisi_id_seq"', 5, true);


--
-- Name: Profil_profilId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Profil_profilId_seq"', 1, false);


--
-- Name: Ziyaretci_ziyaretciNo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ziyaretci_ziyaretciNo_seq"', 1, false);


--
-- Name: Cevap Cevap_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "Cevap_pkey" PRIMARY KEY ("cevapNo");


--
-- Name: Etiket Etiket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Etiket"
    ADD CONSTRAINT "Etiket_pkey" PRIMARY KEY ("etiketNo");


--
-- Name: KayitliEtiketi KayitliEtiketi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KayitliEtiketi"
    ADD CONSTRAINT "KayitliEtiketi_pkey" PRIMARY KEY ("etiketNo", "kayitNo");


--
-- Name: Kayitli Kayitli_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "Kayitli_email_key" UNIQUE (email);


--
-- Name: Kayitli Kayitli_kayitliNo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "Kayitli_kayitliNo_key" UNIQUE ("kayitliNo");


--
-- Name: Kayitli Kayitli_kullaniciAdi_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "Kayitli_kullaniciAdi_key" UNIQUE ("kullaniciAdi");


--
-- Name: Kayitli Kayitli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "Kayitli_pkey" PRIMARY KEY ("kayitliNo", "kayitliId");


--
-- Name: Kayitli Kayitli_sifre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "Kayitli_sifre_key" UNIQUE (sifre);


--
-- Name: Kisi Kisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kisi"
    ADD CONSTRAINT "Kisi_pkey" PRIMARY KEY (id);


--
-- Name: Kullanici Kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "Kullanici_pkey" PRIMARY KEY ("kullaniciId");


--
-- Name: Moderator Moderator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "Moderator_pkey" PRIMARY KEY ("moderatorId");


--
-- Name: CevapOyu Oy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CevapOyu"
    ADD CONSTRAINT "Oy_pkey" PRIMARY KEY ("oyNo");


--
-- Name: Profil Profil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil"
    ADD CONSTRAINT "Profil_pkey" PRIMARY KEY ("profilId", "profilNo");


--
-- Name: RozetTuru RozetTuru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RozetTuru"
    ADD CONSTRAINT "RozetTuru_pkey" PRIMARY KEY ("rozetNo", "turNo");


--
-- Name: Rozet Rozet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozet"
    ADD CONSTRAINT "Rozet_pkey" PRIMARY KEY ("rozetNo");


--
-- Name: SoruEtiketi SoruEtiketi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruEtiketi"
    ADD CONSTRAINT "SoruEtiketi_pkey" PRIMARY KEY ("etiketNo", "soruId");


--
-- Name: SoruOyu SoruOyu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruOyu"
    ADD CONSTRAINT "SoruOyu_pkey" PRIMARY KEY ("oyNo");


--
-- Name: Soru Soru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Soru"
    ADD CONSTRAINT "Soru_pkey" PRIMARY KEY (id);


--
-- Name: Topluluk Topluluk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Topluluk"
    ADD CONSTRAINT "Topluluk_pkey" PRIMARY KEY ("toplulukNo");


--
-- Name: Tur Tur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tur"
    ADD CONSTRAINT "Tur_pkey" PRIMARY KEY ("turNo");


--
-- Name: Ziyaretci Ziyaretci_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ziyaretci"
    ADD CONSTRAINT "Ziyaretci_pkey" PRIMARY KEY ("ziyaretciNo", "ziyaretciId");


--
-- Name: Ziyaretci Ziyaretci_ziyaretciNo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ziyaretci"
    ADD CONSTRAINT "Ziyaretci_ziyaretciNo_key" UNIQUE ("ziyaretciNo");


--
-- Name: Kullanici kayitliKullaniciPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "kayitliKullaniciPK" UNIQUE ("kullaniciId");


--
-- Name: Moderator kayitliModeratorPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "kayitliModeratorPK" UNIQUE ("moderatorId");


--
-- Name: kayitliRozeti kayitliRozeti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kayitliRozeti"
    ADD CONSTRAINT "kayitliRozeti_pkey" PRIMARY KEY ("rozetNo", "kayitNo");


--
-- Name: KayitliTopluluğu kayitliTopluluğu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KayitliTopluluğu"
    ADD CONSTRAINT "kayitliTopluluğu_pkey" PRIMARY KEY ("kayitNo", "toplulukNo");


--
-- Name: Konum konum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Konum"
    ADD CONSTRAINT konum_pkey PRIMARY KEY ("konumNo");


--
-- Name: Kayitli unique_Kayitli_kayitliId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "unique_Kayitli_kayitliId" UNIQUE ("kayitliId");


--
-- Name: Profil unique_Profil_profilId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil"
    ADD CONSTRAINT "unique_Profil_profilId" UNIQUE ("profilId");


--
-- Name: Profil unique_Profil_profilNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil"
    ADD CONSTRAINT "unique_Profil_profilNo" UNIQUE ("profilNo");


--
-- Name: Ziyaretci unique_Ziyaretci_ziyaretciId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ziyaretci"
    ADD CONSTRAINT "unique_Ziyaretci_ziyaretciId" UNIQUE ("ziyaretciId");


--
-- Name: Ziyaretci_ziyaretciNo_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Ziyaretci_ziyaretciNo_idx" ON public."Ziyaretci" USING btree ("ziyaretciNo");


--
-- Name: fki_SoruFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_SoruFK" ON public."Soru" USING btree ("soruNo");


--
-- Name: fki_cevapFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_cevapFK" ON public."Cevap" USING btree ("soruId");


--
-- Name: fki_kayitliEtiketiFK1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_kayitliEtiketiFK1" ON public."KayitliEtiketi" USING btree ("etiketNo");


--
-- Name: fki_kayitliEtiketiFK2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_kayitliEtiketiFK2" ON public."KayitliEtiketi" USING btree ("kayitNo");


--
-- Name: fki_kayitliRozetiFK1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_kayitliRozetiFK1" ON public."kayitliRozeti" USING btree ("rozetNo");


--
-- Name: fki_kayitliRozetiFK2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_kayitliRozetiFK2" ON public."kayitliRozeti" USING btree ("kayitNo");


--
-- Name: fki_kayitliToplulukFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_kayitliToplulukFK" ON public."KayitliTopluluğu" USING btree ("kayitNo");


--
-- Name: fki_oyFK1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_oyFK1" ON public."CevapOyu" USING btree ("cevapId");


--
-- Name: fki_rozetTuruFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_rozetTuruFK" ON public."RozetTuru" USING btree ("rozetNo");


--
-- Name: fki_rozetTuruFK2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_rozetTuruFK2" ON public."RozetTuru" USING btree ("turNo");


--
-- Name: fki_soruEtiketiFK1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_soruEtiketiFK1" ON public."SoruEtiketi" USING btree ("etiketNo");


--
-- Name: fki_soruEtiketiFK2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_soruEtiketiFK2" ON public."SoruEtiketi" USING btree ("soruId");


--
-- Name: fki_soruOyuFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_soruOyuFK" ON public."SoruOyu" USING btree ("soruId");


--
-- Name: fki_toplulukFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_toplulukFK" ON public."KayitliTopluluğu" USING btree ("toplulukNo");


--
-- Name: fki_ulkeFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_ulkeFK" ON public."Profil" USING btree (ulke);


--
-- Name: index_profilId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_profilId" ON public."Profil" USING btree ("profilId");


--
-- Name: Kayitli KayitliKisi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kayitli"
    ADD CONSTRAINT "KayitliKisi" FOREIGN KEY ("kayitliId") REFERENCES public."Kisi"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kullanici KayitliKullanici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "KayitliKullanici" FOREIGN KEY ("kullaniciId") REFERENCES public."Kayitli"("kayitliNo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Moderator KayitliModerator; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "KayitliModerator" FOREIGN KEY ("moderatorId") REFERENCES public."Kayitli"("kayitliNo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Soru SoruFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Soru"
    ADD CONSTRAINT "SoruFK" FOREIGN KEY ("soruNo") REFERENCES public."Kayitli"("kayitliNo");


--
-- Name: Ziyaretci ZiyaretciKisi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ziyaretci"
    ADD CONSTRAINT "ZiyaretciKisi" FOREIGN KEY ("ziyaretciId") REFERENCES public."Kisi"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cevap cevapFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "cevapFK" FOREIGN KEY ("soruId") REFERENCES public."Soru"(id);


--
-- Name: KayitliEtiketi kayitliEtiketiFK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KayitliEtiketi"
    ADD CONSTRAINT "kayitliEtiketiFK1" FOREIGN KEY ("etiketNo") REFERENCES public."Etiket"("etiketNo");


--
-- Name: KayitliEtiketi kayitliEtiketiFK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KayitliEtiketi"
    ADD CONSTRAINT "kayitliEtiketiFK2" FOREIGN KEY ("kayitNo") REFERENCES public."Kayitli"("kayitliNo");


--
-- Name: kayitliRozeti kayitliRozetiFK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kayitliRozeti"
    ADD CONSTRAINT "kayitliRozetiFK1" FOREIGN KEY ("rozetNo") REFERENCES public."Kayitli"("kayitliNo");


--
-- Name: kayitliRozeti kayitliRozetiFK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kayitliRozeti"
    ADD CONSTRAINT "kayitliRozetiFK2" FOREIGN KEY ("kayitNo") REFERENCES public."Rozet"("rozetNo");


--
-- Name: KayitliTopluluğu kayitliToplulukFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KayitliTopluluğu"
    ADD CONSTRAINT "kayitliToplulukFK" FOREIGN KEY ("kayitNo") REFERENCES public."Topluluk"("toplulukNo");


--
-- Name: CevapOyu oyFK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CevapOyu"
    ADD CONSTRAINT "oyFK1" FOREIGN KEY ("cevapId") REFERENCES public."Cevap"("cevapNo");


--
-- Name: Profil profiIIdFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil"
    ADD CONSTRAINT "profiIIdFK" FOREIGN KEY ("profilId") REFERENCES public."Kayitli"("kayitliNo");


--
-- Name: RozetTuru rozetTuruFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RozetTuru"
    ADD CONSTRAINT "rozetTuruFK" FOREIGN KEY ("rozetNo") REFERENCES public."Rozet"("rozetNo");


--
-- Name: RozetTuru rozetTuruFK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RozetTuru"
    ADD CONSTRAINT "rozetTuruFK2" FOREIGN KEY ("turNo") REFERENCES public."Tur"("turNo");


--
-- Name: SoruEtiketi soruEtiketiFK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruEtiketi"
    ADD CONSTRAINT "soruEtiketiFK1" FOREIGN KEY ("soruId") REFERENCES public."Soru"(id);


--
-- Name: SoruEtiketi soruEtiketiFK3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruEtiketi"
    ADD CONSTRAINT "soruEtiketiFK3" FOREIGN KEY ("etiketNo") REFERENCES public."Etiket"("etiketNo");


--
-- Name: SoruOyu soruOyuFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruOyu"
    ADD CONSTRAINT "soruOyuFK" FOREIGN KEY ("soruId") REFERENCES public."Soru"(id);


--
-- Name: KayitliTopluluğu toplulukFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KayitliTopluluğu"
    ADD CONSTRAINT "toplulukFK" FOREIGN KEY ("toplulukNo") REFERENCES public."Kayitli"("kayitliNo");


--
-- Name: Profil ulkeFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil"
    ADD CONSTRAINT "ulkeFK" FOREIGN KEY (ulke) REFERENCES public."Konum"("konumNo");


--
-- PostgreSQL database dump complete
--

