PGDMP      .    	            |            projetointegrador    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24673    projetointegrador    DATABASE     �   CREATE DATABASE projetointegrador WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE projetointegrador;
                postgres    false            �            1259    24675    usuario    TABLE       CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nome_usuario character varying(50) NOT NULL,
    cpf character varying(14) NOT NULL,
    senha character varying(25) NOT NULL,
    telefone character varying(15) NOT NULL,
    admin boolean NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    24674    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    216            �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    215                       2604    24678    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    24675    usuario 
   TABLE DATA           X   COPY public.usuario (id_usuario, nome_usuario, cpf, senha, telefone, admin) FROM stdin;
    public          postgres    false    216   �       �           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, true);
          public          postgres    false    215                       2606    24680    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    216            �   *   x�3�LL��400Ѓb]��������D(V����� �8	0     