PGDMP  4    /                |            ePET    15.7    16.3 g    ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    ePET    DATABASE     {   CREATE DATABASE "ePET" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE "ePET";
                postgres    false            �            1259    16407    admin    TABLE     �  CREATE TABLE public.admin (
    adminid integer NOT NULL,
    "adminadı" character varying(50) NOT NULL,
    "adminsoyadı" character varying(50) NOT NULL,
    admintc character varying(50) NOT NULL,
    admintelefon character varying(50) NOT NULL,
    adminmail character varying(50) NOT NULL,
    adminsifre character varying(50) NOT NULL,
    "admingörevi" character varying(50) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16406    admin_adminid_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_adminid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.admin_adminid_seq;
       public          postgres    false    217            �           0    0    admin_adminid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.admin_adminid_seq OWNED BY public.admin.adminid;
          public          postgres    false    216            �            1259    16534    adminlogkayıt    TABLE     �   CREATE TABLE public."adminlogkayıt" (
    logid integer NOT NULL,
    adminid integer NOT NULL,
    logtarih date NOT NULL,
    "logaçıklama" text NOT NULL
);
 $   DROP TABLE public."adminlogkayıt";
       public         heap    postgres    false            �            1259    16533    adminlogkayıt_logid_seq    SEQUENCE     �   CREATE SEQUENCE public."adminlogkayıt_logid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."adminlogkayıt_logid_seq";
       public          postgres    false    242            �           0    0    adminlogkayıt_logid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."adminlogkayıt_logid_seq" OWNED BY public."adminlogkayıt".logid;
          public          postgres    false    241            �            1259    16469    aşıtakvimi    TABLE       CREATE TABLE public."aşıtakvimi" (
    "aşıid" integer NOT NULL,
    "aşıadı" character varying(50) NOT NULL,
    "aşıtipi" character varying(50) NOT NULL,
    "aşıhayvancinsi" character varying(50) NOT NULL,
    "aşısıklıkgün" integer NOT NULL
);
 "   DROP TABLE public."aşıtakvimi";
       public         heap    postgres    false            �            1259    16468    aşıtakvimi_aşıid_seq    SEQUENCE     �   CREATE SEQUENCE public."aşıtakvimi_aşıid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."aşıtakvimi_aşıid_seq";
       public          postgres    false    229            �           0    0    aşıtakvimi_aşıid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."aşıtakvimi_aşıid_seq" OWNED BY public."aşıtakvimi"."aşıid";
          public          postgres    false    228            �            1259    16446    destektalep    TABLE       CREATE TABLE public.destektalep (
    destekid integer NOT NULL,
    adminid integer NOT NULL,
    "kullanıcıid" integer NOT NULL,
    "destektalepzamanı" date NOT NULL,
    "destekaçıklaması" text NOT NULL,
    "destekÇözümbilgisi" boolean NOT NULL
);
    DROP TABLE public.destektalep;
       public         heap    postgres    false            �            1259    16445    destektalep_destekid_seq    SEQUENCE     �   CREATE SEQUENCE public.destektalep_destekid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.destektalep_destekid_seq;
       public          postgres    false    227            �           0    0    destektalep_destekid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.destektalep_destekid_seq OWNED BY public.destektalep.destekid;
          public          postgres    false    226            �            1259    16484    hayvan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.hayvan_id_seq
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hayvan_id_seq;
       public          postgres    false            �            1259    16476    evcilhayvan    TABLE     �  CREATE TABLE public.evcilhayvan (
    hayvanid bigint DEFAULT nextval('public.hayvan_id_seq'::regclass) NOT NULL,
    hayvansahibiid integer NOT NULL,
    "hayvanÇipno" character varying(50) NOT NULL,
    "hayvanadı" character varying(50) NOT NULL,
    hayvancinsiyet character varying(50) NOT NULL,
    hayvanboy numeric NOT NULL,
    hayvankilo numeric NOT NULL,
    "hayvantür" character varying(50) NOT NULL,
    hayvandogumtarih date NOT NULL
);
    DROP TABLE public.evcilhayvan;
       public         heap    postgres    false    232            �            1259    16475    evcilhayvan_hayvanid_seq    SEQUENCE     �   CREATE SEQUENCE public.evcilhayvan_hayvanid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.evcilhayvan_hayvanid_seq;
       public          postgres    false    231            �           0    0    evcilhayvan_hayvanid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.evcilhayvan_hayvanid_seq OWNED BY public.evcilhayvan.hayvanid;
          public          postgres    false    230            �            1259    16512    hayvansahibi    TABLE     >  CREATE TABLE public.hayvansahibi (
    hayvansahibi integer NOT NULL,
    "hayvansahibiadı" character varying(50) NOT NULL,
    "hayvansahibisoyadı" character varying(50) NOT NULL,
    hayvansahibitc character varying(50) NOT NULL,
    hayvansahibitelefon character varying(50) NOT NULL,
    hayvansahibimail character varying(50) NOT NULL,
    hayvansahibisifre character varying(50) NOT NULL,
    hayvansahibiadresil character varying(50) NOT NULL,
    hayvansahibiadresilce character varying(50) NOT NULL,
    hayvansahibiadresmahalle character varying(50) NOT NULL
);
     DROP TABLE public.hayvansahibi;
       public         heap    postgres    false            �            1259    16511    hayvansahibi_hayvansahibi_seq    SEQUENCE     �   CREATE SEQUENCE public.hayvansahibi_hayvansahibi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.hayvansahibi_hayvansahibi_seq;
       public          postgres    false    238            �           0    0    hayvansahibi_hayvansahibi_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.hayvansahibi_hayvansahibi_seq OWNED BY public.hayvansahibi.hayvansahibi;
          public          postgres    false    237            �            1259    16400    klinik    TABLE     _  CREATE TABLE public.klinik (
    klinikid integer NOT NULL,
    "klinikadı" character varying(50) NOT NULL,
    klinikil character varying(50) NOT NULL,
    "klinikilçe" character varying(50) NOT NULL,
    klinikmahalle character varying(50) NOT NULL,
    klinikdetay character varying(50) NOT NULL,
    klinikkodu character varying(50) NOT NULL
);
    DROP TABLE public.klinik;
       public         heap    postgres    false            �            1259    16399    klinik_klinikid_seq    SEQUENCE     �   CREATE SEQUENCE public.klinik_klinikid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.klinik_klinikid_seq;
       public          postgres    false    215            �           0    0    klinik_klinikid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.klinik_klinikid_seq OWNED BY public.klinik.klinikid;
          public          postgres    false    214            �            1259    16527    puan    TABLE     l   CREATE TABLE public.puan (
    puanid integer NOT NULL,
    randevuid integer NOT NULL,
    puan integer
);
    DROP TABLE public.puan;
       public         heap    postgres    false            �            1259    16526    puan_puanid_seq    SEQUENCE     �   CREATE SEQUENCE public.puan_puanid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.puan_puanid_seq;
       public          postgres    false    240            �           0    0    puan_puanid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.puan_puanid_seq OWNED BY public.puan.puanid;
          public          postgres    false    239            �            1259    16496    radyolojikgörüntü    TABLE     �   CREATE TABLE public."radyolojikgörüntü" (
    radyolojikid integer NOT NULL,
    randevuid integer NOT NULL,
    "radyolojikaçıklaması" text NOT NULL,
    radyolojikpath character varying(255) NOT NULL
);
 *   DROP TABLE public."radyolojikgörüntü";
       public         heap    postgres    false            �            1259    16495 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE     �   CREATE SEQUENCE public."radyolojikgörüntü_radyolojikid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."radyolojikgörüntü_radyolojikid_seq";
       public          postgres    false    236            �           0    0 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."radyolojikgörüntü_radyolojikid_seq" OWNED BY public."radyolojikgörüntü".radyolojikid;
          public          postgres    false    235            �            1259    16430    randevu    TABLE     l  CREATE TABLE public.randevu (
    randevuid integer NOT NULL,
    veterinerid integer NOT NULL,
    hayvanid integer NOT NULL,
    "reçeteid" integer NOT NULL,
    tahlilid integer NOT NULL,
    radyolojikid integer NOT NULL,
    "randevuzamanı" date NOT NULL,
    "randevuaçıklaması" text NOT NULL,
    randevunotu text,
    randevuiptal boolean NOT NULL
);
    DROP TABLE public.randevu;
       public         heap    postgres    false            �            1259    16429    randevu_randevuid_seq    SEQUENCE     �   CREATE SEQUENCE public.randevu_randevuid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.randevu_randevuid_seq;
       public          postgres    false    223            �           0    0    randevu_randevuid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.randevu_randevuid_seq OWNED BY public.randevu.randevuid;
          public          postgres    false    222            �            1259    16421    reçete    TABLE     �   CREATE TABLE public."reçete" (
    "reçeteid" integer NOT NULL,
    randevuid integer NOT NULL,
    "ilaçadı" character varying(50) NOT NULL,
    "ilaçbitimtarihi" date NOT NULL,
    "ilaçaçıklaması" text NOT NULL
);
    DROP TABLE public."reçete";
       public         heap    postgres    false            �            1259    16420    reçete_reçeteid_seq    SEQUENCE     �   CREATE SEQUENCE public."reçete_reçeteid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."reçete_reçeteid_seq";
       public          postgres    false    221            �           0    0    reçete_reçeteid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."reçete_reçeteid_seq" OWNED BY public."reçete"."reçeteid";
          public          postgres    false    220            �            1259    16487    tahlil    TABLE     �   CREATE TABLE public.tahlil (
    tahlilid integer NOT NULL,
    randevuid integer NOT NULL,
    "tahlilaçıklaması" text NOT NULL,
    tahlilpath character varying(255) NOT NULL
);
    DROP TABLE public.tahlil;
       public         heap    postgres    false            �            1259    16486    tahlil_tahlilid_seq    SEQUENCE     �   CREATE SEQUENCE public.tahlil_tahlilid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tahlil_tahlilid_seq;
       public          postgres    false    234            �           0    0    tahlil_tahlilid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tahlil_tahlilid_seq OWNED BY public.tahlil.tahlilid;
          public          postgres    false    233            �            1259    16414 	   veteriner    TABLE     V  CREATE TABLE public.veteriner (
    veterinerid integer NOT NULL,
    klinikid integer NOT NULL,
    "veterineradı" character varying(50) NOT NULL,
    "veterinersoyadı" character varying(50) NOT NULL,
    veterinertc character varying(50) NOT NULL,
    veterinertelefon character varying(50) NOT NULL,
    veterinermail character varying(50) NOT NULL,
    veterinersifre character varying(50) NOT NULL,
    veterinerdiplomano character varying(50) NOT NULL,
    "veteriner_Çalışmasaatbaş" time without time zone NOT NULL,
    "veteriner_Çalışmasaatson" time without time zone NOT NULL
);
    DROP TABLE public.veteriner;
       public         heap    postgres    false            �            1259    16413    veteriner_veterinerid_seq    SEQUENCE     �   CREATE SEQUENCE public.veteriner_veterinerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.veteriner_veterinerid_seq;
       public          postgres    false    219            �           0    0    veteriner_veterinerid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.veteriner_veterinerid_seq OWNED BY public.veteriner.veterinerid;
          public          postgres    false    218            �            1259    16439    yapılanaşı    TABLE     �   CREATE TABLE public."yapılanaşı" (
    "aşı_katid" integer NOT NULL,
    veterinerid integer NOT NULL,
    hayvanid integer NOT NULL,
    "aşıid" character varying(50) NOT NULL,
    "aşızamanı" date NOT NULL
);
 #   DROP TABLE public."yapılanaşı";
       public         heap    postgres    false            �            1259    16438    yapılanaşı_aşı_katid_seq    SEQUENCE     �   CREATE SEQUENCE public."yapılanaşı_aşı_katid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."yapılanaşı_aşı_katid_seq";
       public          postgres    false    225            �           0    0    yapılanaşı_aşı_katid_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."yapılanaşı_aşı_katid_seq" OWNED BY public."yapılanaşı"."aşı_katid";
          public          postgres    false    224            �           2604    16410    admin adminid    DEFAULT     n   ALTER TABLE ONLY public.admin ALTER COLUMN adminid SET DEFAULT nextval('public.admin_adminid_seq'::regclass);
 <   ALTER TABLE public.admin ALTER COLUMN adminid DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16537    adminlogkayıt logid    DEFAULT     �   ALTER TABLE ONLY public."adminlogkayıt" ALTER COLUMN logid SET DEFAULT nextval('public."adminlogkayıt_logid_seq"'::regclass);
 E   ALTER TABLE public."adminlogkayıt" ALTER COLUMN logid DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    16472    aşıtakvimi aşıid    DEFAULT     �   ALTER TABLE ONLY public."aşıtakvimi" ALTER COLUMN "aşıid" SET DEFAULT nextval('public."aşıtakvimi_aşıid_seq"'::regclass);
 G   ALTER TABLE public."aşıtakvimi" ALTER COLUMN "aşıid" DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16449    destektalep destekid    DEFAULT     |   ALTER TABLE ONLY public.destektalep ALTER COLUMN destekid SET DEFAULT nextval('public.destektalep_destekid_seq'::regclass);
 C   ALTER TABLE public.destektalep ALTER COLUMN destekid DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16515    hayvansahibi hayvansahibi    DEFAULT     �   ALTER TABLE ONLY public.hayvansahibi ALTER COLUMN hayvansahibi SET DEFAULT nextval('public.hayvansahibi_hayvansahibi_seq'::regclass);
 H   ALTER TABLE public.hayvansahibi ALTER COLUMN hayvansahibi DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    16403    klinik klinikid    DEFAULT     r   ALTER TABLE ONLY public.klinik ALTER COLUMN klinikid SET DEFAULT nextval('public.klinik_klinikid_seq'::regclass);
 >   ALTER TABLE public.klinik ALTER COLUMN klinikid DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16530    puan puanid    DEFAULT     j   ALTER TABLE ONLY public.puan ALTER COLUMN puanid SET DEFAULT nextval('public.puan_puanid_seq'::regclass);
 :   ALTER TABLE public.puan ALTER COLUMN puanid DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    16499 !   radyolojikgörüntü radyolojikid    DEFAULT     �   ALTER TABLE ONLY public."radyolojikgörüntü" ALTER COLUMN radyolojikid SET DEFAULT nextval('public."radyolojikgörüntü_radyolojikid_seq"'::regclass);
 R   ALTER TABLE public."radyolojikgörüntü" ALTER COLUMN radyolojikid DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    16433    randevu randevuid    DEFAULT     v   ALTER TABLE ONLY public.randevu ALTER COLUMN randevuid SET DEFAULT nextval('public.randevu_randevuid_seq'::regclass);
 @   ALTER TABLE public.randevu ALTER COLUMN randevuid DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16424    reçete reçeteid    DEFAULT     |   ALTER TABLE ONLY public."reçete" ALTER COLUMN "reçeteid" SET DEFAULT nextval('public."reçete_reçeteid_seq"'::regclass);
 D   ALTER TABLE public."reçete" ALTER COLUMN "reçeteid" DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16490    tahlil tahlilid    DEFAULT     r   ALTER TABLE ONLY public.tahlil ALTER COLUMN tahlilid SET DEFAULT nextval('public.tahlil_tahlilid_seq'::regclass);
 >   ALTER TABLE public.tahlil ALTER COLUMN tahlilid DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16417    veteriner veterinerid    DEFAULT     ~   ALTER TABLE ONLY public.veteriner ALTER COLUMN veterinerid SET DEFAULT nextval('public.veteriner_veterinerid_seq'::regclass);
 D   ALTER TABLE public.veteriner ALTER COLUMN veterinerid DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16442    yapılanaşı aşı_katid    DEFAULT     �   ALTER TABLE ONLY public."yapılanaşı" ALTER COLUMN "aşı_katid" SET DEFAULT nextval('public."yapılanaşı_aşı_katid_seq"'::regclass);
 L   ALTER TABLE public."yapılanaşı" ALTER COLUMN "aşı_katid" DROP DEFAULT;
       public          postgres    false    225    224    225            b          0    16407    admin 
   TABLE DATA                 public          postgres    false    217   �w       {          0    16534    adminlogkayıt 
   TABLE DATA                 public          postgres    false    242   �y       n          0    16469    aşıtakvimi 
   TABLE DATA                 public          postgres    false    229   ^{       l          0    16446    destektalep 
   TABLE DATA                 public          postgres    false    227   �~       p          0    16476    evcilhayvan 
   TABLE DATA                 public          postgres    false    231   ŀ       w          0    16512    hayvansahibi 
   TABLE DATA                 public          postgres    false    238   k�       `          0    16400    klinik 
   TABLE DATA                 public          postgres    false    215   %�       y          0    16527    puan 
   TABLE DATA                 public          postgres    false    240   �       u          0    16496    radyolojikgörüntü 
   TABLE DATA                 public          postgres    false    236   �       h          0    16430    randevu 
   TABLE DATA                 public          postgres    false    223   ��       f          0    16421    reçete 
   TABLE DATA                 public          postgres    false    221   +�       s          0    16487    tahlil 
   TABLE DATA                 public          postgres    false    234   �       d          0    16414 	   veteriner 
   TABLE DATA                 public          postgres    false    219   ��       j          0    16439    yapılanaşı 
   TABLE DATA                 public          postgres    false    225   ��       �           0    0    admin_adminid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_adminid_seq', 10, true);
          public          postgres    false    216            �           0    0    adminlogkayıt_logid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."adminlogkayıt_logid_seq"', 10, true);
          public          postgres    false    241            �           0    0    aşıtakvimi_aşıid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."aşıtakvimi_aşıid_seq"', 132, true);
          public          postgres    false    228            �           0    0    destektalep_destekid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.destektalep_destekid_seq', 10, true);
          public          postgres    false    226            �           0    0    evcilhayvan_hayvanid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.evcilhayvan_hayvanid_seq', 1, false);
          public          postgres    false    230            �           0    0    hayvan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hayvan_id_seq', 1054, true);
          public          postgres    false    232            �           0    0    hayvansahibi_hayvansahibi_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.hayvansahibi_hayvansahibi_seq', 75, true);
          public          postgres    false    237            �           0    0    klinik_klinikid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.klinik_klinikid_seq', 50, true);
          public          postgres    false    214            �           0    0    puan_puanid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.puan_puanid_seq', 20, true);
          public          postgres    false    239            �           0    0 %   radyolojikgörüntü_radyolojikid_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."radyolojikgörüntü_radyolojikid_seq"', 15, true);
          public          postgres    false    235            �           0    0    randevu_randevuid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.randevu_randevuid_seq', 20, true);
          public          postgres    false    222            �           0    0    reçete_reçeteid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."reçete_reçeteid_seq"', 20, true);
          public          postgres    false    220            �           0    0    tahlil_tahlilid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tahlil_tahlilid_seq', 10, true);
          public          postgres    false    233            �           0    0    veteriner_veterinerid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.veteriner_veterinerid_seq', 50, true);
          public          postgres    false    218            �           0    0    yapılanaşı_aşı_katid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."yapılanaşı_aşı_katid_seq"', 10, true);
          public          postgres    false    224            �           2606    16412    admin admin_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (adminid);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    217            �           2606    16541 "   adminlogkayıt adminlogkayıt_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."adminlogkayıt"
    ADD CONSTRAINT "adminlogkayıt_pkey" PRIMARY KEY (logid);
 P   ALTER TABLE ONLY public."adminlogkayıt" DROP CONSTRAINT "adminlogkayıt_pkey";
       public            postgres    false    242            �           2606    16474    aşıtakvimi aşıtakvimi_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."aşıtakvimi"
    ADD CONSTRAINT "aşıtakvimi_pkey" PRIMARY KEY ("aşıid");
 L   ALTER TABLE ONLY public."aşıtakvimi" DROP CONSTRAINT "aşıtakvimi_pkey";
       public            postgres    false    229            �           2606    16453    destektalep destektalep_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.destektalep
    ADD CONSTRAINT destektalep_pkey PRIMARY KEY (destekid);
 F   ALTER TABLE ONLY public.destektalep DROP CONSTRAINT destektalep_pkey;
       public            postgres    false    227            �           2606    16483    evcilhayvan evcilhayvan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.evcilhayvan
    ADD CONSTRAINT evcilhayvan_pkey PRIMARY KEY (hayvanid);
 F   ALTER TABLE ONLY public.evcilhayvan DROP CONSTRAINT evcilhayvan_pkey;
       public            postgres    false    231            �           2606    16517    hayvansahibi hayvansahibi_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.hayvansahibi
    ADD CONSTRAINT hayvansahibi_pkey PRIMARY KEY (hayvansahibi);
 H   ALTER TABLE ONLY public.hayvansahibi DROP CONSTRAINT hayvansahibi_pkey;
       public            postgres    false    238            �           2606    16405    klinik klinik_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.klinik
    ADD CONSTRAINT klinik_pkey PRIMARY KEY (klinikid);
 <   ALTER TABLE ONLY public.klinik DROP CONSTRAINT klinik_pkey;
       public            postgres    false    215            �           2606    16532    puan puan_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.puan
    ADD CONSTRAINT puan_pkey PRIMARY KEY (puanid);
 8   ALTER TABLE ONLY public.puan DROP CONSTRAINT puan_pkey;
       public            postgres    false    240            �           2606    16503 .   radyolojikgörüntü radyolojikgörüntü_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."radyolojikgörüntü"
    ADD CONSTRAINT "radyolojikgörüntü_pkey" PRIMARY KEY (radyolojikid);
 \   ALTER TABLE ONLY public."radyolojikgörüntü" DROP CONSTRAINT "radyolojikgörüntü_pkey";
       public            postgres    false    236            �           2606    16437    randevu randevu_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.randevu
    ADD CONSTRAINT randevu_pkey PRIMARY KEY (randevuid);
 >   ALTER TABLE ONLY public.randevu DROP CONSTRAINT randevu_pkey;
       public            postgres    false    223            �           2606    16428    reçete reçete_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."reçete"
    ADD CONSTRAINT "reçete_pkey" PRIMARY KEY ("reçeteid");
 B   ALTER TABLE ONLY public."reçete" DROP CONSTRAINT "reçete_pkey";
       public            postgres    false    221            �           2606    16494    tahlil tahlil_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tahlil
    ADD CONSTRAINT tahlil_pkey PRIMARY KEY (tahlilid);
 <   ALTER TABLE ONLY public.tahlil DROP CONSTRAINT tahlil_pkey;
       public            postgres    false    234            �           2606    16419    veteriner veteriner_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.veteriner
    ADD CONSTRAINT veteriner_pkey PRIMARY KEY (veterinerid);
 B   ALTER TABLE ONLY public.veteriner DROP CONSTRAINT veteriner_pkey;
       public            postgres    false    219            �           2606    16444     yapılanaşı yapılanaşı_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."yapılanaşı"
    ADD CONSTRAINT "yapılanaşı_pkey" PRIMARY KEY ("aşı_katid");
 N   ALTER TABLE ONLY public."yapılanaşı" DROP CONSTRAINT "yapılanaşı_pkey";
       public            postgres    false    225            b   �  x�͖ώ�0��}����J++�ߊ�(P�Dw��6��j'U��H^�7�#{��'nm�Ϭ-G��Sf�o��i櫳�]/?�E�ۻ����M���F�,�����D]�`s>vmR��)�p��<3�!MX������O�D�:��x�\GW�����*^�t��|�
���h<���q�x��S�
VT��?@�%gI�����b�e�Ut�(�������*�Rח'�M�����r]r��R/��x�p).O�(�y������_q%
��R�#L����Z�G���P)�駞�#�<����X�b/����<ֽ��2l����"�<��-�o���(�2ㇼ���R�!S/��v�K��8G9��B�:�)rJA���T��-�#�Z��A
�7ա���}�s�����:�{tQ��Uw�3���xCH�E7�u�s��>�|S�Á�i�<��-�+Գ�^dc�P��1ZZ�������ݧ�%n\/l�vy��5������      {   y  x���Ok�0 ���E�(���$L�l8P�=�Y}�i+�i<z]/;yk�^{q���:�%$���Kf��t���|�
��O���e�Ø�0��������y�8�����Tɝ��`=yy�.�����:��v�m����sN$��TlU*}��/�,�9y��z��n$r��Ƚ���G�#�HJ#��9�("xSNO@���g�2F�J��H����=��.Of�s���8O�g�<����r�w�R�@UG��/�os���${C*�����@��V�j!�@�����P��V���"^�����cJFF6f�����P���,,�5[��|-�[s��6gl8+�%$H�8/O$5�A��t�K�u��Q�����Hq���Z���      n   �  x�՜�N�@F�<�� �j����*��V�"u9%Vk�&�G�/�3��;��@e$O�j���dGY����|s䣓ӃOg���هb�|�T�G����f/WՏjT�<�W��^�x�w7�Ͳ�W���x��Ӌj��[��\N�Ϸ����nq�����i�C{���f���^_��檹h�o����JY��f�(�lY>�z5[U���� �����E9,�qY-QR�,��|9[̫z6<��ENLӲ���q�,'��:�v�l�q��m(�Gȼ%�� q�����2�$��_&�5_y|���._�n��Xn�Vn�㳊�#U�?��Rw�Ϻ��H�68P�*#�����"����H>m=`�����=���8��9����8���|���X_E D5���? ��g�~�3�͆g�n�3s�4g7�1�����}"�)�0�R�J�Ë~�3��6�,ݬ��i�n�ss�dS�J�s+�jW�|���6�Pm��0��*ՂP�2����`�M��3�TPo:�A�>j�!��;��:���`c�/��@H�p8��}��O�>b�ΧM�a57/8���x��i���Ӧ?��̧��fOk|>m<z>m�|�
��%����i���PJ�j�|�&���L�i�x����ȧm��O�tƆR�ޛv<�i���vL�i�Ýv��4{ڱЧ�?���i����l�i��l�i�ş����g�O{&������?����Ox:0�:��:p���������������FM��GM��HM��IM�C�&w��8��D,lj"p��ۧ���
@V򗼬 ��RM�Ʃ&�E�&	oU�d�U�d�U���I���$��j��n5Ix��$��������[[ �
��      l   �  x����j�0�{�bȥ-8�q�/zj!�����w�R����Up_�oQ��˞|��^�l]*�>�ƶ�X���/oow��w������$>^r�L��?�=`<��nƱ���]����Ƕ���z�Ueퟮ��-k�ܾ�_�&�PP����ovp>��ߞ�?'�b2����f�g�`��l]]f�$���gR����vp����(�KY���{%����c���3ױ$��Y��	g�v�4�H!B��1��3S�օ��]݊t;2%��XA��Yx�>Cs��&�}y04�mX.�>S�S�%�����+�&o��j���x�%S�)�"���*۷)i'еe��˚���g��)K��pV}�V.'��k��Y��'�I2��In��V#o�c�6i�E����]��u��{J��m�UI���n�������0�>1�[F) f�D������X�      p   �  x�՚�n7��~
�'�W��?�S���),���֒`/�����O���3��Sonޫ�Т�]�椕 	�0Ùo~�������������vw�w���q��7��c�������x��ۛ����u���0�oW��}������wO�����i����!����߻���p�����u7og��;��d1{���ώ��t�cp�?������z��+�6�������G��k�j�������^/�'�<(9�m���C��K�$J�Au����A��^/E$�"(�~���`��>�܌l���W+�`���i��n]$��[��|�ǚM�\É�VI��I�|*�Z�|vAu�W7�4�X����jL��j��GX�������-�+-�^�I�F���5��M�]%��I�{�6	�x���v}W�b
�oM�Ao��d��%�����udJ��duhN��Ă�B��������rSd�/բr�u�i9ȅd� ���� �_�zե�~K��!vI/���妈0m�F��*�xoـ�%�K�� �֢]E�/��`�h0_��P�8������ݺ��,tPj��x�낛&f<�THN��FnZ�s���LrC}���Xt������Z�7�tFW�bΏ/3Ԧ� ����~(�
�J�~TTgGm:Z!�,@����K�%\hGv܎4��0��d� M�G�E;B���*ꕤ6�<,���Q6�P���:�����YGk��>_�yp�#��|�w@�x��8����G�f#���)I���u�y���` �;>ғ�Ac�&��9��2"���	;�3�)�3X�i�-�"�(� *PˆZM�[�jq�Z?v��yf�B�U���_��j�H�v��C.S���8�Z��YW���z��a�B��jqW%<gC0S�p����j���[� ���Q�\�`ZJr��K��6eKp4����llP�Z�%5�%
�%DeW�8��4��Z�jN�@[B�V�Fa�c���ج(
�%TuU�c��1�a�(���X[��x�qQ|K�ڦظ��T� 0%���(����M��SU��f�D����.�^{�Uk���bU� \���N`��㲥�lL��ʜr�o�-���05Ѫ�2�\�����������6�$�K��"BG�U�a.h)�1���U��/�z2*:�\����1�T5�i��O���#�qI]YG�x1O�8�� ���K��F��}S0�[LL�kO9ᒶ��pq!��Hϡ!֜r�%�Eg�jUom�;�"\ .��	X��āp��YQ�KAt��!�1�YL���/�)m��-��-�~�C�GWT-��Y��66%bK�VK�պ����)���5��ǫ�e)tY��v[̇q�6�d�7�U�:�w��u_\���b����={�F      w   �  x��\Ko�F��W�8�@��F/�%�E�po+j%\�F�?��Ss�/>�F�ug�K-i��et�8^����|��|y=���������]8f��nN������Go�W����K2�<�.�|w����(\SF�����dy�oN=���G��Xh���ɜ0F�}|�}t}��qt<��48�/������OϚ'�v�ۃ�n�K����_�ľc����;!�^o��8��ŐnW���
���{��o~��-@z�L��~��g
t?F:�Pᴂ4��"��~�ѓ'�5���l�h�H�9W\,�,���R�Oc�c	\�p����zi����x���qA,��u�p���!���Z����z
�Y�v,�+��h��hC��^�,ZO�'��ɋ��8��r>P�\��G�?��yإ`7c�3�{7�	[HC�:BX��~�;?\�8�qF�G�I��i������xi�����oE�	�}M1���>��p�]��6Z�B݊��𥸣���*�{�w��s��zϸaA��iYؗ�ݎ��p�Y�Q�q��&]��f�|���3p\�ڱ�IpR�;1��=��E����E�3#K.>����������ŀ/Ÿ���ۆ��)q��
[��pБ*�	�����YK)?��B.+�� �=-��9�б���ݒ����y�r�1�.�-��+�쐿N�=�\Ñ���e"a�{DkϪ��>�A�.�x���9�x�ьZh3'�K�\ .Z�h�H�L����
1?�J�b�Hf�%���)�F�T_x��IpG�+i;��')�=klW�Oܸw����C��z�2�xM�3�����(3�ް/�0���LO�(ZK-�C� T<�(0m��B��n	�*� E[PC���y����g���\V�9%c�Y1����-��*q}���i~IK+�/���A@�:Z�\zi�����VrI%���.)s�H+/-QNdf�&�}b���؎}$�S����\Z�l��C�>�	�̣�4a��/�.[#�u�6-3�RZ���ܑL[���Ώ:��p
� ��!Fk�2w��VuJ��-���BKq%S�'�=a<���ЦM�j����&�f{�1q��X6�uH�\�%� ��P�"h�w&����V���M��ʤ�ț�*�6{:槕<5��^14�h����u�~8�|&Өڼ����Z��5i7E���u2q"W�9]��"�B�!��L�	t�!�x�e��s�Z�脊��J�x�.$ �P�$$Ҩ�c�W/\��L˦H��m �#�+�Z�H�q�@�e:��yp�''Z#E9�m
�qR�3}Y�� z ��α&���F�lg�D��d��"^P�'��?{I��CKgp^��@x�ЂD�ʛK���]�E a�0�(��N����9�O�Y�*>�˪�0.Ƚ��X�5�I�!� Z�X#I]N7s_��Pb�i62ŗ�̋�*V�_�xF�@��l�z��Mad�l.�ϰ&P;���!��v#3�U��X9ť�No�9���b2�K�ji�v ��"��Lw�����j����2��������I<W���s%�!8C��D��a+�I�r�
��g�ˬ���	�i��$�-Z^�҆�̓c��h�	�Y��SLK+��a�l:��H��i����4Y�{��0W�$��%��D���@�ֹQĺ��ӈ�d)�b8a\�YA�(��.�`�d�w��IK+��a]M	΂&�K� ��V�-���[��)R��$����\j��;t�;�w�4����(Tf���P�φ~ʂ�
�G�e�{*�f��!E�-8��vzU>�`xI���N-t�qe8K��h��҄�����>��\��>�<�J<�螘6܍*�!���ʇʠ
s+�Ps�LKg�U�2#�U��[�WbH�8��hm?�
��,T\��-^��XVH`�UP�V��c�hú^n]i��N�����0v/��I4v����
�pSI��(�Җ�Xz.g�c�X�"���H��h�a ǋh�~��ж���:�dmz�eޕ�����E~j#��a�	/���X�݃W��T��"U�~3M�e"i=7�e��r��)2���]Z��x��їn,E?e��x儻��Jv�Ԯܴxu��P1^�YqPgkw�v��EBhn��ς�N#]�QsM��C��f �i�y�e4/���I6���?,�      `   �  x�Ś�r�����YL�T����Iꮀ@H%t\�.f'�*�6%KL����,g�M��#y�{$�Фg�U�Iw�q����$n?���O����Z�9g���2��_�O����%�_�:C�}^�g|���HɊpN�/c*I����M;����/��Q9���ۋ�p㶐$�+���H̒�ԗ�<&�����S*�4[�hLņ-h�ߊ�{��[��|x�!Y�K4!���g�d	F@��ei.�ؖqb���t-�f�P�#���	ƾkE�y|�n��h&�0�ڦ�\��I�L^�la��_s�
\��.ᬰF��q�ZW�?`J�\�("��*Q��|�����ʼ�}�����L�b�2"Y�4�0�8t-�\���~����'	�=7R��5�*﫞���궋z���]���?m*m���ЉIf�yL����Q����Ub���]�)��'�r.t{�B��`4��ڌ�(��1�{{�+���|�P��L����Z�����5]ZGC���^P�HX�W��lM�D0SЗQΌ?܈<OY�<��!Ɨ�e]5�w��^ۘ��2��H��Ԙ��#�~�>�nND�����W��xX�&���\���9I*���[3/,�O�U��1��^WT�Qa;��s��� nȖ�Pk[��洴�lk�T��Ȇ�*<YQA�e��s��4AX��e]-��-7k("�Jb����s�����g��yJєL��4�b�9=x�]��*ڠ�PVN�*�0y�4O�ɿ�� {�!��q���'���Bm�4"�{3�*IBֲ�Y�_�<_j���9���	��fP��Yl��L4��p�h�^S������s��*�u/V�WP;�Fz$-�7�	ᤰ����1�Mɲ2�iZ����Yb��(�a����z�KFKn�T��&3�,�Ze�l������wٌ�a��� �m�U	��cj��>��P��t��95�ӊUB��s��U���Lc��V	�3�H������x�-�Fk�`l�fo4s��MNB"�#{Q{'Һ�ڐ�J����鉤1��w�g�� �D6����[XY�?����*$Ҍj�h7�t�þs��5P���f����z���8"�^]Cs.w������,¾s��;���tGV��$K��
+��f"_Z¸-8x�]r�����,��q�R�6�N-CܮiR�V���d���:��:�w���i70 A��@�E����%�{�R^��w�
�s��+��B��ffQV11�9޽pZBK��ۓ���E��B����s�a?�{���#��v/IdaZ��29�l_���+�Ǿs��/�ѱ��27{�u���Hl��V)Wk�H��Q̂��;���F�v��s��塚�_���r�ī�r���u{_������EJn7���VQ�Q#�PcD
`��\Yx�eL^� �'?
U���E�7C����nl#��%���'�Wq*]��Ρ"�P��c`�����- ���P���oh���Od�rNAh[���a�{%���FɄ�c��Tl~*SM�8pN�����ٖ�u!��#I7��s���]w2T���A"�T!�&���>� �XW�#��HN�����Cpъ�6P���v��1;$Ɇ���Oũ�p����=�ӻQ�*�H�P�^h�fߋRt�s|�Κ��Ãk!7ǫ
f�����5���9<�{x@?�Ш��ژhD��'�MOP��9<��&�~�y��G,4S�z���qn�np�B��գ�.���]��=��ޜ��G�L��9>���K���%d��\ϧj��t\��8t�a�f��Ә��K�ƣ;����8t���6J� EΏ�B��?���"��sf?��s:f��ߺd�3���WމIC�I�sz/�)+$�@s
���ᐃ�;��r9'���v�~�m��:Bkd������a��R��sC���đ��Iƙ�vǋp��eu���璝L��a�sp8�g;W}�!�J ��i� �/�MK���l��������      y   �   x����
�@��<Ŕ	,���be�""��>��� ��w|G�9�+�����ۮ������u�=��n�����$x���xo����S3TB�$�1���lR�� �<"h���lR��V�	2��\��!N!(�8��d_GcC-fKQ�&V�W]��J������ƨU�\5n�fW�\��j����.�3z]�PA�0��^      u   �  x�ŕ�n�0�w���b�\h�S�:AE�� UW����ĉ��jxFf&���jJ�e�t'9>G��t�}��B7�0�-�&o]��Xi���u�ώ,Ύuh�]S'̲�y���v����O�|_��~+!�?��2zZ�hhD���RϦ��Gۼ<6��8i���Z!sP�6QC�� M	��V^�I��89�USw1�@#wM����,vlFK�yp*���a��f�>u���Fe�NQUM���?���>����n���4���r�ҕ�Ũ�b��y|�%��Xu_�1�@�,ʩ�b|���$i	�7'�j�!��T� M�˚���n�o�DFvȷ�1�*l����i��m��rTawZay^�#U;�U�-�N&�5q��rVar2�o����Y�&�^e��4�V�i���      h   �  x�ݘ�N�@��<Ŋ ;��UQ���T��	^�v����F2�k�\�%���WgvM��K��)F�����4�_^�\��e�׷���L�x8KAG|n�q����<��x��	�9h�S^����;,�'%�S��D%��t_r�y�t�<l2P�TK�0��|��In�1�A������.n�q�a��uؠ�B�ݰ���#\]�H��@�5�en@
ͦ"e��BE�E0O�,E���WAe����e����Z%B_���\͸d�YTK&���*״sN)�!<+`�W�4�D����ҳ�Z�l��EYQ�f��r]��\�r��]m>�LqsV��y^� Lߖ
���}_�1=�-�7Ь�1�eY�mh��,H	��˲9�Z��e~&oA#�dKj��!&���D�P�O�j���#A�FCO���!D��<;���i�zU�E�j�$
@�Y��e�H`��/F��aEH>�'Kf<��H\�T���GH��i�%2��[x��m4�
w�:�)v�rc���LA	�j�po�h��r$=M|5z>Q�Q��\ٮ�X?m)��.$h�w!]��-M)r$��KU�l����t��������G$�Gx,����m��IS��AAԀ�b�0�i8��4Ej�w��e�T�:�!pv4�0�i�8���aW�{��vk�Ń���}��Џ��
#�[o�,!��&50|�6��_�F�0�r��|>䋔��Z��CuN���oM{�5��6�M���C�󈲕/@#X���`֌L�F�W�6��n���_��y�]�WʐTd<�=5c��&�m�h�xR	�]�ޕ/�PXs��o��S1W���Lj�8OR�av�5$Ώڟؕ��S�a�Ѧ���PBgW�.
��2�[�_���L�<      f   �  x�͖�j�@��>ŐKVɮ&&��A��X���F�8�%Ƃ}�={��[|��Jmb�ͅ�$a����|;���c�O�
c���L�+��K�Y2����
g,�e�����:6!��2�9�ޣ��F�L��l�����A�3�e��C\/r�lj�#:M�k���;�`��X�DE�\��ޫe7�j�[H������[xPK���n���1;�_�P�c��Rx�A��s�����Jf���Dz�+6'�_���v�;h��e���n����1��턻�ˬ�Y�xU�;eΛ�z�A�
��`�}�օѬ�ˬs�`ֹC��T��J;�qʯ���;�D�UJ|����)Sy�b�{&3O������T�)S�[���9�8�)Yu�1/�ΐ1O�ʻs>0�yJV]�{�2O�ʃ+s�c0��UW�����Z�R88y      s     x����n�0��<ŉ� � �o�N�*��R0ݏ&�U�D���t����+Q�P:a�l�N�}Ý��2�%D��a��k��N+��T	BIY��~���J�����iO���Ah��]^�W��#攁L+�?��8h��~�lD�Ήng1D`D�Q�?=�<F����lӬ-1� 1F`�S����'�������)#d�Ϸ%m.��Ԃ��+mJ���0� �#�׷ӷ` �mg`��s��r����z8�7hc�	      d   �  x���n�8��y�F.��~�g�2����Ikg��e@wӶ �;�Z��7����k|��o�~��*J��\�,�.X��v�E��Wd�����\M>|��4��^���݋���'?��|=�e���z������z<�l�~L�V�Q���f4R��6�M-F���k���f;�-���������k�����������������r�C4��+8���.��/����x�I���e�m��a?��g�.����b�m�ߥ8d�������X�-�E?}�_���W�����I�ܻ�G�8.x��f��!��5��� ��x�O�x���Q+����<��Cx[���lv�V���{:��+x�w=��?E�x����~oop[a��:$+ꩧ~D=�N���� ���𻜮4�l�>*�w8�5��ޗ��y�G�g�	���
2�يS���g�Q���8�:��ş��<�#���d��˜�˿v��ʋf>���</s�}ص����՟��=�#��^��D�_�A��R}1P����8�;�����/<�#���d�k���r���[Z�k�����W��:Lv@��?A_z�Ǌ�#�X��������7b�i�>��r�a�v� �$���1q�R��Q��\����#M��l�sV�0R>y5���b��� �����5�� �~[m0�ݶ���2����|��|�a�BBj7��z�ٰxqW2y5���b��o���h�N�>@��S�8^�܍^i��@>���?�<�\6�����d��_�M�Y�N�JI#��vR��S}'k�YGJj�f��o1���	\	i�� :�\�ps�g��m�����l3��R��+���#�YTCiYQqY�}��.�+QQiY9�K�t4�:j@�HHE}/d�1�^5`�v+`��|�SX�W�p�`�XIi���?!�>ߴD�L'.v' �u��lv�'q%���R�8iL{�]_�a�.�"�,���1����z�4�^jPǍR��~/��ؓ���I�0���w妱wS�;x)Fp�^�wԫ����E������D�Qr{95���b��W�/��ni�Z��!���⌓ۥa��4�rj�1�����T[���Yf���3�ӝ蕠�^P� �1	�%KzӖ-mn�g�~���5�:�+I����AP1���z���y-�Ssz?Deә�O��*E����AO1�	�9��߷���[.�����~���+&��'JRc/�vT��m^J1=+Or;iia�
��/�Ga�D�i���8mn�\���ܸhkz�c�z��7��
HvbW��xI5���b���l�78���&6�Dÿ�Yr���+'����U�?�*F�N�w����Î6�Ts��l�5N��To�r<�K'{A�e�����l�f�v�hS�	]�j�]Հ��\pYܯZ	f3�i�d��:�+GM����O1@L�ۖ*�:u7���G�p��]�(CM����Ny��&Wz+;2�BC����nL��4�vj 3M�Toר�H�o���\�ƾ\����GZ����R��+�A�#x������������v�P;�M`Ŷ.�r��;���#8|/Am�����R^FvO&�=�g���d'y婉�T��I਩����j������>Ƴ��B6+�î5��j ?M�t/_˃1����V4��jO����Y��N�JMS��v�ҔvRE9|�𴑟PJ�ݥ4=�%~��]b���^P� ��Ǽo	����H��F��ى���4�rj �Ϝ�����y|~h�N�}``�p�f-�:�+9M���AL1�O���S��4�����ј-�z�nR��4�Vj#�~]I��/������}
l�O��8�u�\��6R姩�S=�)Fp�-oy淋���6��#�;L7u�te��7S�9X)��<�����040o ��_̀t��[���#8�奬1�b����cb�J���i
��Չ��Lyi�����G�����s���cb�)�74�]�]�l?f�O��~���0#��      j   �   x���O
�@�x��`���,i%�B��Զ1��$��2��;Խ�aH�?x�[��o�y-S�����M�o��]�߯B���|�l��zYE��l�}����v�~���S�D�>�I��]X��,J���q	8�lB)s��)�z�ﱁ�[1&���ID��5>����pN8ms��O'#��Y����s��mN���M�Uu���St��Y��&��sF�ɺ:MG����a59.:�QSe����ǲ�M��     