PGDMP                      |            e-pet-db    16.2    16.2 g    j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            m           1262    25669    e-pet-db    DATABASE     �   CREATE DATABASE "e-pet-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1254';
    DROP DATABASE "e-pet-db";
                postgres    false            �            1259    25670    admin    TABLE     �  CREATE TABLE public.admin (
    adminid integer NOT NULL,
    adminadi character varying(50) NOT NULL,
    adminsoyadi character varying(50) NOT NULL,
    admintc character varying(50) NOT NULL,
    admintelefon character varying(50) NOT NULL,
    adminmail character varying(50) NOT NULL,
    adminsifre character varying(50) NOT NULL,
    admingorevi character varying(50) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    25673    admin_adminid_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_adminid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.admin_adminid_seq;
       public          postgres    false    215            n           0    0    admin_adminid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.admin_adminid_seq OWNED BY public.admin.adminid;
          public          postgres    false    216            �            1259    25674    adminlogkayit    TABLE     �   CREATE TABLE public.adminlogkayit (
    logid integer NOT NULL,
    adminid integer NOT NULL,
    logtarih date NOT NULL,
    logaciklama text NOT NULL
);
 !   DROP TABLE public.adminlogkayit;
       public         heap    postgres    false            �            1259    25679    adminlogkayıt_logid_seq    SEQUENCE     �   CREATE SEQUENCE public."adminlogkayıt_logid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."adminlogkayıt_logid_seq";
       public          postgres    false    217            o           0    0    adminlogkayıt_logid_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."adminlogkayıt_logid_seq" OWNED BY public.adminlogkayit.logid;
          public          postgres    false    218            �            1259    25680 
   asitakvimi    TABLE     �   CREATE TABLE public.asitakvimi (
    asiid integer NOT NULL,
    asiadi character varying(50) NOT NULL,
    asitipi character varying(50) NOT NULL,
    asihayvancinsi character varying(50) NOT NULL,
    asisiklikgun integer NOT NULL
);
    DROP TABLE public.asitakvimi;
       public         heap    postgres    false            �            1259    25683    aşıtakvimi_aşıid_seq    SEQUENCE     �   CREATE SEQUENCE public."aşıtakvimi_aşıid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."aşıtakvimi_aşıid_seq";
       public          postgres    false    219            p           0    0    aşıtakvimi_aşıid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."aşıtakvimi_aşıid_seq" OWNED BY public.asitakvimi.asiid;
          public          postgres    false    220            �            1259    25684    destektalep    TABLE     �   CREATE TABLE public.destektalep (
    destekid integer NOT NULL,
    adminid integer NOT NULL,
    kullaniciid integer NOT NULL,
    destektalepzamani date NOT NULL,
    destekaciklamasi text NOT NULL,
    destekcozumbilgisi boolean NOT NULL
);
    DROP TABLE public.destektalep;
       public         heap    postgres    false            �            1259    25689    destektalep_destekid_seq    SEQUENCE     �   CREATE SEQUENCE public.destektalep_destekid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.destektalep_destekid_seq;
       public          postgres    false    221            q           0    0    destektalep_destekid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.destektalep_destekid_seq OWNED BY public.destektalep.destekid;
          public          postgres    false    222            �            1259    25690    hayvan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.hayvan_id_seq
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hayvan_id_seq;
       public          postgres    false            �            1259    25691    evcilhayvan    TABLE     �  CREATE TABLE public.evcilhayvan (
    hayvanid bigint DEFAULT nextval('public.hayvan_id_seq'::regclass) NOT NULL,
    hayvansahibiid integer NOT NULL,
    hayvancipno character varying(50) NOT NULL,
    hayvanadi character varying(50) NOT NULL,
    hayvancinsiyet character varying(50) NOT NULL,
    hayvanboy numeric NOT NULL,
    hayvankilo numeric NOT NULL,
    hayvantur character varying(50) NOT NULL,
    hayvandogumtarih date NOT NULL
);
    DROP TABLE public.evcilhayvan;
       public         heap    postgres    false    223            �            1259    25697    evcilhayvan_hayvanid_seq    SEQUENCE     �   CREATE SEQUENCE public.evcilhayvan_hayvanid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.evcilhayvan_hayvanid_seq;
       public          postgres    false    224            r           0    0    evcilhayvan_hayvanid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.evcilhayvan_hayvanid_seq OWNED BY public.evcilhayvan.hayvanid;
          public          postgres    false    225            �            1259    25698    hayvansahibi    TABLE     :  CREATE TABLE public.hayvansahibi (
    hayvansahibiid integer NOT NULL,
    hayvansahibiadi character varying(50) NOT NULL,
    hayvansahibisoyadi character varying(50) NOT NULL,
    hayvansahibitc character varying(50) NOT NULL,
    hayvansahibitelefon character varying(50) NOT NULL,
    hayvansahibimail character varying(50) NOT NULL,
    hayvansahibisifre character varying(50) NOT NULL,
    hayvansahibiadresil character varying(50) NOT NULL,
    hayvansahibiadresilce character varying(50) NOT NULL,
    hayvansahibiadresmahalle character varying(50) NOT NULL
);
     DROP TABLE public.hayvansahibi;
       public         heap    postgres    false            �            1259    25701    hayvansahibi_hayvansahibi_seq    SEQUENCE     �   CREATE SEQUENCE public.hayvansahibi_hayvansahibi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.hayvansahibi_hayvansahibi_seq;
       public          postgres    false    226            s           0    0    hayvansahibi_hayvansahibi_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.hayvansahibi_hayvansahibi_seq OWNED BY public.hayvansahibi.hayvansahibiid;
          public          postgres    false    227            �            1259    25702    klinik    TABLE     Y  CREATE TABLE public.klinik (
    klinikid integer NOT NULL,
    klinikadi character varying(50) NOT NULL,
    klinikil character varying(50) NOT NULL,
    klinikilce character varying(50) NOT NULL,
    klinikmahalle character varying(50) NOT NULL,
    klinikdetay character varying(50) NOT NULL,
    klinikkodu character varying(50) NOT NULL
);
    DROP TABLE public.klinik;
       public         heap    postgres    false            �            1259    25705    klinik_klinikid_seq    SEQUENCE     �   CREATE SEQUENCE public.klinik_klinikid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.klinik_klinikid_seq;
       public          postgres    false    228            t           0    0    klinik_klinikid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.klinik_klinikid_seq OWNED BY public.klinik.klinikid;
          public          postgres    false    229            �            1259    25706    puan    TABLE     l   CREATE TABLE public.puan (
    puanid integer NOT NULL,
    randevuid integer NOT NULL,
    puan integer
);
    DROP TABLE public.puan;
       public         heap    postgres    false            �            1259    25709    puan_puanid_seq    SEQUENCE     �   CREATE SEQUENCE public.puan_puanid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.puan_puanid_seq;
       public          postgres    false    230            u           0    0    puan_puanid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.puan_puanid_seq OWNED BY public.puan.puanid;
          public          postgres    false    231            �            1259    25710    radyolojikgoruntu    TABLE     �   CREATE TABLE public.radyolojikgoruntu (
    radyolojiid integer NOT NULL,
    randevuid integer NOT NULL,
    radyolojiaciklamasi text NOT NULL,
    radyolojilink character varying(255) NOT NULL
);
 %   DROP TABLE public.radyolojikgoruntu;
       public         heap    postgres    false            �            1259    25715 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE     �   CREATE SEQUENCE public."radyolojikgörüntü_radyolojikid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."radyolojikgörüntü_radyolojikid_seq";
       public          postgres    false    232            v           0    0 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."radyolojikgörüntü_radyolojikid_seq" OWNED BY public.radyolojikgoruntu.radyolojiid;
          public          postgres    false    233            �            1259    25716    randevu    TABLE     `  CREATE TABLE public.randevu (
    randevuid integer NOT NULL,
    veterinerid integer NOT NULL,
    hayvanid integer NOT NULL,
    receteid integer NOT NULL,
    tahlilid integer NOT NULL,
    radyolojiid integer NOT NULL,
    randevuzamani date NOT NULL,
    randevuaciklamasi text NOT NULL,
    randevunotu text,
    randevuiptal boolean NOT NULL
);
    DROP TABLE public.randevu;
       public         heap    postgres    false            �            1259    25721    randevu_randevuid_seq    SEQUENCE     �   CREATE SEQUENCE public.randevu_randevuid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.randevu_randevuid_seq;
       public          postgres    false    234            w           0    0    randevu_randevuid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.randevu_randevuid_seq OWNED BY public.randevu.randevuid;
          public          postgres    false    235            �            1259    25722    recete    TABLE     �   CREATE TABLE public.recete (
    receteid integer NOT NULL,
    randevuid integer NOT NULL,
    ilacadi character varying(50) NOT NULL,
    ilacbitimtarihi date NOT NULL,
    ilacaciklamasi text NOT NULL
);
    DROP TABLE public.recete;
       public         heap    postgres    false            �            1259    25727    reçete_reçeteid_seq    SEQUENCE     �   CREATE SEQUENCE public."reçete_reçeteid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."reçete_reçeteid_seq";
       public          postgres    false    236            x           0    0    reçete_reçeteid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."reçete_reçeteid_seq" OWNED BY public.recete.receteid;
          public          postgres    false    237            �            1259    25728    tahlil    TABLE     �   CREATE TABLE public.tahlil (
    tahlilid integer NOT NULL,
    randevuid integer NOT NULL,
    tahlilaciklamasi text NOT NULL,
    tahlillink character varying(255) NOT NULL
);
    DROP TABLE public.tahlil;
       public         heap    postgres    false            �            1259    25733    tahlil_tahlilid_seq    SEQUENCE     �   CREATE SEQUENCE public.tahlil_tahlilid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tahlil_tahlilid_seq;
       public          postgres    false    238            y           0    0    tahlil_tahlilid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tahlil_tahlilid_seq OWNED BY public.tahlil.tahlilid;
          public          postgres    false    239            �            1259    25734 	   veteriner    TABLE     C  CREATE TABLE public.veteriner (
    veterinerid integer NOT NULL,
    klinikid integer NOT NULL,
    veterineradi character varying(50) NOT NULL,
    veterinersoyadi character varying(50) NOT NULL,
    veterinertc character varying(50) NOT NULL,
    veterinertelefon character varying(50) NOT NULL,
    veterinermail character varying(50) NOT NULL,
    veterinersifre character varying(50) NOT NULL,
    veterinerdiplomano character varying(50) NOT NULL,
    veterinercalismasaatbas time without time zone NOT NULL,
    veterinercalismasaatson time without time zone NOT NULL
);
    DROP TABLE public.veteriner;
       public         heap    postgres    false            �            1259    25737    veteriner_veterinerid_seq    SEQUENCE     �   CREATE SEQUENCE public.veteriner_veterinerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.veteriner_veterinerid_seq;
       public          postgres    false    240            z           0    0    veteriner_veterinerid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.veteriner_veterinerid_seq OWNED BY public.veteriner.veterinerid;
          public          postgres    false    241            �            1259    25738 
   yapilanasi    TABLE     �   CREATE TABLE public.yapilanasi (
    "aşı_katid" integer NOT NULL,
    veterinerid integer NOT NULL,
    hayvanid integer NOT NULL,
    asiid character varying(50) NOT NULL,
    asizamani date NOT NULL
);
    DROP TABLE public.yapilanasi;
       public         heap    postgres    false            �            1259    25741    yapılanaşı_aşı_katid_seq    SEQUENCE     �   CREATE SEQUENCE public."yapılanaşı_aşı_katid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."yapılanaşı_aşı_katid_seq";
       public          postgres    false    242            {           0    0    yapılanaşı_aşı_katid_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public."yapılanaşı_aşı_katid_seq" OWNED BY public.yapilanasi."aşı_katid";
          public          postgres    false    243            �           2604    25784    admin adminid    DEFAULT     n   ALTER TABLE ONLY public.admin ALTER COLUMN adminid SET DEFAULT nextval('public.admin_adminid_seq'::regclass);
 <   ALTER TABLE public.admin ALTER COLUMN adminid DROP DEFAULT;
       public          postgres    false    216    215            �           2604    25785    adminlogkayit logid    DEFAULT     }   ALTER TABLE ONLY public.adminlogkayit ALTER COLUMN logid SET DEFAULT nextval('public."adminlogkayıt_logid_seq"'::regclass);
 B   ALTER TABLE public.adminlogkayit ALTER COLUMN logid DROP DEFAULT;
       public          postgres    false    218    217            �           2604    25786    asitakvimi asiid    DEFAULT     z   ALTER TABLE ONLY public.asitakvimi ALTER COLUMN asiid SET DEFAULT nextval('public."aşıtakvimi_aşıid_seq"'::regclass);
 ?   ALTER TABLE public.asitakvimi ALTER COLUMN asiid DROP DEFAULT;
       public          postgres    false    220    219            �           2604    25787    destektalep destekid    DEFAULT     |   ALTER TABLE ONLY public.destektalep ALTER COLUMN destekid SET DEFAULT nextval('public.destektalep_destekid_seq'::regclass);
 C   ALTER TABLE public.destektalep ALTER COLUMN destekid DROP DEFAULT;
       public          postgres    false    222    221            �           2604    25788    hayvansahibi hayvansahibiid    DEFAULT     �   ALTER TABLE ONLY public.hayvansahibi ALTER COLUMN hayvansahibiid SET DEFAULT nextval('public.hayvansahibi_hayvansahibi_seq'::regclass);
 J   ALTER TABLE public.hayvansahibi ALTER COLUMN hayvansahibiid DROP DEFAULT;
       public          postgres    false    227    226            �           2604    25789    klinik klinikid    DEFAULT     r   ALTER TABLE ONLY public.klinik ALTER COLUMN klinikid SET DEFAULT nextval('public.klinik_klinikid_seq'::regclass);
 >   ALTER TABLE public.klinik ALTER COLUMN klinikid DROP DEFAULT;
       public          postgres    false    229    228            �           2604    25790    puan puanid    DEFAULT     j   ALTER TABLE ONLY public.puan ALTER COLUMN puanid SET DEFAULT nextval('public.puan_puanid_seq'::regclass);
 :   ALTER TABLE public.puan ALTER COLUMN puanid DROP DEFAULT;
       public          postgres    false    231    230            �           2604    25791    radyolojikgoruntu radyolojiid    DEFAULT     �   ALTER TABLE ONLY public.radyolojikgoruntu ALTER COLUMN radyolojiid SET DEFAULT nextval('public."radyolojikgörüntü_radyolojikid_seq"'::regclass);
 L   ALTER TABLE public.radyolojikgoruntu ALTER COLUMN radyolojiid DROP DEFAULT;
       public          postgres    false    233    232            �           2604    25792    randevu randevuid    DEFAULT     v   ALTER TABLE ONLY public.randevu ALTER COLUMN randevuid SET DEFAULT nextval('public.randevu_randevuid_seq'::regclass);
 @   ALTER TABLE public.randevu ALTER COLUMN randevuid DROP DEFAULT;
       public          postgres    false    235    234            �           2604    25793    recete receteid    DEFAULT     v   ALTER TABLE ONLY public.recete ALTER COLUMN receteid SET DEFAULT nextval('public."reçete_reçeteid_seq"'::regclass);
 >   ALTER TABLE public.recete ALTER COLUMN receteid DROP DEFAULT;
       public          postgres    false    237    236            �           2604    25794    tahlil tahlilid    DEFAULT     r   ALTER TABLE ONLY public.tahlil ALTER COLUMN tahlilid SET DEFAULT nextval('public.tahlil_tahlilid_seq'::regclass);
 >   ALTER TABLE public.tahlil ALTER COLUMN tahlilid DROP DEFAULT;
       public          postgres    false    239    238            �           2604    25795    veteriner veterinerid    DEFAULT     ~   ALTER TABLE ONLY public.veteriner ALTER COLUMN veterinerid SET DEFAULT nextval('public.veteriner_veterinerid_seq'::regclass);
 D   ALTER TABLE public.veteriner ALTER COLUMN veterinerid DROP DEFAULT;
       public          postgres    false    241    240            �           2604    25796    yapilanasi aşı_katid    DEFAULT     �   ALTER TABLE ONLY public.yapilanasi ALTER COLUMN "aşı_katid" SET DEFAULT nextval('public."yapılanaşı_aşı_katid_seq"'::regclass);
 G   ALTER TABLE public.yapilanasi ALTER COLUMN "aşı_katid" DROP DEFAULT;
       public          postgres    false    243    242            K          0    25670    admin 
   TABLE DATA           z   COPY public.admin (adminid, adminadi, adminsoyadi, admintc, admintelefon, adminmail, adminsifre, admingorevi) FROM stdin;
    public          postgres    false    215   �|       M          0    25674    adminlogkayit 
   TABLE DATA           N   COPY public.adminlogkayit (logid, adminid, logtarih, logaciklama) FROM stdin;
    public          postgres    false    217   ^~       O          0    25680 
   asitakvimi 
   TABLE DATA           Z   COPY public.asitakvimi (asiid, asiadi, asitipi, asihayvancinsi, asisiklikgun) FROM stdin;
    public          postgres    false    219   �       Q          0    25684    destektalep 
   TABLE DATA           ~   COPY public.destektalep (destekid, adminid, kullaniciid, destektalepzamani, destekaciklamasi, destekcozumbilgisi) FROM stdin;
    public          postgres    false    221   G�       T          0    25691    evcilhayvan 
   TABLE DATA           �   COPY public.evcilhayvan (hayvanid, hayvansahibiid, hayvancipno, hayvanadi, hayvancinsiyet, hayvanboy, hayvankilo, hayvantur, hayvandogumtarih) FROM stdin;
    public          postgres    false    224   ��       V          0    25698    hayvansahibi 
   TABLE DATA           �   COPY public.hayvansahibi (hayvansahibiid, hayvansahibiadi, hayvansahibisoyadi, hayvansahibitc, hayvansahibitelefon, hayvansahibimail, hayvansahibisifre, hayvansahibiadresil, hayvansahibiadresilce, hayvansahibiadresmahalle) FROM stdin;
    public          postgres    false    226   ��       X          0    25702    klinik 
   TABLE DATA           s   COPY public.klinik (klinikid, klinikadi, klinikil, klinikilce, klinikmahalle, klinikdetay, klinikkodu) FROM stdin;
    public          postgres    false    228   �       Z          0    25706    puan 
   TABLE DATA           7   COPY public.puan (puanid, randevuid, puan) FROM stdin;
    public          postgres    false    230   �       \          0    25710    radyolojikgoruntu 
   TABLE DATA           g   COPY public.radyolojikgoruntu (radyolojiid, randevuid, radyolojiaciklamasi, radyolojilink) FROM stdin;
    public          postgres    false    232   X�       ^          0    25716    randevu 
   TABLE DATA           �   COPY public.randevu (randevuid, veterinerid, hayvanid, receteid, tahlilid, radyolojiid, randevuzamani, randevuaciklamasi, randevunotu, randevuiptal) FROM stdin;
    public          postgres    false    234   ��       `          0    25722    recete 
   TABLE DATA           _   COPY public.recete (receteid, randevuid, ilacadi, ilacbitimtarihi, ilacaciklamasi) FROM stdin;
    public          postgres    false    236   W�       b          0    25728    tahlil 
   TABLE DATA           S   COPY public.tahlil (tahlilid, randevuid, tahlilaciklamasi, tahlillink) FROM stdin;
    public          postgres    false    238   ��       d          0    25734 	   veteriner 
   TABLE DATA           �   COPY public.veteriner (veterinerid, klinikid, veterineradi, veterinersoyadi, veterinertc, veterinertelefon, veterinermail, veterinersifre, veterinerdiplomano, veterinercalismasaatbas, veterinercalismasaatson) FROM stdin;
    public          postgres    false    240   @�       f          0    25738 
   yapilanasi 
   TABLE DATA           \   COPY public.yapilanasi ("aşı_katid", veterinerid, hayvanid, asiid, asizamani) FROM stdin;
    public          postgres    false    242   f�       |           0    0    admin_adminid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_adminid_seq', 10, true);
          public          postgres    false    216            }           0    0    adminlogkayıt_logid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."adminlogkayıt_logid_seq"', 10, true);
          public          postgres    false    218            ~           0    0    aşıtakvimi_aşıid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."aşıtakvimi_aşıid_seq"', 132, true);
          public          postgres    false    220                       0    0    destektalep_destekid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.destektalep_destekid_seq', 10, true);
          public          postgres    false    222            �           0    0    evcilhayvan_hayvanid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.evcilhayvan_hayvanid_seq', 1, false);
          public          postgres    false    225            �           0    0    hayvan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hayvan_id_seq', 1054, true);
          public          postgres    false    223            �           0    0    hayvansahibi_hayvansahibi_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.hayvansahibi_hayvansahibi_seq', 75, true);
          public          postgres    false    227            �           0    0    klinik_klinikid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.klinik_klinikid_seq', 50, true);
          public          postgres    false    229            �           0    0    puan_puanid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.puan_puanid_seq', 20, true);
          public          postgres    false    231            �           0    0 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."radyolojikgörüntü_radyolojikid_seq"', 15, true);
          public          postgres    false    233            �           0    0    randevu_randevuid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.randevu_randevuid_seq', 20, true);
          public          postgres    false    235            �           0    0    reçete_reçeteid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."reçete_reçeteid_seq"', 20, true);
          public          postgres    false    237            �           0    0    tahlil_tahlilid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tahlil_tahlilid_seq', 10, true);
          public          postgres    false    239            �           0    0    veteriner_veterinerid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.veteriner_veterinerid_seq', 50, true);
          public          postgres    false    241            �           0    0    yapılanaşı_aşı_katid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."yapılanaşı_aşı_katid_seq"', 10, true);
          public          postgres    false    243            �           2606    25756    admin admin_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (adminid);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215            �           2606    25758 !   adminlogkayit adminlogkayıt_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.adminlogkayit
    ADD CONSTRAINT "adminlogkayıt_pkey" PRIMARY KEY (logid);
 M   ALTER TABLE ONLY public.adminlogkayit DROP CONSTRAINT "adminlogkayıt_pkey";
       public            postgres    false    217            �           2606    25760    asitakvimi aşıtakvimi_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.asitakvimi
    ADD CONSTRAINT "aşıtakvimi_pkey" PRIMARY KEY (asiid);
 H   ALTER TABLE ONLY public.asitakvimi DROP CONSTRAINT "aşıtakvimi_pkey";
       public            postgres    false    219            �           2606    25762    destektalep destektalep_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.destektalep
    ADD CONSTRAINT destektalep_pkey PRIMARY KEY (destekid);
 F   ALTER TABLE ONLY public.destektalep DROP CONSTRAINT destektalep_pkey;
       public            postgres    false    221            �           2606    25764    evcilhayvan evcilhayvan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.evcilhayvan
    ADD CONSTRAINT evcilhayvan_pkey PRIMARY KEY (hayvanid);
 F   ALTER TABLE ONLY public.evcilhayvan DROP CONSTRAINT evcilhayvan_pkey;
       public            postgres    false    224            �           2606    25766    hayvansahibi hayvansahibi_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.hayvansahibi
    ADD CONSTRAINT hayvansahibi_pkey PRIMARY KEY (hayvansahibiid);
 H   ALTER TABLE ONLY public.hayvansahibi DROP CONSTRAINT hayvansahibi_pkey;
       public            postgres    false    226            �           2606    25768    klinik klinik_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.klinik
    ADD CONSTRAINT klinik_pkey PRIMARY KEY (klinikid);
 <   ALTER TABLE ONLY public.klinik DROP CONSTRAINT klinik_pkey;
       public            postgres    false    228            �           2606    25770    puan puan_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.puan
    ADD CONSTRAINT puan_pkey PRIMARY KEY (puanid);
 8   ALTER TABLE ONLY public.puan DROP CONSTRAINT puan_pkey;
       public            postgres    false    230            �           2606    25772 +   radyolojikgoruntu radyolojikgörüntü_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.radyolojikgoruntu
    ADD CONSTRAINT "radyolojikgörüntü_pkey" PRIMARY KEY (radyolojiid);
 W   ALTER TABLE ONLY public.radyolojikgoruntu DROP CONSTRAINT "radyolojikgörüntü_pkey";
       public            postgres    false    232            �           2606    25774    randevu randevu_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.randevu
    ADD CONSTRAINT randevu_pkey PRIMARY KEY (randevuid);
 >   ALTER TABLE ONLY public.randevu DROP CONSTRAINT randevu_pkey;
       public            postgres    false    234            �           2606    25776    recete reçete_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.recete
    ADD CONSTRAINT "reçete_pkey" PRIMARY KEY (receteid);
 ?   ALTER TABLE ONLY public.recete DROP CONSTRAINT "reçete_pkey";
       public            postgres    false    236            �           2606    25778    tahlil tahlil_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tahlil
    ADD CONSTRAINT tahlil_pkey PRIMARY KEY (tahlilid);
 <   ALTER TABLE ONLY public.tahlil DROP CONSTRAINT tahlil_pkey;
       public            postgres    false    238            �           2606    25780    veteriner veteriner_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.veteriner
    ADD CONSTRAINT veteriner_pkey PRIMARY KEY (veterinerid);
 B   ALTER TABLE ONLY public.veteriner DROP CONSTRAINT veteriner_pkey;
       public            postgres    false    240            �           2606    25782    yapilanasi yapılanaşı_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.yapilanasi
    ADD CONSTRAINT "yapılanaşı_pkey" PRIMARY KEY ("aşı_katid");
 I   ALTER TABLE ONLY public.yapilanasi DROP CONSTRAINT "yapılanaşı_pkey";
       public            postgres    false    242            K   p  x�m�?n�0����=�Iȟ�HM[)�Tuh��'j�!U��A�f윽ɽj[ K��ҫ'�gD;�+��O���d:������ߝA�b�0�-�$��8��R$��
O����yn$��7AT_��	�X�;�꒳TcR'=��3q9VBI�M����w\
�N-ܝ!m��M4�u5���TIB��,�cg���HL�bӌY��TR���D����ޙ����f�+Ḵ�"�bRp������$�t2v���@�	��M���]X�_�2���:�+#����v�W^�|�H����KK�c7�bd��n�`p��E���CǮ�ۯ-M�jӌU�5��D�M���E����KXZ�c�l?ߘ�y����      M     x�u��j�@�g�)��7q�B�B�R:u�Ī�Z>��g��x��,���y�*���@@ q�>��)��0Nga6#X;fm��v:��z#�aw:gn�{Ak&C����hI���l�MA� ���	�b'�A��b�Q�y�.*����&?�%�hSH�6���&���[lI8�� �tOz�k�Z��ݵ���-�Y�{w�x	K-a�d=T����ۅ9��ea�o������O��Wz+O��E�X��qふ����QR?����vX�F	����<�oZ��      O   �  x���=n�@�k��@�}���À\�HC�,��@����iR�sr����Zkwg�	�G��h��'4��q�ެ���<~��˯]��Qִ�����q=���g
�V5w��;���us����n=l��Ek������ͦ+��f��ק���m����oV�f�.���Cs{���
Ds��?�*h>w�a|w���s2�XN/��T̓�:
��e"E��2�-�6��~�Y���A^IB��g��(�\��yU�����;���=��Nf�z���ݹ���7���ϸ����맳Mes��Ė%�I���ӂ/8#m"���%�֙����P�W<椑eM<�$QE��(]�iҏ*;9m)������KҔ�� �Y�6:��W��Zƅ֊�����M-pt�¯3ф�/"���>pL1���D��c48���dۗ.�qT�O�	l�X��8VҁcK?�IV��c8��c8ֳ�c8���%���buǢ�����p�X�q�0|�8�qu��U��4��%��9��K�/ O��	���)�	��pI8�"��N�	'���	��p  �Ɓ�!��s X΁�@�%u x�X��0�p�ԁ���Z.á��$*z�%�� { )����'H
} 	��$���H
 y����% (��|h���ǟ�      Q   ;  x�U�1n� �g|
.��`�I�V�Խ���E�	
`p$.S�!�7��*P�������=�"9A4��.�v��v]k,` �ku/���(�>IS�B�7o4�����7V��Ǌ;�wf�2?e�˔d�)|�3{�J�;~�p�J�	>���H��\�e��M�C�H�}�k遲�1ݴZ�2�xB��_��Y���9zq�h�w~�̓ky�\���1Q�z��5�+�z�>E�SJ���N��� �q+�~B�z�a�4�}�Q���*�d�	�,�K���"�a6�MF���?������`�: b�}��,��o      T   T  x�]�Kn7���]����s�A����*�f$��LԂ�I����@�{���&{!��"���#Ak�@}�Ï�j�������t<)�g�@Ϩ����+�5�I�	�ȧXD�n./�n��eQF��M�z�0�**"R���H�Z��w��0a*E��χ��r�{�sP���~�q�T�([���������"+7����(U���Sח��ϥ��3)�ٌ~["2�|�y��|���Π����PT^���u]_�o�dȎ��q�'�*]Tׇ�|l����M��8a*�'����é.��l$��sJ9�JDx�]��V������GI�����ZK��R�j<Gj�(TP����;�a`+�oU��L��-% �~\�����^�\4Q����B��7�DÇq����ũ�C��w���;I��f�#i��?��Y��k�N,߼�yP�K(������WEv<t��6(�)�X�z����4Vt�&��%���m���y�S�$�x���?����1b?�`[ر!Q�|h�s.�4aȺI�Sa�R( ~.I��<"ب�����Ԛ-�n��O&J��A-���?�� RFpq2E
8Щ'����`�$�X��6r ��r�l-@���@	Nd���&2j�3�a���L l��8  ʜ�H���f7p��r_�i6�=�b��6nTN�z�74/�Q���pB��{irVh�Qw�E+�8�K�6|��2o�Iꘓ@�Ɔ6~��2�����Q�6���]eAfl���49�1�|����7=�L��hc��&)Xvn�BC(��k����#7m�p����EI�p�Vf-a�4��]<B���f[�/>�F�#��ܘ�I��%��J(v		���0!���Ę�sݐFA��bJ���b�A�_�:Uk1��OO�Q�� ��G&ky��`�	�k�@��	=�cB��S����"f�gb;����S�"V�H �����46����>��֕M�����/e�!'Ķ�X����R�)BI�=Ya[8,�K=�CLK�K��aj[.�Qw���:*��7��Im˄���$��0�;L}��>_]]�H��B      V     x��X�n�V]��/D�!iW9Q�p�p�E7WԵD�e\�F��t��l��W�Q���\���*F۝9��3s�<�܅2e�q�9��bbLM�v�m��#���C�w�|��a)Ev���"Zg�����������Qʧl���=�-#�X����	��F	�ZF�P�]��W<*�Q�)��xp7٧$���x�Xc{�ƫG�NǸ��~硧إP���^��]��)`�[�Z������5�h�zd����%h�"S�`��x��
=���$��;y9�9p]!k�O�|��*v�kI�T{�M���-��K�}��
��X�/>kLh�΀��it�Y|M��i#��p��g�7���v>9klO�x��\ku̗�VVo�SB�A !"PL�>������X7�|�]{~�,H�sG�g� z�`�\��k�1m��:�[T�֒&���"��{�z;nL�ۦ�6Z�����Q'��N�� �>7�Z��c�t�	A7��|��=x��ȵ.o�_��!&P�F��y-i���tE
�P��7�i�|
�	(�@���]�*��[m��,bX�%�6b@��h��:>>�P7lDy�pI��Y�-�,h'�
����A8�~>7(���>�wn�b���%= ^��=��
³�ΠdB`�7��	 ���JZi\�^(�m��n�P0� &v���ax]�A�%V�Ǉ �����Ƣ�wENG�M�W��(yc:����7�3�Ԇ#TE.�x-�� �N��ُG��p�n�k�L�U���"Y"}(^�]�[��dW�$S|I�1�/�]��ɧ_(��� �H�-�t�j� ��ݵF�[q�L�R��r)�0�	�S⡪h�
��c�zcN�5T"���a�cOg�W�
�L��y���-!�b/�s��VW
0O��4���v*3W�cx^�ĥJ�X�V_��>����%)g(�E�{��֒�p,#�8�q�`3Us6�(�F�)@^��^��Vh{�/ T���Q��j@2��w�ʈ�&[%�T�%�t�:�x��Q���zV�v.HJ��Qu��d���6���"��$�� �d�ʐ���0�u<@nQ�[z(9�y�3�I��񳈌Q��"�dx�X�е�9g���"D���H�Ǖ���/j�^�@( GI����]�	�[����{ʑ��"�e�@Ir����Ӽs3�5����r���j%k�#�X�Yo �ܲʕ��T��J�㉩�jL�n�L�%���4˩&��T�o���-^`���5+a��J��Dɋ-��,�"�'�5?M6��|�dt�zJ/��Zt�2�$F�UÞ�dZMN�^å�e�6Z]���Hj��9�E�����o�-.�ڢm�V>��VN��U�Z����>���̤�#
����_����C�ߢɑ���tKsC���7�� ?��^)��=2v�z?ɸ=���B��G��ҩjg7|{�>���q��@��bi��iF���C8�;�fug.4-�}J3�c�[��F�d��9S�]k�"ඍ���R��vw�cR������utk�ͺyԒ~˃y�+�*������kXmN}*mf8m?r(��􎃿�f?��֨ا5�wlk���Y��"7�T���8؊
/ST�ג��S8�:��>~�9���xL�,�^�J�Wo�~�G�~���gMpuES(�V� ʳ�`�K��:_s-mo��)�ݦ$&�q�=�U���y:���Gn�'ō����*�����A���]O���ם� ��7�� ���i      X   �  x�}W�r�8]KO�U/{�BX��"t\C����
�,dJ��6/0o1Y�:�o��{͑�I�г�8���s�=�:$��3a���Z.�]a�~r���RfyI&���(�G;l�Y	�(��0;�Ig��4"#�ݖ�#���tu�'}�ϒ���K�K��7[#�Br'�>7���h�r�U�,�m�!w��4d�k���*�^������E���`�ɕ,pa��XL2\�u��_�9Sp�T��g�=�4��L	2㋅���\3JKh����/ ���X�P��n�!�}u7�?��H�@�E�~_�P��]r��T�k�I�e��;���J.p�t��_�6��C#�^�wO�)�&s��ǋX�4�/��Y#}���]� �7d�M�=����L�����[��F��i�dFnM�o�^}�t��5�4����e��bM��p�t-�܆���W��rn��%��А���5��Yr��3O(���%�$Ʈ�X�U��0�I�BF�𨫊�#��|/9�E2k��D�����[���~\÷��4i�SU�� ͽ�`z㲌C��W�����W2�7"��Bڂg,�h�*�[��,=�j�2���B�`�D���2daLÄ�:��.*�[2��g|k�`��r���ĸEJ	+�����µ�2�N�Bl �{ԅ�7�l��� )`iѰ�k�k�ʘxU� 2y���'��݆�<��g�h�&CgLy&��1H�*+E��#�;-Hw�N/�CfC�Ц�u#�Q��\������4qY����u�d��"}��iة4X=-��읁<���%z����g&49Z��h-���C#�����A���Tq��I��X�(Kq���h�"F��c	!�2�]�1�)�438�����#	-�\O�F}�Q#r��"�3^�U6f�<��j�ޠ��᧺�f��E�b/�g��c������L�*�͛|�
����F1����^�SKΠԻ���Q>�ß�D���,�%4j��g�j8Zl	� �gQ�rx�U�n. �E�J�?�rԌ��,��LoJ��o�?^8ތA.Mf��EW4j�+���I��R�zO]!� 3&��������,j���Ӫ�z�˼��up�Ny�6�m�}��TtM�α�N�9Ph�Us���{��;{"L�Ƭ�``���c��i���K�Az�[�>��+)Ox�b�zV�g����]6�ل�!���,��s�g�1Dχ���^��]�p�u �V����i�]X�˚H!c���Wu�-��Ɖ/!��u�(��Es�?-]}�~�ـ�	�[dX5_�E� O!�J�'�@1�⻩���E�J�^�i�vHu�����N��}���h�>Ydm('��Vh�&g;Q��ov�MYܦq����ܺ�+��hbx��z��"��q�\}Y��}�m����E/�Є5�U
�7ȖO�[�A~G��K{I�F��*���'m�]���?���%!M�c}]�z�~i���x	&���%�B]ID�Ӻ��f���W�և���;��{j����yL��{nS�3��ݳ$�I�KkWС�\�.�����ՓM�.,US)?�����/lb���M���M�GU��W\����ir�+�_�@��~q9����,���E�;K�i�9y8�ĵ��<c`)Q�6o�΂_+�ÿ9$�b�9PO~�/�j�� O��H�g����RJ��G��      Z   ^   x����0���0E��9����ʅ���B��t2n|1�O$�b2],VE���p�R�dH���t��h`<HT&MT.-�۴1�?4�����H"�      \   &  x����j�0����4�����.�SN��5��� [P�e2v��`U"�j0��O:�\
�GN�������X%B*ީy#K:;��������׺��\� e��
 ��*��TH�gޕG'�ug�BH�+�H����(��D�^} �t��0�,`�(Y2����t	�Kdf�?���yg�]�
v��(�!;l;m���e�wQ_���[�bѫ��g��$�y<���b-HA���qp+��^N^�l������U7
�����˵^"г��ud�y��L�H      ^   �  x����n�0���S���-�c�<�t�#& HQ�$P��Ƭ��ɛ���)�J��e�D�?��EV���d������Af��N4��J���ʲ�*��J�L&Y&N����)�{x^$����Tn:)�˫�Lmf��uY��
_��ϸ�5���e.4SU�F�f���8�m�����ݵaYw��5�3ٯ�2��u+Ke�?�\c�v@c���qZaY#sL��*Jg|SCK"6��Ix��o��Qi�Q1��.��&�8*���I��/��I YN����[�����0�e�Y�#��&�-8Pux���K��bV��RTM�����-U�Z,�(5�p��"L�ɬG�;��3�k�m
ji6�bhIh��8�P�V�v�x�6|�S�x#)�6��¨���Y��M��91B�a\��Pe����z3�o�o=�x���80�BuҐ�vM�>�&*aL�T's���pR�ݸ��i<bK<\??�3� G��C�n��ˍ��>$ �a�n��h�:htN�]K��,�JkQ{�@Qy�I|���E�.��1Y*�������93�����}d�wKr~�.o���;=�d�j����sk�&���ZXQ���{��Y�,:dz�pK�K���ޣ$��(j������ө��O-V��?��M���k��_�/�?�\��      `   ,  x��ӱn�0���+���ƌ�:t��Ť�j�tH�c�,�����Em�Kw�puu�d��Mm���4@s��\�E�پ��4&i�Grԝn��`{5̧�P���?���<����_�L�ҭM�tU��V����eQ��Vuj|W�e����t��nf�o�w#a��Ɍ�3������R��[ӌ:#���F�D��{���ʰ�Ɯ��qgժe�����-)" ��2fu.O�m�Z, �������K�[mz9 z�?'��r�ޯY���}��W�K�+6�`�/�y��Ż/�{�3B�=_�9      b   �   x�}�M
�0���=�5?��"�H��&P�BL��8=G/��Z�2������h�?�~�rcnry�ǳ�}`%Jl�e�mJ2*t��Ǳ�	�Ԩq��IVS& plOI&(��0a�b��Z�PP����5�Պ���]�I4h�,l������2��1�E�k�      d     x�}��n#7E��!��GV�c�'p�س� Z��FwK�n�����/�of����-�� �:@�VW:�o��b�=�fC__��Z�(N�,�'�(�(�"��f����5�+Ө����X6:���s�o��E����YB	���GC׺�tD$��s�}kT	����RJ��"�.:R��9�V�,�(�9J*P2���Ԛ���(��,��d���F�@� � �)����+z��������"ղF�p�,$ #�e�7�l�:Fq(�a�ҐH.�%��4�
�����_�����e���B�w����kfc�1�	�i���F����eG��B��Y��V%q�j�38S�҇��p��v;:B��r�N�ճFbp�,c*0b���*�t��?�Yơ<x���\�% ��� ��Ժ�[lU |N%+�Fަ(v.�%����)�LEW����������*�|K>�^��x�(:���(�X� g�X�8��7�bg[���yGY�L|N�qO\$��X�9V�8߿�=6}����h�����=��� >5ذYO������,P��?��<�l6�O��w�q�K|N-k�o;�ǒѱ�o���4�4	���inj�Osy�g�X29����tޢƴ*i��c�@�ڢn�ض��Y=���U �,�����#|�N|N�N�2�Y=��8b�sQ��Bz��9&.e�qnOę���n_�ɂ۷���)���0�����9>��% ^4(�-�V��B|Nh[��,�H�q��Y�I�dϳS���~ͪ��%��dy��U�<W颫�� �S�Tj�*��l�H��*�V]C�]�mh<:���֐�;��g�D�>��+]�]6(�d|��9ݳD�f�����d|�瘫%}^W���I0{]�	�����:�'���^DQ�����qzJ�\N�(]�G�(u�O$�c�������)=��UB#S��S��X���.~~5��5���t�J7��q�	�R�R���[GY��9-�'��S�d��=��� ~*����he'��p �: ��k���v ��ϩ�Bm��	����|�y]���� 2><b,���j�:ߧ�ﱆ�O����\�88�3j1��R��T�<؈�i�����/��%�����c޼�d�3~*�@�+�W�����P8�紴"��[#b2��Tr>��x�Q������
�㠏��
V���F9�������ݿ-*��t�������Pf>�U��3���#�5���ʦ������14�f�Lq��$�c���%���,��>�߂�ˁ�r��$�c����ˆ�`���V,PC�p��ī<��.�fK_v�ppt�9n�f�:(d��|&YoF|*�E�q�|Nk����l̜�3��#�0}�q���O<�&�Y��T�W�j>0�2��Lr=V��]W��]�P���h������p~�$��x��U�7�8p;r�h���B���<b�)*l؍�?a���Е����.�Y�;�g�۱�G��9W�~�R�1v9���p�;�!����������ٿqHK�      f   u   x�U��� Cg�_��)[�d��G�����BP�SDabq���F�!��'�Z�PK�xfle���;7��rM�`rm��6av���rw���x���<PŽ}?�y�g%���)�     