PGDMP                         z            postgres    15.0    15.0 $    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    5    postgres    DATABASE     |   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE postgres;
                postgres    false            )           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3368                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            *           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16446    giderler    TABLE     ?   CREATE TABLE public.giderler (
    gid integer NOT NULL,
    ay character varying(25) NOT NULL,
    "yıl" character varying(25) NOT NULL,
    gider integer NOT NULL,
    aciklama character varying(50)
);
    DROP TABLE public.giderler;
       public         heap    postgres    false            ?            1259    16451    gider_id_seq    SEQUENCE     ?   ALTER TABLE public.giderler ALTER COLUMN gid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.gider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
    CYCLE
);
            public          postgres    false    223            ?            1259    16453    kapalıtarihler    TABLE     p   CREATE TABLE public."kapalıtarihler" (
    ktid integer NOT NULL,
    ktarih character varying(25) NOT NULL
);
 %   DROP TABLE public."kapalıtarihler";
       public         heap    postgres    false            ?            1259    16458    kapalıtarihler_id_seq    SEQUENCE     ?   ALTER TABLE public."kapalıtarihler" ALTER COLUMN ktid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."kapalıtarihler_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
    CYCLE
);
            public          postgres    false    225            ?            1259    16403    musteri    TABLE     j   CREATE TABLE public.musteri (
    kullaniciadi character varying(15) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            ?            1259    16418    musteri_id_seq    SEQUENCE     ?   ALTER TABLE public.musteri ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.musteri_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
    CYCLE
);
            public          postgres    false    215            ?            1259    16439    randevu    TABLE     ?   CREATE TABLE public.randevu (
    rid integer NOT NULL,
    rtarih character varying(20) NOT NULL,
    rsaat character varying(20) NOT NULL,
    rsaha character varying(20) NOT NULL,
    rmusteri character varying(20) NOT NULL
);
    DROP TABLE public.randevu;
       public         heap    postgres    false            ?            1259    16444    randevu_r-id_seq    SEQUENCE     ?   ALTER TABLE public.randevu ALTER COLUMN rid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."randevu_r-id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
    CYCLE
);
            public          postgres    false    220            ?            1259    16425    saha    TABLE     b   CREATE TABLE public.saha (
    sid smallint NOT NULL,
    sisim character varying(15) NOT NULL
);
    DROP TABLE public.saha;
       public         heap    postgres    false            ?            1259    16445    saha_s-id_seq    SEQUENCE     ?   ALTER TABLE public.saha ALTER COLUMN sid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."saha_s-id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
    CYCLE
);
            public          postgres    false    219            ?            1259    16410    yonetici    TABLE     ?   CREATE TABLE public.yonetici (
    yid integer NOT NULL,
    ykullaniciadi character varying(15) NOT NULL,
    yguvsoru character varying(20) NOT NULL,
    ysifre text NOT NULL
);
    DROP TABLE public.yonetici;
       public         heap    postgres    false            ?            1259    16424    yonetici_id_seq    SEQUENCE     ?   ALTER TABLE public.yonetici ALTER COLUMN yid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.yonetici_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
    CYCLE
);
            public          postgres    false    216                      0    16446    giderler 
   TABLE DATA           D   COPY public.giderler (gid, ay, "yıl", gider, aciklama) FROM stdin;
    public          postgres    false    223   T%       !          0    16453    kapalıtarihler 
   TABLE DATA           9   COPY public."kapalıtarihler" (ktid, ktarih) FROM stdin;
    public          postgres    false    225   ?%                 0    16403    musteri 
   TABLE DATA           3   COPY public.musteri (kullaniciadi, id) FROM stdin;
    public          postgres    false    215   +&                 0    16439    randevu 
   TABLE DATA           F   COPY public.randevu (rid, rtarih, rsaat, rsaha, rmusteri) FROM stdin;
    public          postgres    false    220   ?&                 0    16425    saha 
   TABLE DATA           *   COPY public.saha (sid, sisim) FROM stdin;
    public          postgres    false    219    (                 0    16410    yonetici 
   TABLE DATA           H   COPY public.yonetici (yid, ykullaniciadi, yguvsoru, ysifre) FROM stdin;
    public          postgres    false    216   )(       +           0    0    gider_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.gider_id_seq', 13, true);
          public          postgres    false    224            ,           0    0    kapalıtarihler_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."kapalıtarihler_id_seq"', 2, true);
          public          postgres    false    226            -           0    0    musteri_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.musteri_id_seq', 31, true);
          public          postgres    false    217            .           0    0    randevu_r-id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."randevu_r-id_seq"', 30, true);
          public          postgres    false    221            /           0    0    saha_s-id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."saha_s-id_seq"', 2, true);
          public          postgres    false    222            0           0    0    yonetici_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.yonetici_id_seq', 7, true);
          public          postgres    false    218            ?           2606    16450    giderler gider_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.giderler
    ADD CONSTRAINT gider_pkey PRIMARY KEY (gid);
 =   ALTER TABLE ONLY public.giderler DROP CONSTRAINT gider_pkey;
       public            postgres    false    223            ?           2606    16457 $   kapalıtarihler kapalıtarihler_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."kapalıtarihler"
    ADD CONSTRAINT "kapalıtarihler_pkey" PRIMARY KEY (ktid);
 R   ALTER TABLE ONLY public."kapalıtarihler" DROP CONSTRAINT "kapalıtarihler_pkey";
       public            postgres    false    225            ?           2606    16443    randevu randevu_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.randevu
    ADD CONSTRAINT randevu_pkey PRIMARY KEY (rid);
 >   ALTER TABLE ONLY public.randevu DROP CONSTRAINT randevu_pkey;
       public            postgres    false    220            ?           2606    16429    saha saha_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.saha
    ADD CONSTRAINT saha_pkey PRIMARY KEY (sid);
 8   ALTER TABLE ONLY public.saha DROP CONSTRAINT saha_pkey;
       public            postgres    false    219            ?           2606    16416    yonetici yonetici_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.yonetici
    ADD CONSTRAINT yonetici_pkey PRIMARY KEY (yid);
 @   ALTER TABLE ONLY public.yonetici DROP CONSTRAINT yonetici_pkey;
       public            postgres    false    216               ?   x?eϱ?0????0?v??)????Ls ?Lᐂ????E????/?;???/0?X??6T???|t????+???+/d?t=?Ĵ??>k)??᱋߸?8?C??*9^c???|??JzY?P???g?(?[???w?]?[[9?      !   #   x?3?44?30?3202?2?42?3s??b???? S?         ?   x??M
?0@???aĦ?.U
?J????fh?04I%1??2??w?????=j[????ɑ
7h9????Ha?Ji?Աm??Ɗ<?#knh>6X&\?G[<h??1љ?i?????*??EC??R??I?$?KTo???_D?;?3?           x?]?KN?0????X?I?;?*!?TĢ?ͨM???A1^$???CFB?f??3P,JR ?wJ??O&?c??@?&??u?M???ٶ'm??,0??R4%ܱ??Z???_??Fl??׬??Kf?L`
O^?r*??5?qS????R??U?????.-????T?O?!P?wF?r???޻??JP?GĞ???*?'̖??u?w????
A?p?p9?????p?p9၍uo?3?/F??tSl???? ?V????ts????l?FP?zd5!?
|?`??!???2?            x?3?,N?H4?2?F\1z\\\ ;G?         q   x?-???@Ec?
*@⎉	I7??a?4bh????A?#??58?*Z1?????>v?Q?fyQrF?`?4?b,?<=,'??&?nC؛??FJ&w?b΋>
bf? H~)?     