PGDMP  .    "                |            e-pet-db    16.2    16.2 m    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    25669    e-pet-db    DATABASE     �   CREATE DATABASE "e-pet-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1254';
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
       public          postgres    false    215            z           0    0    admin_adminid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.admin_adminid_seq OWNED BY public.admin.adminid;
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
       public          postgres    false    217            {           0    0    adminlogkayıt_logid_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."adminlogkayıt_logid_seq" OWNED BY public.adminlogkayit.logid;
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
       public          postgres    false    219            |           0    0    aşıtakvimi_aşıid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."aşıtakvimi_aşıid_seq" OWNED BY public.asitakvimi.asiid;
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
       public          postgres    false    221            }           0    0    destektalep_destekid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.destektalep_destekid_seq OWNED BY public.destektalep.destekid;
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
       public          postgres    false    224            ~           0    0    evcilhayvan_hayvanid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.evcilhayvan_hayvanid_seq OWNED BY public.evcilhayvan.hayvanid;
          public          postgres    false    225            �            1259    25698    hayvansahibi    TABLE     :  CREATE TABLE public.hayvansahibi (
    hayvansahibiid integer NOT NULL,
    hayvansahibiadi character varying(50) NOT NULL,
    hayvansahibisoyadi character varying(50) NOT NULL,
    hayvansahibitc character varying(50) NOT NULL,
    hayvansahibitelefon character varying(50) NOT NULL,
    hayvansahibimail character varying(50) NOT NULL,
    hayvansahibisifre character varying(60) NOT NULL,
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
       public          postgres    false    226                       0    0    hayvansahibi_hayvansahibi_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.hayvansahibi_hayvansahibi_seq OWNED BY public.hayvansahibi.hayvansahibiid;
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
       public          postgres    false    228            �           0    0    klinik_klinikid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.klinik_klinikid_seq OWNED BY public.klinik.klinikid;
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
       public          postgres    false    230            �           0    0    puan_puanid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.puan_puanid_seq OWNED BY public.puan.puanid;
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
       public          postgres    false    232            �           0    0 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."radyolojikgörüntü_radyolojikid_seq" OWNED BY public.radyolojikgoruntu.radyolojiid;
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
       public          postgres    false    234            �           0    0    randevu_randevuid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.randevu_randevuid_seq OWNED BY public.randevu.randevuid;
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
       public          postgres    false    236            �           0    0    reçete_reçeteid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."reçete_reçeteid_seq" OWNED BY public.recete.receteid;
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
       public          postgres    false    238            �           0    0    tahlil_tahlilid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tahlil_tahlilid_seq OWNED BY public.tahlil.tahlilid;
          public          postgres    false    239            �            1259    25734 	   veteriner    TABLE     C  CREATE TABLE public.veteriner (
    veterinerid integer NOT NULL,
    klinikid integer NOT NULL,
    veterineradi character varying(50) NOT NULL,
    veterinersoyadi character varying(50) NOT NULL,
    veterinertc character varying(50) NOT NULL,
    veterinertelefon character varying(50) NOT NULL,
    veterinermail character varying(50) NOT NULL,
    veterinersifre character varying(60) NOT NULL,
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
       public          postgres    false    240            �           0    0    veteriner_veterinerid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.veteriner_veterinerid_seq OWNED BY public.veteriner.veterinerid;
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
       public          postgres    false    242            �           0    0    yapılanaşı_aşı_katid_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public."yapılanaşı_aşı_katid_seq" OWNED BY public.yapilanasi."aşı_katid";
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
       public          postgres    false    243    242            W          0    25670    admin 
   TABLE DATA           z   COPY public.admin (adminid, adminadi, adminsoyadi, admintc, admintelefon, adminmail, adminsifre, admingorevi) FROM stdin;
    public          postgres    false    215   ��       Y          0    25674    adminlogkayit 
   TABLE DATA           N   COPY public.adminlogkayit (logid, adminid, logtarih, logaciklama) FROM stdin;
    public          postgres    false    217   
�       [          0    25680 
   asitakvimi 
   TABLE DATA           Z   COPY public.asitakvimi (asiid, asiadi, asitipi, asihayvancinsi, asisiklikgun) FROM stdin;
    public          postgres    false    219   2�       ]          0    25684    destektalep 
   TABLE DATA           ~   COPY public.destektalep (destekid, adminid, kullaniciid, destektalepzamani, destekaciklamasi, destekcozumbilgisi) FROM stdin;
    public          postgres    false    221   �       `          0    25691    evcilhayvan 
   TABLE DATA           �   COPY public.evcilhayvan (hayvanid, hayvansahibiid, hayvancipno, hayvanadi, hayvancinsiyet, hayvanboy, hayvankilo, hayvantur, hayvandogumtarih) FROM stdin;
    public          postgres    false    224   >�       b          0    25698    hayvansahibi 
   TABLE DATA           �   COPY public.hayvansahibi (hayvansahibiid, hayvansahibiadi, hayvansahibisoyadi, hayvansahibitc, hayvansahibitelefon, hayvansahibimail, hayvansahibisifre, hayvansahibiadresil, hayvansahibiadresilce, hayvansahibiadresmahalle) FROM stdin;
    public          postgres    false    226   ��       d          0    25702    klinik 
   TABLE DATA           s   COPY public.klinik (klinikid, klinikadi, klinikil, klinikilce, klinikmahalle, klinikdetay, klinikkodu) FROM stdin;
    public          postgres    false    228    �       f          0    25706    puan 
   TABLE DATA           7   COPY public.puan (puanid, randevuid, puan) FROM stdin;
    public          postgres    false    230   ҙ       h          0    25710    radyolojikgoruntu 
   TABLE DATA           g   COPY public.radyolojikgoruntu (radyolojiid, randevuid, radyolojiaciklamasi, radyolojilink) FROM stdin;
    public          postgres    false    232   @�       j          0    25716    randevu 
   TABLE DATA           �   COPY public.randevu (randevuid, veterinerid, hayvanid, receteid, tahlilid, radyolojiid, randevuzamani, randevuaciklamasi, randevunotu, randevuiptal) FROM stdin;
    public          postgres    false    234   v�       l          0    25722    recete 
   TABLE DATA           _   COPY public.recete (receteid, randevuid, ilacadi, ilacbitimtarihi, ilacaciklamasi) FROM stdin;
    public          postgres    false    236   ?�       n          0    25728    tahlil 
   TABLE DATA           S   COPY public.tahlil (tahlilid, randevuid, tahlilaciklamasi, tahlillink) FROM stdin;
    public          postgres    false    238   {�       p          0    25734 	   veteriner 
   TABLE DATA           �   COPY public.veteriner (veterinerid, klinikid, veterineradi, veterinersoyadi, veterinertc, veterinertelefon, veterinermail, veterinersifre, veterinerdiplomano, veterinercalismasaatbas, veterinercalismasaatson) FROM stdin;
    public          postgres    false    240   (�       r          0    25738 
   yapilanasi 
   TABLE DATA           \   COPY public.yapilanasi ("aşı_katid", veterinerid, hayvanid, asiid, asizamani) FROM stdin;
    public          postgres    false    242   �       �           0    0    admin_adminid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_adminid_seq', 10, true);
          public          postgres    false    216            �           0    0    adminlogkayıt_logid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."adminlogkayıt_logid_seq"', 10, true);
          public          postgres    false    218            �           0    0    aşıtakvimi_aşıid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."aşıtakvimi_aşıid_seq"', 132, true);
          public          postgres    false    220            �           0    0    destektalep_destekid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.destektalep_destekid_seq', 10, true);
          public          postgres    false    222            �           0    0    evcilhayvan_hayvanid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.evcilhayvan_hayvanid_seq', 1, false);
          public          postgres    false    225            �           0    0    hayvan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hayvan_id_seq', 1054, true);
          public          postgres    false    223            �           0    0    hayvansahibi_hayvansahibi_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.hayvansahibi_hayvansahibi_seq', 92, true);
          public          postgres    false    227            �           0    0    klinik_klinikid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.klinik_klinikid_seq', 50, true);
          public          postgres    false    229            �           0    0    puan_puanid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.puan_puanid_seq', 20, true);
          public          postgres    false    231            �           0    0 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."radyolojikgörüntü_radyolojikid_seq"', 15, true);
          public          postgres    false    233            �           0    0    randevu_randevuid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.randevu_randevuid_seq', 20, true);
          public          postgres    false    235            �           0    0    reçete_reçeteid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."reçete_reçeteid_seq"', 20, true);
          public          postgres    false    237            �           0    0    tahlil_tahlilid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tahlil_tahlilid_seq', 10, true);
          public          postgres    false    239            �           0    0    veteriner_veterinerid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.veteriner_veterinerid_seq', 55, true);
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
       public            postgres    false    238            �           2606    25932    veteriner unique_mail_vet 
   CONSTRAINT     ]   ALTER TABLE ONLY public.veteriner
    ADD CONSTRAINT unique_mail_vet UNIQUE (veterinermail);
 C   ALTER TABLE ONLY public.veteriner DROP CONSTRAINT unique_mail_vet;
       public            postgres    false    240            �           2606    25924    hayvansahibi unique_tc 
   CONSTRAINT     [   ALTER TABLE ONLY public.hayvansahibi
    ADD CONSTRAINT unique_tc UNIQUE (hayvansahibitc);
 @   ALTER TABLE ONLY public.hayvansahibi DROP CONSTRAINT unique_tc;
       public            postgres    false    226            �           2606    25920    hayvansahibi unique_tc_email 
   CONSTRAINT     s   ALTER TABLE ONLY public.hayvansahibi
    ADD CONSTRAINT unique_tc_email UNIQUE (hayvansahibitc, hayvansahibimail);
 F   ALTER TABLE ONLY public.hayvansahibi DROP CONSTRAINT unique_tc_email;
       public            postgres    false    226    226            �           2606    25928    veteriner unique_tc_vet 
   CONSTRAINT     ^   ALTER TABLE ONLY public.veteriner
    ADD CONSTRAINT unique_tc_vet UNIQUE (veterinertelefon);
 A   ALTER TABLE ONLY public.veteriner DROP CONSTRAINT unique_tc_vet;
       public            postgres    false    240            �           2606    25926    hayvansahibi unique_telefon 
   CONSTRAINT     e   ALTER TABLE ONLY public.hayvansahibi
    ADD CONSTRAINT unique_telefon UNIQUE (hayvansahibitelefon);
 E   ALTER TABLE ONLY public.hayvansahibi DROP CONSTRAINT unique_telefon;
       public            postgres    false    226            �           2606    25930    veteriner unique_telefon_vet 
   CONSTRAINT     ^   ALTER TABLE ONLY public.veteriner
    ADD CONSTRAINT unique_telefon_vet UNIQUE (veterinertc);
 F   ALTER TABLE ONLY public.veteriner DROP CONSTRAINT unique_telefon_vet;
       public            postgres    false    240            �           2606    25780    veteriner veteriner_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.veteriner
    ADD CONSTRAINT veteriner_pkey PRIMARY KEY (veterinerid);
 B   ALTER TABLE ONLY public.veteriner DROP CONSTRAINT veteriner_pkey;
       public            postgres    false    240            �           2606    25782    yapilanasi yapılanaşı_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.yapilanasi
    ADD CONSTRAINT "yapılanaşı_pkey" PRIMARY KEY ("aşı_katid");
 I   ALTER TABLE ONLY public.yapilanasi DROP CONSTRAINT "yapılanaşı_pkey";
       public            postgres    false    242            W   p  x�m�?n�0����=�Iȟ�HM[)�Tuh��'j�!U��A�f윽ɽj[ K��ҫ'�gD;�+��O���d:������ߝA�b�0�-�$��8��R$��
O����yn$��7AT_��	�X�;�꒳TcR'=��3q9VBI�M����w\
�N-ܝ!m��M4�u5���TIB��,�cg���HL�bӌY��TR���D����ޙ����f�+Ḵ�"�bRp������$�t2v���@�	��M���]X�_�2���:�+#����v�W^�|�H����KK�c7�bd��n�`p��E���CǮ�ۯ-M�jӌU�5��D�M���E����KXZ�c�l?ߘ�y����      Y     x�u��j�@�g�)��7q�B�B�R:u�Ī�Z>��g��x��,���y�*���@@ q�>��)��0Nga6#X;fm��v:��z#�aw:gn�{Ak&C����hI���l�MA� ���	�b'�A��b�Q�y�.*����&?�%�hSH�6���&���[lI8�� �tOz�k�Z��ݵ���-�Y�{w�x	K-a�d=T����ۅ9��ea�o������O��Wz+O��E�X��qふ����QR?����vX�F	����<�oZ��      [   �  x���=n�@�k��@�}���À\�HC�,��@����iR�sr����Zkwg�	�G��h��'4��q�ެ���<~��˯]��Qִ�����q=���g
�V5w��;���us����n=l��Ek������ͦ+��f��ק���m����oV�f�.���Cs{���
Ds��?�*h>w�a|w���s2�XN/��T̓�:
��e"E��2�-�6��~�Y���A^IB��g��(�\��yU�����;���=��Nf�z���ݹ���7���ϸ����맳Mes��Ė%�I���ӂ/8#m"���%�֙����P�W<椑eM<�$QE��(]�iҏ*;9m)������KҔ�� �Y�6:��W��Zƅ֊�����M-pt�¯3ф�/"���>pL1���D��c48���dۗ.�qT�O�	l�X��8VҁcK?�IV��c8��c8ֳ�c8���%���buǢ�����p�X�q�0|�8�qu��U��4��%��9��K�/ O��	���)�	��pI8�"��N�	'���	��p  �Ɓ�!��s X΁�@�%u x�X��0�p�ԁ���Z.á��$*z�%�� { )����'H
} 	��$���H
 y����% (��|h���ǟ�      ]   ;  x�U�1n� �g|
.��`�I�V�Խ���E�	
`p$.S�!�7��*P�������=�"9A4��.�v��v]k,` �ku/���(�>IS�B�7o4�����7V��Ǌ;�wf�2?e�˔d�)|�3{�J�;~�p�J�	>���H��\�e��M�C�H�}�k遲�1ݴZ�2�xB��_��Y���9zq�h�w~�̓ky�\���1Q�z��5�+�z�>E�SJ���N��� �q+�~B�z�a�4�}�Q���*�d�	�,�K���"�a6�MF���?������`�: b�}��,��o      `   T  x�]�Kn7���]����s�A����*�f$��LԂ�I����@�{���&{!��"���#Ak�@}�Ï�j�������t<)�g�@Ϩ����+�5�I�	�ȧXD�n./�n��eQF��M�z�0�**"R���H�Z��w��0a*E��χ��r�{�sP���~�q�T�([���������"+7����(U���Sח��ϥ��3)�ٌ~["2�|�y��|���Π����PT^���u]_�o�dȎ��q�'�*]Tׇ�|l����M��8a*�'����é.��l$��sJ9�JDx�]��V������GI�����ZK��R�j<Gj�(TP����;�a`+�oU��L��-% �~\�����^�\4Q����B��7�DÇq����ũ�C��w���;I��f�#i��?��Y��k�N,߼�yP�K(������WEv<t��6(�)�X�z����4Vt�&��%���m���y�S�$�x���?����1b?�`[ر!Q�|h�s.�4aȺI�Sa�R( ~.I��<"ب�����Ԛ-�n��O&J��A-���?�� RFpq2E
8Щ'����`�$�X��6r ��r�l-@���@	Nd���&2j�3�a���L l��8  ʜ�H���f7p��r_�i6�=�b��6nTN�z�74/�Q���pB��{irVh�Qw�E+�8�K�6|��2o�Iꘓ@�Ɔ6~��2�����Q�6���]eAfl���49�1�|����7=�L��hc��&)Xvn�BC(��k����#7m�p����EI�p�Vf-a�4��]<B���f[�/>�F�#��ܘ�I��%��J(v		���0!���Ę�sݐFA��bJ���b�A�_�:Uk1��OO�Q�� ��G&ky��`�	�k�@��	=�cB��S����"f�gb;����S�"V�H �����46����>��֕M�����/e�!'Ķ�X����R�)BI�=Ya[8,�K=�CLK�K��aj[.�Qw���:*��7��Im˄���$��0�;L}��>_]]�H��B      b   N  x��T�r�H=����o�bI#����b{cH�l/���`@cI#2�Kߒ���.���	�����]�a)U�����=�t�9�q�R\�kw,b�o\�s��p/I�D��y�/�w��UH۳8�#�;2�#�^��F����X�O˫���8�q�X����Z��z�I��wɣ��c�S�|ƒYX����,I��0��XФu�"�,Ӑq8+7�>?��&�:v�qA��!Q�F�"����#�͂
)�C�� ��i�)���7�e��j%���!,�!]!��E!_b�`\n"*4���5G�L�Y�ɺ�RT��CX1Ik�W�:�� r��aH��~�]ދ>�2�a��Λ��P;���r�i���]��aHW�������v�'�L���R�����ҐV��l�*"&�?�y����2�朮`�]�`��JyBQ��;�?���d����+hTu?;P�t�R1��oCn0خ�m@/	�k��w�M6�衧�������I���B9�b���~�gh��h�UVH��iu�6�,�O��LP~M�r3��Xf|��$�l�z@�F�c�(�üc���S!����!�_���o��q_.���Ǳ}����dh�1�����/>/N�l<�q3�.Iz�p�Eto���tv��k�&\G���1,�"�k�}�&qM��$i�|�h�����e����Ma_kbz��������}�E8�Z�ǳ�$�~w��s~;8��#
�����9T��UM��ۧ���P����q�~���Vo��[<��8�D���c!��1R�5L���E�K����m���*\���դu5y]��g[Ӵ�qy�      d   �  x�}W�r�8]KO�U/{�BX��"t\C����
�,dJ��6/0o1Y�:�o��{͑�I�г�8���s�=�:$��3a���Z.�]a�~r���RfyI&���(�G;l�Y	�(��0;�Ig��4"#�ݖ�#���tu�'}�ϒ���K�K��7[#�Br'�>7���h�r�U�,�m�!w��4d�k���*�^������E���`�ɕ,pa��XL2\�u��_�9Sp�T��g�=�4��L	2㋅���\3JKh����/ ���X�P��n�!�}u7�?��H�@�E�~_�P��]r��T�k�I�e��;���J.p�t��_�6��C#�^�wO�)�&s��ǋX�4�/��Y#}���]� �7d�M�=����L�����[��F��i�dFnM�o�^}�t��5�4����e��bM��p�t-�܆���W��rn��%��А���5��Yr��3O(���%�$Ʈ�X�U��0�I�BF�𨫊�#��|/9�E2k��D�����[���~\÷��4i�SU�� ͽ�`z㲌C��W�����W2�7"��Bڂg,�h�*�[��,=�j�2���B�`�D���2daLÄ�:��.*�[2��g|k�`��r���ĸEJ	+�����µ�2�N�Bl �{ԅ�7�l��� )`iѰ�k�k�ʘxU� 2y���'��݆�<��g�h�&CgLy&��1H�*+E��#�;-Hw�N/�CfC�Ц�u#�Q��\������4qY����u�d��"}��iة4X=-��읁<���%z����g&49Z��h-���C#�����A���Tq��I��X�(Kq���h�"F��c	!�2�]�1�)�438�����#	-�\O�F}�Q#r��"�3^�U6f�<��j�ޠ��᧺�f��E�b/�g��c������L�*�͛|�
����F1����^�SKΠԻ���Q>�ß�D���,�%4j��g�j8Zl	� �gQ�rx�U�n. �E�J�?�rԌ��,��LoJ��o�?^8ތA.Mf��EW4j�+���I��R�zO]!� 3&��������,j���Ӫ�z�˼��up�Ny�6�m�}��TtM�α�N�9Ph�Us���{��;{"L�Ƭ�``���c��i���K�Az�[�>��+)Ox�b�zV�g����]6�ل�!���,��s�g�1Dχ���^��]�p�u �V����i�]X�˚H!c���Wu�-��Ɖ/!��u�(��Es�?-]}�~�ـ�	�[dX5_�E� O!�J�'�@1�⻩���E�J�^�i�vHu�����N��}���h�>Ydm('��Vh�&g;Q��ov�MYܦq����ܺ�+��hbx��z��"��q�\}Y��}�m����E/�Є5�U
�7ȖO�[�A~G��K{I�F��*���'m�]���?���%!M�c}]�z�~i���x	&���%�B]ID�Ӻ��f���W�և���;��{j����yL��{nS�3��ݳ$�I�KkWС�\�.�����ՓM�.,US)?�����/lb���M���M�GU��W\����ir�+�_�@��~q9����,���E�;K�i�9y8�ĵ��<c`)Q�6o�΂_+�ÿ9$�b�9PO~�/�j�� O��H�g����RJ��G��      f   ^   x����0���0E��9����ʅ���B��t2n|1�O$�b2],VE���p�R�dH���t��h`<HT&MT.-�۴1�?4�����H"�      h   &  x����j�0����4�����.�SN��5��� [P�e2v��`U"�j0��O:�\
�GN�������X%B*ީy#K:;��������׺��\� e��
 ��*��TH�gޕG'�ug�BH�+�H����(��D�^} �t��0�,`�(Y2����t	�Kdf�?���yg�]�
v��(�!;l;m���e�wQ_���[�bѫ��g��$�y<���b-HA���qp+��^N^�l������U7
�����˵^"г��ud�y��L�H      j   �  x����n�0���S���-�c�<�t�#& HQ�$P��Ƭ��ɛ���)�J��e�D�?��EV���d������Af��N4��J���ʲ�*��J�L&Y&N����)�{x^$����Tn:)�˫�Lmf��uY��
_��ϸ�5���e.4SU�F�f���8�m�����ݵaYw��5�3ٯ�2��u+Ke�?�\c�v@c���qZaY#sL��*Jg|SCK"6��Ix��o��Qi�Q1��.��&�8*���I��/��I YN����[�����0�e�Y�#��&�-8Pux���K��bV��RTM�����-U�Z,�(5�p��"L�ɬG�;��3�k�m
ji6�bhIh��8�P�V�v�x�6|�S�x#)�6��¨���Y��M��91B�a\��Pe����z3�o�o=�x���80�BuҐ�vM�>�&*aL�T's���pR�ݸ��i<bK<\??�3� G��C�n��ˍ��>$ �a�n��h�:htN�]K��,�JkQ{�@Qy�I|���E�.��1Y*�������93�����}d�wKr~�.o���;=�d�j����sk�&���ZXQ���{��Y�,:dz�pK�K���ޣ$��(j������ө��O-V��?��M���k��_�/�?�\��      l   ,  x��ӱn�0���+���ƌ�:t��Ť�j�tH�c�,�����Em�Kw�puu�d��Mm���4@s��\�E�پ��4&i�Grԝn��`{5̧�P���?���<����_�L�ҭM�tU��V����eQ��Vuj|W�e����t��nf�o�w#a��Ɍ�3������R��[ӌ:#���F�D��{���ʰ�Ɯ��qgժe�����-)" ��2fu.O�m�Z, �������K�[mz9 z�?'��r�ޯY���}��W�K�+6�`�/�y��Ż/�{�3B�=_�9      n   �   x�}�M
�0���=�5?��"�H��&P�BL��8=G/��Z�2������h�?�~�rcnry�ǳ�}`%Jl�e�mJ2*t��Ǳ�	�Ԩq��IVS& plOI&(��0a�b��Z�PP����5�Պ���]�I4h�,l������2��1�E�k�      p   �  x�}��RI���S������U-�d�٘a0��\JR	ڽ���^`�`�����2'n����YvO2�C?|Օ��|�ix]��>=}�� ?�����O^�y.'�Ub�jћ[ը*-U%Ƴ��tZ)�h{��ӿ6x�y���F@�����\���I�k%2(8 D0��B:P�A�U�V�&��r*�HL���@g)!C�(�]����<�h���4�"1���D$����Z���E^�%�����s�E����f 1�Q�v
�ǲ�5�g��(-��Kf=��PB�<��_�f�Xe�F$�����S1[4m�^���a$�O}�T�R�а�s\ٚ�7�UqF%�Qq]5��s%�q]۲LUNi^�J��^���B�:����hbt���ި{Y��ʀ^�W��jV��z;r~��|8X��7�Q_��D�ϫ<�m/�͛�l7�����Ix~����������ޣ�<���l�����+X��8�l�=���~z���>��O���9�����i�h���|k>g�#N�����1��cB.ǟ�D\�9���s<��� hI
;�r�G`���p�We�0^:y�����B.���i3��/��A��A������C%a��/����i�֕��V��z�u�s� qT]�s�uL��4�!��߷��s� 6�]Y:�N:&�r���e��|�>�8bK�ƒ�r9�Ua�i��T`����|ā�n,;-��2t����?��:-j�����4�֨G��6�M�����>�v]�Z(�H�<��z��:���\S�J�?#\�U��2����i�i��=H���Y��`)a�����)����H�87-G{�����UNo>�?���vQ�%�b*o
y�ֳ��$�����m�;g��p��p�Ma�n��r�r�7}��F�{D���	{n��Z�檐i����͎:�M/���O�c/���W<�]О���QV��y�̚vp�_F{S����p���(6��b��dFǳ\6x����r�=4�Fk�ꄶ����3ĩ��S�UC���6�\j�Ƞ�)��B��B�o�&ӹe������r9]i�5�*-x�m��k9��`V�������F!$?��4d_@��Wд�n����Х��y�]1!�b�G�K���A��2(DO��%�V�� ���]�Q%��i�E��B�v���r��C����/a��n���6K��<�����'�n�U�d����V�u���45"�!Պ�DvhBvh�\z�;�T�/�9��IǝmN�V�����r ���tަ9���l�V�	�P��Nf�M&�}�A����[tDg&�U�A#
��)v #n #���-}X�%��N+��P�
�`[9�Z9Jq6˯�n�
�N�f�Q�%h��a�+�+���K��ϵ~���Dŋ�k!����G�4�%ʾ��a��Bn0��D����ЋmkE\k��CU�����|��Q��/�U�����ضX̵�bcc�_�)r(      r   u   x�U��� Cg�_��)[�d��G�����BP�SDabq���F�!��'�Z�PK�xfle���;7��rM�`rm��6av���rw���x���<PŽ}?�y�g%���)�     