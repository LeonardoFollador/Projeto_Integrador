PGDMP  2    +                |            projetointegrador    16.2    16.2 s    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    42209    projetointegrador    DATABASE     �   CREATE DATABASE projetointegrador WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE projetointegrador;
                postgres    false            �            1259    42210    bairros    TABLE     �   CREATE TABLE public.bairros (
    id_bairro integer NOT NULL,
    nome character varying(50) NOT NULL,
    fk_id_cidades integer NOT NULL
);
    DROP TABLE public.bairros;
       public         heap    postgres    false            �            1259    42213    bairros_fk_id_cidades_seq    SEQUENCE     �   CREATE SEQUENCE public.bairros_fk_id_cidades_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.bairros_fk_id_cidades_seq;
       public          postgres    false    215            2           0    0    bairros_fk_id_cidades_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bairros_fk_id_cidades_seq OWNED BY public.bairros.fk_id_cidades;
          public          postgres    false    216            �            1259    42214    bairros_id_bairro_seq    SEQUENCE     �   CREATE SEQUENCE public.bairros_id_bairro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bairros_id_bairro_seq;
       public          postgres    false    215            3           0    0    bairros_id_bairro_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bairros_id_bairro_seq OWNED BY public.bairros.id_bairro;
          public          postgres    false    217            �            1259    42215 	   categoria    TABLE     U   CREATE TABLE public.categoria (
    nome_categoria character varying(20) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    42218    cidades    TABLE     �   CREATE TABLE public.cidades (
    id_cidades integer NOT NULL,
    nome character varying(70) NOT NULL,
    slug character varying(70) NOT NULL,
    fk_sigla character varying(2) NOT NULL
);
    DROP TABLE public.cidades;
       public         heap    postgres    false            �            1259    42221    cidades_id_cidades_seq    SEQUENCE     �   CREATE SEQUENCE public.cidades_id_cidades_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cidades_id_cidades_seq;
       public          postgres    false    219            4           0    0    cidades_id_cidades_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cidades_id_cidades_seq OWNED BY public.cidades.id_cidades;
          public          postgres    false    220            �            1259    42222    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying(50) NOT NULL,
    cpf character varying(14) NOT NULL,
    telefone character varying(20),
    observacao text,
    fk_id_endereco integer
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    42227    cliente_fk_id_endereco_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_fk_id_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cliente_fk_id_endereco_seq;
       public          postgres    false    221            5           0    0    cliente_fk_id_endereco_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cliente_fk_id_endereco_seq OWNED BY public.cliente.fk_id_endereco;
          public          postgres    false    222            �            1259    42228    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    221            6           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    223            �            1259    42229    compra    TABLE     �   CREATE TABLE public.compra (
    id_compra integer NOT NULL,
    preco numeric(10,2) NOT NULL,
    unidade character varying(15) NOT NULL,
    quantidade integer NOT NULL,
    fk_id_historico integer NOT NULL,
    fk_id_produto integer NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    42232    compra_fk_id_historico_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_fk_id_historico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.compra_fk_id_historico_seq;
       public          postgres    false    224            7           0    0    compra_fk_id_historico_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.compra_fk_id_historico_seq OWNED BY public.compra.fk_id_historico;
          public          postgres    false    225            �            1259    42233    compra_fk_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_fk_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.compra_fk_id_produto_seq;
       public          postgres    false    224            8           0    0    compra_fk_id_produto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.compra_fk_id_produto_seq OWNED BY public.compra.fk_id_produto;
          public          postgres    false    226            �            1259    42234    compra_id_compra_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.compra_id_compra_seq;
       public          postgres    false    224            9           0    0    compra_id_compra_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.compra_id_compra_seq OWNED BY public.compra.id_compra;
          public          postgres    false    227            �            1259    42235    endereco    TABLE     �   CREATE TABLE public.endereco (
    id_endereco integer NOT NULL,
    numero integer,
    complemento character varying(50),
    fk_id_logradouro integer NOT NULL
);
    DROP TABLE public.endereco;
       public         heap    postgres    false            �            1259    42238    endereco_fk_id_logradouro_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_fk_id_logradouro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.endereco_fk_id_logradouro_seq;
       public          postgres    false    228            :           0    0    endereco_fk_id_logradouro_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.endereco_fk_id_logradouro_seq OWNED BY public.endereco.fk_id_logradouro;
          public          postgres    false    229            �            1259    42239    endereco_id_endereco_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_id_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.endereco_id_endereco_seq;
       public          postgres    false    228            ;           0    0    endereco_id_endereco_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.endereco_id_endereco_seq OWNED BY public.endereco.id_endereco;
          public          postgres    false    230            �            1259    42240    estados    TABLE     r   CREATE TABLE public.estados (
    nome character varying(30) NOT NULL,
    sigla character varying(2) NOT NULL
);
    DROP TABLE public.estados;
       public         heap    postgres    false            �            1259    42243 	   historico    TABLE     4  CREATE TABLE public.historico (
    id_historico integer NOT NULL,
    data character varying(20) NOT NULL,
    tempo character varying(20) NOT NULL,
    preco_total numeric(10,2) NOT NULL,
    fk_id_cliente integer,
    fk_id_usuario integer NOT NULL,
    metodo_pagamento character varying(25) NOT NULL
);
    DROP TABLE public.historico;
       public         heap    postgres    false            �            1259    42246    historico_fk_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.historico_fk_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.historico_fk_id_cliente_seq;
       public          postgres    false    232            <           0    0    historico_fk_id_cliente_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.historico_fk_id_cliente_seq OWNED BY public.historico.fk_id_cliente;
          public          postgres    false    233            �            1259    42247    historico_fk_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.historico_fk_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.historico_fk_id_usuario_seq;
       public          postgres    false    232            =           0    0    historico_fk_id_usuario_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.historico_fk_id_usuario_seq OWNED BY public.historico.fk_id_usuario;
          public          postgres    false    234            �            1259    42248    historico_id_historico_seq    SEQUENCE     �   CREATE SEQUENCE public.historico_id_historico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.historico_id_historico_seq;
       public          postgres    false    232            >           0    0    historico_id_historico_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.historico_id_historico_seq OWNED BY public.historico.id_historico;
          public          postgres    false    235            �            1259    42249    logradouros    TABLE       CREATE TABLE public.logradouros (
    id_logradouro integer NOT NULL,
    cep character varying(15) NOT NULL,
    nome character varying(50) NOT NULL,
    uf character varying(2) NOT NULL,
    fk_id_cidades integer NOT NULL,
    fk_id_bairro integer NOT NULL
);
    DROP TABLE public.logradouros;
       public         heap    postgres    false            �            1259    42252    logradouros_fk_id_bairro_seq    SEQUENCE     �   CREATE SEQUENCE public.logradouros_fk_id_bairro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.logradouros_fk_id_bairro_seq;
       public          postgres    false    236            ?           0    0    logradouros_fk_id_bairro_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.logradouros_fk_id_bairro_seq OWNED BY public.logradouros.fk_id_bairro;
          public          postgres    false    237            �            1259    42253    logradouros_fk_id_cidades_seq    SEQUENCE     �   CREATE SEQUENCE public.logradouros_fk_id_cidades_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.logradouros_fk_id_cidades_seq;
       public          postgres    false    236            @           0    0    logradouros_fk_id_cidades_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.logradouros_fk_id_cidades_seq OWNED BY public.logradouros.fk_id_cidades;
          public          postgres    false    238            �            1259    42254    logradouros_id_logradouro_seq    SEQUENCE     �   CREATE SEQUENCE public.logradouros_id_logradouro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.logradouros_id_logradouro_seq;
       public          postgres    false    236            A           0    0    logradouros_id_logradouro_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.logradouros_id_logradouro_seq OWNED BY public.logradouros.id_logradouro;
          public          postgres    false    239            �            1259    42255    produtos    TABLE     5  CREATE TABLE public.produtos (
    id_produto integer NOT NULL,
    nome character varying(50) NOT NULL,
    descricao character varying(50),
    preco numeric(10,2) NOT NULL,
    unidade character varying(20) NOT NULL,
    quantidade integer NOT NULL,
    fk_nome_categoria character varying(20) NOT NULL
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    42258    produtos_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.produtos_id_produto_seq;
       public          postgres    false    240            B           0    0    produtos_id_produto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.produtos_id_produto_seq OWNED BY public.produtos.id_produto;
          public          postgres    false    241            �            1259    42259    usuario    TABLE     -  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    cpf character varying(14) NOT NULL,
    nome character varying(50) NOT NULL,
    senha character varying(50) NOT NULL,
    telefone character varying(20),
    admin boolean NOT NULL,
    observacao text,
    fk_id_endereco integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    42264    usuario_fk_id_endereco_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_fk_id_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.usuario_fk_id_endereco_seq;
       public          postgres    false    242            C           0    0    usuario_fk_id_endereco_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.usuario_fk_id_endereco_seq OWNED BY public.usuario.fk_id_endereco;
          public          postgres    false    243            �            1259    42265    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    242            D           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    244            T           2604    42266    bairros id_bairro    DEFAULT     v   ALTER TABLE ONLY public.bairros ALTER COLUMN id_bairro SET DEFAULT nextval('public.bairros_id_bairro_seq'::regclass);
 @   ALTER TABLE public.bairros ALTER COLUMN id_bairro DROP DEFAULT;
       public          postgres    false    217    215            U           2604    42267    cidades id_cidades    DEFAULT     x   ALTER TABLE ONLY public.cidades ALTER COLUMN id_cidades SET DEFAULT nextval('public.cidades_id_cidades_seq'::regclass);
 A   ALTER TABLE public.cidades ALTER COLUMN id_cidades DROP DEFAULT;
       public          postgres    false    220    219            V           2604    42268    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    223    221            W           2604    42269    compra id_compra    DEFAULT     t   ALTER TABLE ONLY public.compra ALTER COLUMN id_compra SET DEFAULT nextval('public.compra_id_compra_seq'::regclass);
 ?   ALTER TABLE public.compra ALTER COLUMN id_compra DROP DEFAULT;
       public          postgres    false    227    224            X           2604    42270    endereco id_endereco    DEFAULT     |   ALTER TABLE ONLY public.endereco ALTER COLUMN id_endereco SET DEFAULT nextval('public.endereco_id_endereco_seq'::regclass);
 C   ALTER TABLE public.endereco ALTER COLUMN id_endereco DROP DEFAULT;
       public          postgres    false    230    228            Y           2604    42271    historico id_historico    DEFAULT     �   ALTER TABLE ONLY public.historico ALTER COLUMN id_historico SET DEFAULT nextval('public.historico_id_historico_seq'::regclass);
 E   ALTER TABLE public.historico ALTER COLUMN id_historico DROP DEFAULT;
       public          postgres    false    235    232            Z           2604    42272    logradouros id_logradouro    DEFAULT     �   ALTER TABLE ONLY public.logradouros ALTER COLUMN id_logradouro SET DEFAULT nextval('public.logradouros_id_logradouro_seq'::regclass);
 H   ALTER TABLE public.logradouros ALTER COLUMN id_logradouro DROP DEFAULT;
       public          postgres    false    239    236            [           2604    42273    produtos id_produto    DEFAULT     z   ALTER TABLE ONLY public.produtos ALTER COLUMN id_produto SET DEFAULT nextval('public.produtos_id_produto_seq'::regclass);
 B   ALTER TABLE public.produtos ALTER COLUMN id_produto DROP DEFAULT;
       public          postgres    false    241    240            \           2604    42274    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    244    242                      0    42210    bairros 
   TABLE DATA           A   COPY public.bairros (id_bairro, nome, fk_id_cidades) FROM stdin;
    public          postgres    false    215   ��                 0    42215 	   categoria 
   TABLE DATA           3   COPY public.categoria (nome_categoria) FROM stdin;
    public          postgres    false    218                    0    42218    cidades 
   TABLE DATA           C   COPY public.cidades (id_cidades, nome, slug, fk_sigla) FROM stdin;
    public          postgres    false    219   ߆                 0    42222    cliente 
   TABLE DATA           ^   COPY public.cliente (id_cliente, nome, cpf, telefone, observacao, fk_id_endereco) FROM stdin;
    public          postgres    false    221   �                0    42229    compra 
   TABLE DATA           g   COPY public.compra (id_compra, preco, unidade, quantidade, fk_id_historico, fk_id_produto) FROM stdin;
    public          postgres    false    224                   0    42235    endereco 
   TABLE DATA           V   COPY public.endereco (id_endereco, numero, complemento, fk_id_logradouro) FROM stdin;
    public          postgres    false    228   3                0    42240    estados 
   TABLE DATA           .   COPY public.estados (nome, sigla) FROM stdin;
    public          postgres    false    231   P                0    42243 	   historico 
   TABLE DATA           {   COPY public.historico (id_historico, data, tempo, preco_total, fk_id_cliente, fk_id_usuario, metodo_pagamento) FROM stdin;
    public          postgres    false    232   h      #          0    42249    logradouros 
   TABLE DATA           `   COPY public.logradouros (id_logradouro, cep, nome, uf, fk_id_cidades, fk_id_bairro) FROM stdin;
    public          postgres    false    236   �      '          0    42255    produtos 
   TABLE DATA           n   COPY public.produtos (id_produto, nome, descricao, preco, unidade, quantidade, fk_nome_categoria) FROM stdin;
    public          postgres    false    240   �      )          0    42259    usuario 
   TABLE DATA           l   COPY public.usuario (id_usuario, cpf, nome, senha, telefone, admin, observacao, fk_id_endereco) FROM stdin;
    public          postgres    false    242   �      E           0    0    bairros_fk_id_cidades_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.bairros_fk_id_cidades_seq', 1, false);
          public          postgres    false    216            F           0    0    bairros_id_bairro_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bairros_id_bairro_seq', 1, false);
          public          postgres    false    217            G           0    0    cidades_id_cidades_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cidades_id_cidades_seq', 1, false);
          public          postgres    false    220            H           0    0    cliente_fk_id_endereco_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cliente_fk_id_endereco_seq', 1, false);
          public          postgres    false    222            I           0    0    cliente_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 1, false);
          public          postgres    false    223            J           0    0    compra_fk_id_historico_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.compra_fk_id_historico_seq', 1, false);
          public          postgres    false    225            K           0    0    compra_fk_id_produto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.compra_fk_id_produto_seq', 1, false);
          public          postgres    false    226            L           0    0    compra_id_compra_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.compra_id_compra_seq', 1, false);
          public          postgres    false    227            M           0    0    endereco_fk_id_logradouro_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.endereco_fk_id_logradouro_seq', 1, false);
          public          postgres    false    229            N           0    0    endereco_id_endereco_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.endereco_id_endereco_seq', 1, false);
          public          postgres    false    230            O           0    0    historico_fk_id_cliente_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.historico_fk_id_cliente_seq', 1, false);
          public          postgres    false    233            P           0    0    historico_fk_id_usuario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.historico_fk_id_usuario_seq', 1, false);
          public          postgres    false    234            Q           0    0    historico_id_historico_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.historico_id_historico_seq', 1, false);
          public          postgres    false    235            R           0    0    logradouros_fk_id_bairro_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.logradouros_fk_id_bairro_seq', 1, false);
          public          postgres    false    237            S           0    0    logradouros_fk_id_cidades_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.logradouros_fk_id_cidades_seq', 1, false);
          public          postgres    false    238            T           0    0    logradouros_id_logradouro_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.logradouros_id_logradouro_seq', 1, false);
          public          postgres    false    239            U           0    0    produtos_id_produto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.produtos_id_produto_seq', 1, false);
          public          postgres    false    241            V           0    0    usuario_fk_id_endereco_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.usuario_fk_id_endereco_seq', 1, false);
          public          postgres    false    243            W           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, true);
          public          postgres    false    244            ^           2606    42276    bairros bairros_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT bairros_pkey PRIMARY KEY (id_bairro);
 >   ALTER TABLE ONLY public.bairros DROP CONSTRAINT bairros_pkey;
       public            postgres    false    215            `           2606    42278    categoria categoria_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (nome_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    218            b           2606    42280    cidades cidades_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT cidades_pkey PRIMARY KEY (id_cidades);
 >   ALTER TABLE ONLY public.cidades DROP CONSTRAINT cidades_pkey;
       public            postgres    false    219            d           2606    42282    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    221            f           2606    42284    compra compra_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id_compra);
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_pkey;
       public            postgres    false    224            h           2606    42286    endereco endereco_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id_endereco);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public            postgres    false    228            j           2606    42288    estados estados_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (sigla);
 >   ALTER TABLE ONLY public.estados DROP CONSTRAINT estados_pkey;
       public            postgres    false    231            l           2606    42290    historico historico_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_pkey PRIMARY KEY (id_historico);
 B   ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_pkey;
       public            postgres    false    232            n           2606    42292    logradouros logradouros_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.logradouros
    ADD CONSTRAINT logradouros_pkey PRIMARY KEY (id_logradouro);
 F   ALTER TABLE ONLY public.logradouros DROP CONSTRAINT logradouros_pkey;
       public            postgres    false    236            p           2606    42294    produtos produtos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id_produto);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    240            r           2606    42296    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    242            s           2606    42297    bairros fk_bairros_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT fk_bairros_2 FOREIGN KEY (fk_id_cidades) REFERENCES public.cidades(id_cidades) ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.bairros DROP CONSTRAINT fk_bairros_2;
       public          postgres    false    219    215    4706            t           2606    42302    cidades fk_cidades_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT fk_cidades_2 FOREIGN KEY (fk_sigla) REFERENCES public.estados(sigla) ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.cidades DROP CONSTRAINT fk_cidades_2;
       public          postgres    false    231    219    4714            u           2606    42307    cliente fk_cliente_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_2 FOREIGN KEY (fk_id_endereco) REFERENCES public.endereco(id_endereco) ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente_2;
       public          postgres    false    221    228    4712            v           2606    42312    compra fk_compra_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_compra_2 FOREIGN KEY (fk_id_historico) REFERENCES public.historico(id_historico) ON DELETE RESTRICT;
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT fk_compra_2;
       public          postgres    false    224    232    4716            w           2606    42317    compra fk_compra_3    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_compra_3 FOREIGN KEY (fk_id_produto) REFERENCES public.produtos(id_produto) ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT fk_compra_3;
       public          postgres    false    240    224    4720            x           2606    42322    endereco fk_endereco_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fk_endereco_2 FOREIGN KEY (fk_id_logradouro) REFERENCES public.logradouros(id_logradouro) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT fk_endereco_2;
       public          postgres    false    228    236    4718            y           2606    42327    historico fk_historico_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT fk_historico_2 FOREIGN KEY (fk_id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.historico DROP CONSTRAINT fk_historico_2;
       public          postgres    false    4708    221    232            z           2606    42332    historico fk_historico_3    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT fk_historico_3 FOREIGN KEY (fk_id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.historico DROP CONSTRAINT fk_historico_3;
       public          postgres    false    232    4722    242            {           2606    42337    logradouros fk_logradouros_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.logradouros
    ADD CONSTRAINT fk_logradouros_2 FOREIGN KEY (fk_id_cidades) REFERENCES public.cidades(id_cidades) ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.logradouros DROP CONSTRAINT fk_logradouros_2;
       public          postgres    false    219    236    4706            |           2606    42342    logradouros fk_logradouros_3    FK CONSTRAINT     �   ALTER TABLE ONLY public.logradouros
    ADD CONSTRAINT fk_logradouros_3 FOREIGN KEY (fk_id_bairro) REFERENCES public.bairros(id_bairro) ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.logradouros DROP CONSTRAINT fk_logradouros_3;
       public          postgres    false    236    215    4702            }           2606    42347    produtos fk_produtos_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT fk_produtos_2 FOREIGN KEY (fk_nome_categoria) REFERENCES public.categoria(nome_categoria) ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT fk_produtos_2;
       public          postgres    false    4704    218    240            ~           2606    42352    usuario fk_usuario_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_2 FOREIGN KEY (fk_id_endereco) REFERENCES public.endereco(id_endereco) ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_usuario_2;
       public          postgres    false    4712    228    242                  x������ � �            x������ � �            x���˖�F�-�E6�� ���,[*�ZU*Y���� ���$A�Dno�N�6�G�T��k��O������\+� H�j(���Ǌ�1c�.ܻsY��u����W_E�r���_Nʓ{��W�2���������O�"�R������o�j���_��Cw�N���_}���}(���Z�?������o���b���s�u��G��{����U��}��J�+q=������y��7�<��}x�U*?ݽ��{��U�0���l��UKW�M����*-�{�=��3���w_e��½n+����C��s��d+ɟ�}���2�3��t*�s��i(L�{uh׍+��ǿ~�gY�ޭ�}V�^���_�9Z�PVҨR�W,*�<v���?]s�����W�<������	�Q酔�/.���
b����ݷ�Ui����)]�?��(u�C�/�ޗ��X7��'�8�����t��Gi����Wz)E�{_��z{��q%� �4���TX�7u�(C�^�P���������{��%e���{,��[�Es��=�ۻ���������(�܇��/U�n������tƐږ�����R	�.��v}l6]}�{�}�O��?�J~F���'�j�~�?�%N^��l���Z��v�q/�ߜ��@s�i��਎�o��}�GK�C�?�w�Sy'o��S���(����N���'�])ҝ�JS������m״��f��`�����qs�>K���:��_t���e�j��w[{�g�l!}���r{���v�;n��*��!��2"w�f_��^\��K�Z:��c�W�ҶO�݋d���P����K�-ct��٩��"���Z���Z�U�k�
%�ǻ��]�}���=�(_���}s�_���.�;Li�����'}מ^�j`
�V.Mx�5,�Sr�u)��A������}���AI�'o��(S�(]�R��(��Y�p#��Q�UՎn�L8��+���v#�_�GǇ?Ze��D��>=���/��Y��,j��Bԏ��FG���_���x�"������D&y�S���޶;�_��i��'�H�ߺc�UZ��Պ�f2�W�~O�w>�l��K�k���^���uӴ6��"Ư��m)n���������Z��RF�~��Ϗ�gP|ے�[�P��w5~�۶��ZJ��h�Rɻ7��ƽ,Y��ԑug���f���FW���ŏϿ����K�BT��JPu!J� �w3l'��1��w��9Ȳ5��h�ImY60)�C�n�S0�Z�v���?�R)nIe^�����������%+���P��M��^{*�ܷ��[��j[nZA#��pGi"ԕ�f[��F;���
%9���y�ı+��ҧXzGo�d��[
P��}����������B�
Q?��}��m�v��}��e�J�ٛ#�/�P�֭1���l�g)y���n�����V?�J�/sp���^<y���F�Y2/���~�L�M��d�����ܿ�LTY�q�a�Df�^���7��Gy̙��G{jA���D��vl�3g��_��嵒ϵvC��2щ�`"�����F/�B���W�&��C#S��?$��o�����9A^2_� ��@fL)bޔ-���˽-����Fo�����=�˻O�M�m2��S�w9��3���w�X���d�KѬ�E��_�� �V:x-�ut�.(�ܕ;L��_8��:2�e��� ��KT1��Eo,L��<�y2�-#ࠟ��rnm��^߽�$�
~I?$7,�09��7��U�'����}@�(��
�z�Oby�~�e{*w�d�P6n�e�AG�J�kHVt�
����Tn���V?�s8:0T��L�����6�d����f�p����?�t��?w���r�݋��>��*2���z�&���9���.��jz��q��S��p'��,��'�,�򹬁2h�s�ߔ���(����ikB<�B	 �l:�ޝqQ*�f�}B�ؽ�_��Bh���@B�%��`�yMĖ_�~��_/�P����<�A�O�N�g���[u���D�|�U˖ؙ�Uscg�/Q&s�|����ٮ�0��ZG���a����*����+))�e8��`Ih�x��C���_��8m��߽����`�����`}��Kx'�&2�7����eo/������B��W�n'+���&)��,O7[�0��&���T�����s���6]9@��)Z��zVJy��m�n���`~Nj��>��E��w�I���T�!�u���(q-짢��8���`��j��yu��j�6���v���v!A������2�G��$�w���X����ar�h<<�y�>����ǉ�!Jf�x�橌b�]�RFk�?�f^�K���P���?�'Fs�C��x����G�QR;�UW)��PE!}T4�Qh%��v�6���?���!�\�p_'�O��Q��p� �A�8,��6�h�E�N�����k�K����?�v:wۛ�V���Un6r������'��Ճnl�}��!�Ps���a�"��+V,��J�&�
wa��������;5A*�,?[Ƥ�y�Kq.�,~����9��d��Q`W,��>\��t9V����o��T8�s�ؠ
l^8���XO~�^��m��@f�eKk5->����z_�m�2�b���^;ZdƄ�����nj�v��m��D���:$�CɅH�X���T��xC>�O)�6�h�y��� ��� ����^c�қ����72\DҐ�O���$�����L��*q���K��lK?�� �ۛ	{���N�����da
#�\]�� �4K����I@Ȩ���iU��N]U�N�����b��4������9w�`6o��p�'/�-�7�HJO����{/�nD���/�u�l_+�C���Ff�7�l�>	6�g�N���D���?�>�(#T6
^�,uc���u<4����D�Zmn%�3n�� �fw��a#�x�>�`�4��&�+��()�w�t��/������q�C,�D�-��.�Q��������b�E��;�(�9s,�M�*�ޕuw*ps[~��W���/l*z�U�"KH����O���]4J3��7��t���V�?��Q�O��L�7�����y�b�U�lBU<ZR�-t���3���cF���i�ȅ75"D���.�^6���er��/v�%��lQ�H#4O5,G�ڸ�&���kŏ��y�:���Y��R4}���t��nm�j��	X1wW,�} �
��� ������:7G�R&����f�h�����q�p�*Z��ޗ@D[����K箔m
��{��/�]�EKl���� �V{\�8�g�^G\0�K�_o���]�HMޛ^"�,��[���2��}���Z�@��
#���7;�Cati��E`&�[}�/&Z �Tʏ)�aJyO<uw]���^W��Q��~���;�S���.�	amgl�c�P�˄�^�PLVH��|�r�/�����x��G���g�Ԁf�ڒ�<w�d%8t�(,'��j䥓�/ds����S����� ���7���,J?�u��$���Xe�.M�%��{�f��#i��7GP��o��s�m�=����ϳ�}f�t�bN]Q2F0��Z��ܻ�FP@h@�OL����~�ݸ�\��<���%)�����(Ը�5`}���D;�-�|>�r�|��6��6q�K�Ȧ0�W�řG��{��_SS߶J��Y�Z�^̹,kN6�e9��O�;"�B�M��ED^��#��'�#��Z5�[��.��˖�v�?�fd�yw(���gHc"V^�֨�V�֨I��]Te�+ˉ�j1/��}�4�l�:�@�\� �f�¨\3��QD���E~�rpB���-����gj��e���j��bZ��������I�D��ؕ���e��P?�w�F'�GR�q����^��I,����i-�Y}������F�g��m���rGs��;u�+ou#,���]s翨�9vM�Xް����������%S��@`Z/�!ڏ1s���{�^d1q7�����b����vz    ��/��$�/ݮl���^��e��K���
��6K�@�CE�o&��t����u`|F�Z�4��N6_4ༀ�b/8����RD;�������N��/��-�{D�o�J�!5B	媬�i1���
0�S$���ձ�~�(E�d+MQ��b�jsl�z��`WT��R��*��8*J�*O^5�����	�^� ��)w+h�O�=�������{m���B�AS��d!\��a�`p����;�&�R�(����cAh@EZ.��3Ek>0)dӼ.ሩpQ�+$����g��C�S��2NW�L�s}ҝ��,��R�l�B��G�5g��v5Q�~�G��D�m�/��$�`��T
�˧����}m�
�W��5f�VOd�ӝ������Խ��hyw.�V�0�`��Y3����7���C�ۍ3J��_r��l��ҵ��'�J���+�}�(�\����εY�������9r#�Kg����2���c�k�w�۽h��Y�J�g��U#myz�ed��+�Nw5��.\?��xn�����Ͽ�\���R�Uw���D��kİLz�?b���Դ���}��}}x���z�3#E���F��_��]e����Ź��wL�]�5����V�}�+
�����_��;Җ�|����\�-��%c�;��X�M�wET:݉
���� I����xc�XUz�'m0��z_L3�.q�2�}*i-�5MPf�dߚ����Җ^�<E$B�#��4CL���+]��K�؋��f�vϖ�������
�Yv�
Dsl�@�K��w�f�� ��S�[��/Պ�a�Ҳr�M�B-B�����@�C_p�_k�};�X�E0�?�h��ˈÎ-�������us>�t�3w�hSe��h��2v;=�~l�uodV�Uf���L�V�m�N��"���ͷe�dA/�X�n��tÌ���KѬ�@!�fh1l��IKe�^!�_���ԏVg��8����H߼�� k|���q�jA�O!�߾���/KI3	�������xb�A��)�خP���%<t7 a�w2e�=��˭���/w@� �UcIL�_R&u�H+ǮǑn�Ľo����کl��Խ���N����
�W�2�#�6��?Z$]������[@:�	����Q�`AA}�S'K&U�^������^QM�g��&oWD�S�/Up�X�p��ǀ���Y�sף���W$.�t��)̲2�a���*2 7����2j;� �0G�%0s��XQ$��T������ZU�h1�c����%�y�B�����p4��9�ZJ�yh`�:�&�� ,2���i���4 ���� CP����y�k�6S%6i�x���j1%�0���3�����2���Qvnv�^M�������1��n9K��%
����j�e!�����X�S���*���MqU</ܷ�'��Z�@!�	J��H��.�I����#��v��-h���ۨ*�bfU�p�] ݗ�jUngW!o%=�Rt�a�>Eg���k�p��-� 1R��Z����{wh~�dl�/�#)D#`�Q�b.[�Mw:���&�]�ZA�Ѭ0�Y�"�}ۻS�����,�m��P�6�Ԣo�X���1����	����K��e ¡��PB�HD�I�1 �3��Ta�.�~�k��Z/���6 �ޱ6 ��q+ M�GH��4'����:͘NV��J/@����f8�P���_��벇�򜧒֍�V4r_@D1�+����/�*`��$c-�C͑��F���/6_%U�/�\��w����ҽ:t�A=t�;E�=��5��+�[��D;J�G���i'��m��������ԕ��tzĖv�5O&�=�ד�V�Q�<���GA�i �����G�#�J��� ����Z��h1��PA�5a�:������Wf����?d�+�@� g���J�P���@4y<X�"�����|G��6��e}��:�CL���s�7dH��ծ�,�ܫ�|ٹ�.Uu���ޝʖ~]�;���A�fy��J���8���~G���>��Ry�@�h�@
���"z_�؅�~|e� 0��r��bC���۔�ϲ���,�Dt�@o\^S�7O���\~�H�l�Z�w�Ei~.7L��Ei�T�������٘(|B6W�`��Dw�AG���׸h;��d���/����ᘁ(sì���ldY��L4���on4�2�w�M8��yt7���UhGOr.}��+��lϖ.pj�wh�J�ޖ�S{5�JF?�pә�ν�˩�-�R��8��"�A�t����Аq�=�W2��0_��E��m�����(�|+0[�_���p��`�^�����6�)�R��~�LB���&��K��S�ڔ�֌!W��M^�F�1�u���ݷ|߶��{/��ܳ�]Â��"ĺks�=�zÃ/g
�N{����_z=`��P+��O�n�*Bٜe��"�-��vpZ��������.�4w�����d�*��q��{o�o��_ɣ2f1����Tk8(ﾯ˭&1���S�
g[)� �� E��whU���p��3����R:�)��QL\�~6���6�xG1���+�/ő{#�������Լ�u�K�.|�����3�G��pڌ ��v�0k�[��e-���[!�d�V�>�'5���k�6�4ר���}�Qd�hy����EK�"�y���n�K^�3�X��5��0������JhER��!�0�e�Zx��av!�R=��Ajr��V4��J���4'Z4۰ݍ$�5B��4��c��A�1X�`T�cܥm��}��L�#��&|��`c���/�FY��N�ƴ"�兆���G�f(�oJ�����G�nn'%ff���Fd����o 0O%CC�Mi�	w����g��e]�#�7�y6 �X��zK!`�� �(��*�R��,��K�wV�gDsx��4c���oQ�Tw�������c�3��P1Гr4%�D�I⮌�C��}�U�R�x���d^���<2[�@k&�U���:�޴DI��{̋��S�9/_�pJP.�+rD�R�7e��Hאe�+��K�^���% �(t�?`A�^:t�4�.(�^J�N��	�$�����ӂ��J��*aL��L:�(��_����<r�@�1��p�H M��_�@����:����nH�]@�qM`f�\/�f@ܑȥ����g�֡�xE�5��x�����W��u�g5y���٣I����<�0���X]�SwH{��{���S������Rt��
�y��>��͍��7D�nU��	�u�k�-nT�V�m��
�n?<��`N`-��kԧj"T��K4�+K�S��kUp�b�h_�Q���@Ջ��`���7nM��K��U}�T�_�(W"�B�k+O��l���Kr7 �k'(\GV�;.)�hk��_�D�A��x�Hg��b�$Y������2����$�T��υe��,�k�����`Wk����4R?�4Q'�U�)�]�s��@ �=ɠX��y�b�)C���ݪAg��}���7��u/��cq�$�ُ�)g�.=�~}�����l6��ij�Y�y��]��}�J��PiFJ���$�\vdOL{� >E_,�����\qieQ�hG4�~b����X?L��\�6 �lҠ�`B�O�oJg�e4���¾Y��O�2�Y�P�B�5��;?�ҥ%�(a�{�|F�Rvi��_=ɒ��FhXq��J�E@�����!��:�J��ݷ��ԩ����j�p��U�>& 06b��vG�	l��1��қ������no��c�tV�V�,�����z+(�?������r����H���/��K3ڿw|3؅h	Q�� ������.�<�ڴd��hodFtg�I�-����rf���z� P������j0�ӯ$X�H�^[$�ݫ-B[�z�d���"Hg%��z���l�P��5�q����cq;���ne�k�؁N�%+k9���!+��;�!�[���dճfl����nB�/�    ���2#d�mhm)���,ы�C���)���(M�rH��Ђ�rY����ưe	��G� �-�<���`��ߪx#��s���eYyYX���1���cB2e�Û?�'8�#S�<u�����ր�>v2vZN
��JEZ{�u��U�ӷG�925���'��d�D	�J��$�P
6.r#��K�}�X#~���cK�'��`��"�<��a��7/1�4<g�z�%$���c�C&	��g�p'ϝy�|%&�u�:*����I�'蝅L�U?�wP�U��[JP���x�d��	��(�JJ���Bg������,X]v8��4�~f���_;�2��x������
��P�RdM�xq��X��E6�5�tb�U�Td�ӱ���mhR�9�"�����Z��hfo&k����G�;򻮿b�l�:�6zL�$2��UQ�|߯;G�����g�AXD}=� ,a��Oo�ܧ��Fb�8ʑ�&:y!ʰ;���A�Do^P��m�i���b�� ٥B�(Y���*(�$�\oKz��+-HA4�A���R�Jr&�&l����� c$SGI���=��2��v{f���豗����}B,�ΗȌ�:hWe�t
f:Ki��"T�V�{���
yue{�u���Fe�0-��i|_6��[��,U"h�$�9q�b��k^ 1����y����߶X���1q��mR&�6$?��;�G^�#�R�W.%i������^�ob�4RT�=���@[�����	�� "��&Ѫ�DȔ\^Z?���"�������
챳1�����X}�;P�ې�$k�*��`A��!_A��%vzҢk�)]x
�����8���
�Y��Ej4������M�g�!�2d��ov�)�������+],���j�ea2c�7�i�e�{�����@/�o����j4~���5-}�@ۦj�j0.�Ho��*�B��Kg+	~r�a���FS�Ch�v;hi�|�c/���;
�����p���4f���������5�A�o8�r��(����활e�ao���>r�|��NQ�1��a��5��M8@�J��P]�j�?0Ӎ����d�y��"o�Q_ ~w=��c� "l�`�4^r�b8��_� w-7��P�^vDL�Ƅ�U{����8��W�m�.���/XaWC��-�_�m���r=�Aӄ46�a�Z��ze���,Z�����;�G�b�S����H��-$]2}�
�JK�U�.Y�t�n:��~`��\9����6�����B�� ����n����^��~�ڜ���}�m�\�c� 彳�G�탽u�Ư��6��2\�9��b7�@�*�I��5n���+�zP�H[2V��U���!��Ǚ��'��l�S�ԀvR�ן���	vj_�6ց�'ۖ� m�y֞��_��ݷZA����c��<�0�j���
E�:�}f��t8`Y#�=��.�Pы�V7�#b,T�p�I����[3%h�L*h_�	�R���伍&�nMe�K�L��m�i k^�B:2}��@�G�����R;s�����t$�Vr�d!搞�p�i��P������K^�LX2jqM�q�͖G2P@�K+F�	��N��S}��xO0Ov����Y���2=��ڔgd�4�n�|֦���ݥk�]sH�K�Yl�ɮ&�xI��A�e� �41�,��ݸ�ޝ,t���>ԝv�R֣n2J�}�/٬Q��N+
0E���ӂ�C-�^6[�H+�����u��9�Mϸr^#Gg���LQ�37~�I�֪��T}����\���`u����sU>i��ײK W� xJ��N�Џ�|��Kܣ�j�6Ja�ie����4\�И�>����.�|Թ��jK�PͶdD;�JFR�\m����8� �!��4��/�k�@G@���~D��c�X�s9-�XiT5�Z�b���!`�#:X�����UmKQhG�^M���=��Ͽ7Td��iɰ?��;�T��ءif��
 P�k�\�wǒ�땾��4G��8� �f��W��2(�U]y�w�JSHo*<�LC��O��_�L�j�������36�|�T���/�H�>�\�d��R0�ƢU����jk�~���l�\2���CBlp�	M6Gp}��F�l�u;�8��^�h���1�C��1��Y5Z����f,���un{�͗��l�fm$�#�sf�֢E6������%����R�Њ2���YO��&-zJ�@褕4�SW�|}E%I�yO�K՗��:�})����M�~$f�Y-Ew!����5�A_1^�� {b�ޜ�S����:�3��?�ZJ޹�<@ �͖{���,��wp��J w�"��-l	#�O�eخI�j���W�� 
<v��%�@j~{�nd��`�}��"��^T���l!|��q�Q�1h���������{�wo��'����n�x��f��0����c��_�(����?~�/dw�@���_���c
fy5T�Q�Z���k�$[���-� ��9p�3b޵dzv�?��`�l�{<�n����ή��lQO0�����<��"r@�0�&��ől����D� ��x@2ӣ���EԀ�I8�8q�ȾnM��`+��$���lN����p�K�q�Αo��W,���_)������K��L�������g������P�P���P�JX5a�v�@Cۀ5���F�D�N�!�h�e��~F3"�ʾf�( :��������ϔ���w�C��GA2��'+��<!{�����Re�ΊfA|��h��b*_��f����W{�g^�TTCeJ�g����G���G�_��B���hO�˽��f��h�X�,�Ռ0��k�~e0�dd���<q�^� ��[�[Fkln�,]���[�wRz�n�47���M���BsF٘�tg�'A�N���F�>&!��)$GԡS����X��$r4V�O��e+̡	��4���g+��8!�٠���>�����X�,�}�Lbm���	�4�fܑ��z}�={S"Y���QpE�g����6E��)��u��Lc��>ny��Sf�#��ӡx��(yP�:A^�P�1��,$��l֟�|�Z5�,ا=�(��g�l���Q:6o�Xk�,і�c�.oڐ_n��,K@#HR��^�d��v��ۺ��B��'���)�+o��0֢��BQq�$�"q#f^��S�e����K�
\tS���I����{+�O���
��� �����_��s������|�r>$�CO�0�O�G�g-#g˼�%�7�ӎv̕��e��&�Z]Tz�(��������\Zuڀ5������ �-Y,�� A�K���XW�d&�u(�j�5�ʧ�ta��:G���=ƩT�	aS �l+{�Vc)�Ԥ��Gq4�RFF�3R֞���;M��{�ݴ��E��t�%�%����6+�L�ku�y�kpU��u�� f�US�N]%��إ6BN[}l��H.�@���̣��H&_�W�2�?E��E��7`�@J�� ��0n�(�!p�G� �}SA��WI��UK��< 5�+l��$�ߪ�/q2���K՟������o�k����é?���`-\{7CVpzX���M(��-�uf3z��Кq ��¦lCl�ɦ��]�r�,	P�� T\Pؓ#�ѯ�1$���՞d?�GE�7V�p_��UR׃	��{L�W���z)�5��!+rF�X�x��A*�#<U(�'b�}��K�}Ά�T\��}��kIG��=�ҋ��&{�a-�8_I���� L��C}g-�<j�jd��m��s�}�Y5"��(a�������:�Ө��C�"��̟F%��d��A7�>���d�-ayLԚ����*����6�/8L0���hߎ�p�÷��]�¦�
fG�P�\&7�em�%=�,��;��'4kFp���lW��ea�=?£�e���n����^�����c`� /�\t��    0�d?\�0��������� ¨���/�L�A7���M�&?HI�0�V����YT�g���3�Yr����SN��BXL�>�m7!1$q@�^�wDvlįn��^�|X$?�c���^:@��a��;r~��R��1>r��T�'?�VՈl'վ�|2�}��'�>���L�����N�Y��r��7�q�$����O��pI�c����p���\`ӎ�I��{�q��X.�����Q/zk�מ�~ժ�흮�x��E�A��w�$�C��mV�f�U���W�*���[�iOP8���Q�q��V���	���x�(u��Dz�"Z���n��Kg��U̓�ya��:��@��e�t��W q'�q���Q�e�����XV 2?veg_T�H��4/kE�b�<I<K0׺Ii�]�.a�A`B�k��X�?9�$r��75ST��U�G�A���]�KX&�"U_�4;�������e�ϕ�%�|�$q}J�%�.���S�&���$s;641�(��DZ�PtRb��j!Rr�v+��$ ���t����2��C5q*�L�B����g����RdS#b�����E�i�Űd��"�t	2UX�5N��x�5n��4���RJo������Y[���?�����2�	�/��}�gW�I�c^��g�ם�Vɘ�� Z+�_�����w+�d���z�{oJj�Xd>s��nϵ�\=R�&U	�f81�0��d�?P���vŢ����<"7{o�Q���M������=ԯ�9���<H^f��J�>�_���=Ĕ�_�&f�C���M���w�*�#����Y]2`��Jx��z�bI.>��O�Û\���yZ��Id�q�����/2"v"B���g�rrh%��7��r7�%W�A̲���0�V�{F���=×������ɰ*��Y�݉ŪrH;�1�k���L7˥?��O�1��vJ�!�@g�3��L!MO)b�8���#�KK�~�
rvZt�,e[2a��e>w��ư��]��_��j�X��:��\)�Dv�O�a��)�ZQDt��+��!�,���/dYMZ-q�kÍ|˜G���|�_@���1p�3��f�(0�>Ȣ&�f��3��2�lx�Z%M~}���_�OQ����2����m�]��g �����X��4�H�i��R�h�]"�$�).B��e��a2>�ώT�Sd$���e��8�H��	�s�p5f.��|֧�-���cׇ<*ƣ	�l��r��4=��()��_,=�J㝇�UQ�#$R�z�*-��,V����
lŐ�����%ĜD..�|��6�T�����E�+X%G����mF �l�t��n�9���&T��@��-���$����	k�%��M�3�9�6�ʨ) ?;��u"�|Πorf�9-6���(#�/��L�Ș�$�Mi=�V�>���d�ǚ#�H�.{�1?~���4��8�DSVϿ_K����2�"'����ի��ܭ���y�p3d�8�b�(����?��m����+)�R�O��c�<�!q���W)�m��Lᾆ��oν=���ԩ���}l!�}�Q��x=t�6&�5&�� ~$j�!g$,�j�-����]�2w� :�����	Ԋ\B���4?2V�͠�Bq�{,OW�/�W��h�o���Z(C�1�Izv-$G6Mt�h,1��d����#D�/��A_*�7�쵳��x�EG�
����V�������F�i"a�a$:AF3eQ�A�!L������P�����D�bh����^<*&ְ�N���	'׃�D�S�w�n#�����L=�Ø����ް��*|�c��k�u�|�1��)�^Ҋ尌L�Kݕ�Ҝ'� t����%�yԘ�" ��|p�w�2��գ�����t�V,�u���3 ��8r=��H�8,�	�_*+�Z��*�l�Hk�ٯ�:��B�[�s**oች�1�c*�nR��N#O��������)�Q�.����9y���i�Ǯu�_��p̜�o���L8�59�T4�sH��5K�v��}b��"��c&�j�da�0�ݪ�oj�+%|��h�a�b�܈�X�yԆ�r#�<�l�h�*�/sb0�4���P��R'��_� wJ��z�<%Q�DϺ�P�m噶����n`��3�_���4�la�{��iD��g��=�Hϴ��1��h�Q��\��21��%^���*f�Hk�~�f34��BR�X�����;�K��j,� ���j���H^��W4^8�ȗ�����\�!���C"�\U��q5�u���#q�\�1W�� �ȗ1�z����� b�8�p�D����}�z��Z�~�-��\v��]Zrm����B�I���qRn��8I _�C�'\Tܑ<`���������[�b{I��҂wA��$�1'���J�lMW�K�S4��*rpb�lr��,�2�M�,F�y�98G��b ���ٱ���W���)�icv�+�]
ȰGm���\su��&Z���S}Գ-��;ʈGH�^]�c��c[1�O�^��נG��K���LS&�U���/�F[�}@�g�pW�(��Mn���A��p�k�!L�y)*��)�q2��?�r �:��8�r��߶��l[
%���⒔��W))�"s@?�`����N˗�g�p#މ�(���I??�pe!��ب�̀�>��+Z��ޏ�b>WjG&�
a�	�?F��c����'[C��q5�I'���".&�D��:���3��v	�	��aŜ�R��#�IB�b�y���/�	�&:�1ŜV;d�0�W��X�|��]_��(��:7E�����n�¡�� �VGr����y��v��4G�`N�%�0�M�C���览�.4�h�mD@;f +"�1/1���X�0K7�eS�a�=��ް"B !zLh�P6�(x�����i<XV-��4*`oh8Tm �(s�`*P��D����>cq��WS���������ʄ�H�"ʝQY������Iz,�~ݺFh��`��*v�ޢXn
9-��E�@�����[Q,?ŀ�F� ��rj\��m�tƊE@���D"Z@�}4+*�]k�x eM/�����$�(K�#̳�l=yD�e!sD�ȍ?������Vu@Q�[]B-�d�t�(�.+`��NMY�0K�YOV������ʋ'���!�|�'��!�g@婅L�`�^@�e	z!�W��cy:�zT_�n�pv����m��}.�(�#W�1Ec��C��L,��,�*�oO��ߎ�~�=�%[E��Q�F�Z����".�ڴ�@��K5=A6��d>:�2<�R�#��+\�YQ$7�y�q~g����\��(H�޺jp���+k�$��JZ�L��5
/�i���6�W������!w�Щ���"ᶒQ��qa�nNq��c�`"��K����^ER���9/�TVG��p�#r��ő��nwe}�I�Q���SY�H-�ta8������pzO�Ң��� �(4�C���6^���R���W-���5��Ae�R��ix���X�Jiz��v��RJɩ{�m��*|�ޢH��4;���08�G�����~`��N����6��ָ�����	��bQ�z�/7"�*2���l��z�U{���{�"C��zz�L�+;�S� �<x%��J��\HM�%Ҋ-�y��uE������X�>��೾TJ��%����" �(p���� Tz���ӽb����떱�Ш��/��Z��lL�ը���X&�GM���<͂6d�9��2�&ޫ~�9՜�c��\2�w��9]㪐;Q�TŒ�ʋ0�!�dl����`�5�]y.�RϚBu�ٙ
$��	�Z|�h�.Z�<Gi���rD֍�M��A[�����e��"o ѓ
�`
/�J�.�h۵'soI&Q�,rƒ�-A䌜��YE�QMϿ���F���AN��׀S� wGsx��U�!���1p�3R�܍�X?`���L��^�Љu�Cbī    U��~_��s��R#!���<lRC⊐`�oX�E�Ъ���_[J
f�EQ���y7XE�~�C����������u0Q�aQK��#�O۲�{�5Ԁ�h���6ZVBQ�)|~�sAm�&b��\�[鏌�bD[���s=u����#��YH�%��8F��=����22|IUx�%����8/� v׹,�m�
�+��5�����r֠TFT\r�,U2vS��A��@+R?Ӹ���"]j �����ϵ?��|_"��ȁk\��1�z�͔��;f�����+�#��sW�$R�ek�\�lm�qf��]��+�m����F�J��n���Un�_yT�{V����
ː�Bj����]%�����D��Q^b����6�^�P�+сېo��q2nI�+�z�c#��]��f�]�p��hJX�q����6���i�3��"JA��!բ��W{�#`�F����0�������x���!`89��J���n��`8o��r7�� ?H��M�� �du7
/� �l��K���ځ:cÏg��!+�F>��� 
G�H�n0w���;����LݐY*�"\{�Ĉ�g�3a%��y�i���{QtI2b���e>�nČ!�'. �pB)O{���0���(��Z�=��٘��L)C$Re]�P!����[.�ۊ�����T�����)5�X�iতRe�gv��1��m���,��`Ľ%w2�i�8����_P{$U�
PTHAꦤ���̜�p!���,牍J-�NЈ�A[��SHHi��s"�Q���~���#��p��iN�Zqe�}����&�#E���1�dR#v	w�!����D�bZ/yd�Lh��VKnHe2vjQ�ũ�h�/�i�s`$i��!D�d�.�߄RKcw�-�Pk�}�QF����m+!.y�i1��E�+�Z�Ԥ�)���C�d�r�����[�+T�Nط�2:�:o��Y����'�2���UA�SH�%n�]���J
���C��0Sf������q��ʫ�liA�i�Pn���ݖ< &�0��0"����0��̀�/1LX�/PKȣ"?��ƚ�K�D�S�#��D�D�%!%$�(ˀ݅�Y�� �Mɳ�.��Kb�*!e �byr�ȥ�����[b���"!��T_�0���v���e ������;�H��f8N�t�[M�TmvNXr�utK]#���M�5��h����g�I�y�IЖ�o��rGd��B��
ͱ}��Y�5�r��V.s �Y�Z#v_��t��)�ˤsT�KN
��b#_�U��V�|��%7�{��4�	AWe�)E�܃����\���iqb����}'� ܾ�� =��)��]�	ţ�fPT̝g�p!;���7���h(�d�Dg'�D̚S�[�D!w�n �pc�	)E����+��;��k1����R������[@i�J�t,�2H��`I0���J#Q�l�JmA�`�,���� }HԵS�l��
�γRz2
Fe��("ٖ;�W�)��v��ų:���<ۄH�t���ຏ���)of`P�AҜ�$D��)���;�S�ex$��OV����h5t���Z�S����.
w��B��X��ّ���J�rS<\��	#��eY2����٨�܎%�;�$�sg5*��͊"XFj\M���*���le��K�,+�D;Q�]�_�ۨy���fcv]��1p��cD���ޓ����,���lg��E��<����5Ti-��B��B��t���:���ε=�4a$Z���l�Ӓʅ�{:�O�Qꉮ��pT�����Ώ���O��N����55ݵLO��~k\\��D0[��Z��N��!Љ�z���n�Y!�	W{zG+�%��$.`����G.�'�`P>�1z^
��-s�.i���-,��Q4��ɜR 0�t��<uC�)�$Z2Z��לnBDҟnc��!&>��#ʑ4��^K�uJ��`�깴D������?�ퟰM`���]+5��pB��:c�p���37N}p��Rk9��Q�n��(�]�D1��|p��|�$�4*�26[ �!ZPjE������6w��f5C��le��~C����
X��F�	>��$L���az�7��鐝}�훐 J2���Uè�	9cۥlv��Jn��Y�0�R�r��f}����{�T�J�m%��B��g����s�8�'ۮ�L�b,�%݄hw;&ܘSB����gh��u*,�j��MV,y�"dZ�2d,+�����4RNHI�Mj>�,G¨��栆�NS%z^
�[)Q��_/��@D���Rjy�[�C'�%��"j�Ҹ��U��Q�&����sݖ��I�R�����ԍƧ�k0���>�Zj/|�����R�� ���*=���$Gy�<j��1��ؓU���'_������q��L�����F�[r�Y��p�n�Ndw{���݀tb�@!5r�N��A_VL���SZn���։ ���W����3w������d�S�-���g�!і&��7M���Ĕ�5��Da�l�$�b�S�e�@q�IbQHJ�z&
�4S�'\@9!��F#������(&J01�L���m*n�{�,�A�ݘDK�PM�F`������J���(��T�Q|��� �ᑷ�k4��l�{~�j=��ݩᗃ	'���.��hO����z ��o,a��Y�����zJ�繐[�Q`{�ٻNi!�eo-�kM.ne_���,bk�<��JW؞6ke�Yq��Ԃp����Wr=�	9�R��#�EF���:��y��x��)��9�u{�+̭1�Ńɧ,rS�?�؍SA!�"P�"؆��3YPPLR-v���WH1r�Ogo]�Wl��w�ܙ���9�Ϗ�+q;��'rg�LUY$w�c���h�X����M8(�<GX�N�?QR4�}�o=0i�h�oK3�ؗ.�s�����gKM�#�p����G$J���(��<�]�q�3��Q&�T��D��|"O�4k�]ɏ��)��mR\0R�$?�N����ex���d"ę�S��u�T�pĚG���E)�ż�k�;=-��bY4��*X�{����+���E���@�o����	��K���"����a���gޮ��b;:e�pcb
)N���z�	��/FY'ܘmB��j<0Ɖ�Ɉ�-jf\0�����[��E$+_���8m%2��18[DH}[Ӣ{���/�[��LM��=|������&D�pS��B��"v�d�*��TN����ͬ���b��7 ��W���b�wuvBL��G�����9�=YU%�e$���
F���D߻�ߢ��d =�"�URB(%���\�?���g[�F4Y�ίK2?��
9W*��2�+ģ���mLlT\kKIܭ:o��W��D�"��-�4!�\��7���nv����Ģ�lP���m��z�$�����{�|��ڕ��_hѰT�q�О��a��0u�[�޺F�%����MjvO�ܕ;���~���^�� �|�q��v�~�y�T*�_�G���C�_?�{_1aF��Ƅ5dv�b@!���E<�mWom9����O��X����[&�ޞ(�^�=qe���;�zOqS��=X�-�ڝ,3��r?��R�X��] �[�Aw����>vmU^Р�˷Z�Y����X�V��,�$v\�b�c��\��[��`�����M��\��=�2�wu���<�a��U_��K:k�TO�8Ҹ{�M}����cV����$�c%�A�2�đ=\��b����0�lO⎐�`�K�X��Eq��Uy⾑Aͤ�>�U˄�_k��H�X�)(��0wI����DX{y��c`����zU�v��*To��
�V�{���G�_Q��>�hVAҿK��}��-	�� a�k���[
A�F�C]��J8�����*kg=�_�G��$I���H X]�W�t��~�߹�i���br��)jпF��)�)����f"kݦ�Ҳ$@�z\�=���vjL�,    -����gti%�e�Ւ���Dj0`q1u���f7 ~��, �˭�~k���$V'`�Cw�4�����j�kMR�h)�6�A�J.��\29h� 
����S�A����`?P��jH�.�ި���[~|�t|��`�-��D�)��;d��ylskBٰ����J����<�0`7����3�{��4��0��7�P,B&1�b�%������_�/=|E'O7_nꝧ@��d<�ۍ�{�m���5�>�v�!w���a"$�a���~�说,¦�����	��Y�hvP��U�`v����e[� �)V7Ffy�,*d������m��Y%=0ۈ�lC\�@����c��i�8���J�l�B
R]��l[�m�=�U��v����"������~�z8zF���`������
#���*+�!c��-��6t�N��/[�L��ܽ�+|Z�6���+��GjHB5�l�x��ђ�_1�����4�O�Q˯�72�ʏ��̃å��ގ�'�,�iC�����,�	���"s�d��'���;�~�����zK������v���S�T����_�N���\��".�;��?��m0��H{a����_��1��1 ��Q%j�L��U�q>��-��Ƣ���@x��f���#���kz��c�`G:iO��n`Qa
�b,[��gv�j���L��Z�}�%N��5E4����%� u<׌.5F@�`�1D�礆�Y�8f��e-Pۘ`�1��ˁL����&�L�����Tx;��o=,�]O��;"���!Ck��6Z��oqa�G���~{}�㿵��y��B��E�����R��j'c���u��кġ�ݖ�h�ő��	�":��p,��0?�mã�]��3��cq�totrR/���u�Z��MGK�ة���W��a��U*�"�x�D�{�w�=܆W�O՝C ��Ӑ4�=���b�=���h��1�F3D��8+<�x!x���'��Qij�0� ��Uiª!V�Ȝ���_�Nr��%��`6BX+���_ŋ�����oJ���?1����f!����>��=�Z�]�b�{�<Y��1��$c�V�\��t����@-
��4lP��b#���>�~�{��T���EYz�E� p�q��q��:���1�0���^�WZ�L��X���}�t�I�>(��1(��t���}Ȝ>�kKm���.;(� X�q�oNM��|Ym����ょ��g�����J=I�$�S��5>Pɬ�!H���T�X&Q0��9�5/�5�����D�	J�s �\��'1�p����`��!S�$�������!�X> O�8�V��\=P��<�D1�W�&� �UA��D�G�� ����xD)��U·���ͫ�T��l��tCn�I�}bڛ����=���H'/�a�A���c3F;`��G�����'�� �{Ϥ-C�B��T�f~�dJ=��B�t!(��brƈ�:M���j(_j\M)�ኣ�����:,M�Vx��Q�����7�v2���;�-��B}5q�Ȇ�m�bT����nZN61��F;� ��2�>Xp�-1+���4<񌡢�N<c��Ge�� �l+�'(F ��K�2���z�=�`�:�ldӊ�E������/�r����-I���)9��*´����A_`/�yʘ�3�i-�����W�2�g��rv��28P����I9����p�ϱ���]���~6�fY��	������
D�u��M�3�w��~<#a� ���f�Hi����S�I9u�a�I����䴌�%�:y��SXR<���}BМ��|�vW�F�i��IHx֌Aӣ_��e�����_4�uIy�A@=b}T`U�vhR}�f�1�q?8�F�;-=����?qiV�<�PL�:UH��	�z��\��I��㦊#h��rx)V����v�#��_����N��:���b�i���$0�z�˦/ cp���F����U�����SfN�RO0�N�8G�C�ʑ)�2F��t�c�Kcl7�C�� C�<oU�`V�Ҫ#�� ��nE5�������F�����/��s>��aE'Y���x�䷪A���|�>78�. AMyA��ÿ�z�3r�Rj�Z�T�
摷����N��٠r}�|2���jƚ��f�@"Zyp���n�����M��]AT�Eʬp��F5��=��U����'s���� A��W�B�d>�U��RNq�Vŗ�(�{�^��|�`{.g�����@m�t+�C�ef�d��0J�|�
�^��F *�˒�P>a;�T������].J��I7j���&�d��[u�;79�iXP�gg��$<xHn�pN�y9�(����$��1E�@�����ead�JX�7��A5+iUZ���_��q�Z ��(f�Y8�i�g�zâ$J�hp& �T�u�]�ؙ9��YI6:1pt/�tf�S�e��Al�j�,tP�#�P��6�M�S����A�=�A$p���&��26��h��9�5�h&��F��9��-Is�i�	g�U'�����v ?�~8�@�!�I��?�0�|��ډ�\�H�����d��!��Ͽ��6��W�]7���,�؜�XhG�%�Ը�IqS�q�C�Ɲ
B@�,2���?�m��+D[m�w���]���������v�sӌ�R�S�q����F��x�ĳ�J`$#]�) Q��PT� ���ӻXy3_^�׫h�y�0%��j�G=5��t8Y-��O7T/h�Fk�n�'��6��6zJb-@z��m+1��Kg��¸g#x��	��V䊻VVtR%q�z@5xB8�ęrq�	�L)t7�R	�||<�G}=��"��B`��P�}�e�_�#C���R�1��dR[� �;E�S�:w�?*���{pl0����w�x͖ �ZkWU�=^�%���7 .IO,9��<2�L���+ �C�T��$IM���_d�=���z�Ciy���}������hq$���i�%%H��c*�ѕI2�ᜠ���� ���Tr=[l��ۘ��x�2�Lݣ�Lip�Y�ܟg6i�t��8�28?��>>2	�vk錊��=�=yO���D���	��uZ���q��,i�6�l��LO���jL �4's�~ɡ�ҲB����[�`���43`l���1iN&�LF��}�'}�ҝ�<+�tv�B�caY���`k|>d��9Yl��^�#�5|b6=Y�>�l"Q�㜏-��. M��BnK���_h	S�w����!x���?#���S��A��+׳���E�d m��e���dL�}��{p����[�%��s4'�,��Dj
9M�z��yJs/#� $���tJ�xfjU�J�OP�R���������������i��ɤZf	��%��z�=�8�	�X�����W{��T&��t�Slxc�;��{��bCN���fY`�jB^�1���&j���A��u�;�O$�'��C���&[������g5�+��kiU����u�4{=�{ȧ���J��L�n}�����w̹4�y6��f��9��F�>�c=�/U��Ǝ[m�Z��z��G��gO���^:ۙ��(D���{d�P�R0QD1�01�a��D���H��&,mn
���=_0!�6���KK���������.O�}�~?g5A8��v��Uy���V�������qI�9(�.��D���ʇG��IKG;����i�I?y�$�#)�!~c����ƧS��m���q>7x�t1<x���v꩚��k-��53��/
D
2�
̎���!�3�)�a�@:OD+ɰ`��G�!����m����;�8,
#���Yߤ�dJG�����ɷ=_��v��D�j5\jiN��A�b9��|Y�P;6E����,��cK�`��Ї�V1��vW�D��@i$�ѳ�*�h�a����B�i>[�1�
�����\�Ԁ�1<Ml�J���+PҳHJ$��Jpj    |y����pD��`�t����w2^��F�Mb����wE��V@v�%���&������n�:�C4ri�^��4��fH2�~�̈́�$��M���MG�= �S/��t�䐶 �`h~(�Y�+����=�*��M�J� P/�j�Cp��Y�T~
Q��=�aI��3zC��R��h�a+�X�\�����VYQ6+)*��l��4&��4���<R����?��WZ�v��44���þ���@���� թAf�Y=�����,�%Oo�h�ٹYu����oe��+R�i��6��.�40iL>W�#�Aor����\�6(�4�B>� �4C#�ƴ3ս��*ǉ���Ön�����q1�W�'���a��g3�q���L��D�#H�&�r��_���L��M�5)t���F%V;v3���4c��&	��<N�T6x��Pʙ�1HI�)�'f�e��=k�� P�di�ː6����.Or:���|���������:0�U�MqH:�G���Ñ��z�YOP����ѿ}iS�B@���#O���*��V��ϲMS3la�ن�n�B8�z�i2A"=la�z��N>|�����čI��}y��������g#+�{�L8	�MS�)A���@�"[�>�>Q�#$��	@p��
��c��|�ݍ!w�+�&;�;�*�{ �A.��JeS(���}vP��<�(5Il � 4�'Y>�J���$K����,s���J�	�GJ���"�m(��gԑO�����v�%E`��� �u�_�M�(�5�ϱc"���^���u��Ȗ=��i����c\f���{;��l�I��nuu:!��@��Du�J`B̠�jPv'�0�F�n�jR߰pL7\�ZP����e����1��xN(���\��Q2:�P���2̎��2R������=u��9P2A>8恵��0Ȁ��qfE�T5=En}�:>ƙl�[g&���?��Ē���ưm>�P�Q��^:� �<vod�w��1R�/�M R��Y����l�S_|�`����GRb��
mgf���(����Iafk��1F 5��b��@4��{�."}P���X�ߺ��Z��	dv"_��R�����H>�QN���O�
�w�:�ԡ��S,h����Rl�qbiZ�F�yD�L��xZjI��{��1�]�0@߁�"T� �+�"��;AA`�y4���To=��/�E���2�?��SoH=ĭ�8�/-
�����2�es����\�����?�JCO�0SQE=�ɔ,HZs�*�S� Hfa>F��I~���Q�͕����-G�R�(G5���b��ؘD^z��݀U$��ʼjAh�gRT��(���)��xD�y���9iz�4�"Ll�����(��mlRTYN9F2�,�X�or���q�$N!S��i��T&��T�>�B��D�`����qx%@;~�T"Y�����Oڟp�<��W�E�(���CF�j��=�b�,�\���.�1�H���`č8E2����T=}�Z2j�,g�&A��L�p�� ��ef���d�qW8��}dҭ L����"qҩ�/�"����	�CLy�Y:���J�"s���S0�-�.4,�sr��e2��Lx�o��3&��V��,D�ڭ�,F>���IʨI��&��>>l?L�`�,^�t���%#xn��dq�>5H��g��ydq�sPF�%�Sw��ݟ�l�	�qנM�ñ����SS� ���Y4�9Y�O��o���r��=܎�N����O�������d>2A�*�}��Q��`��5y��cܔ%��7��;Y����C��y�̵䈩�g��%�� b�1��:ȅ��Ed�Sj���#K�'"�sT6������[%�5��f��G���#�>�9-Ă#��%$3e;I>*�R��/��rO�NO�ϧ���,SF������R����aʨ��X�TEƳ�mdi�M��U�߯i������ƀ&E��^t^ fv��L���:N���=��1�Is�����*��x�����Ņ��m�a㱗�Y6w!��`>�2�q�O{5u�n�kvY��_�
��y��+��fqv�u9˒�L�Wk�8U��32%g6r�Q&hc��#����YT;�#�ﬕ$nG�|���"_,J܅�����ػ4�m5i���/jYZ0��Kɺ�ݒ_�%����D�PM4IԸ�����E�;«�g��v��&��<7 �;��� $�s�|2�ɲq���4ٳ���~����Mj&\�7�pے�L���ʎ,����J���#�2O��8�r��n|jC��A�H"
1�9W��5�ϻ�p��T��{q�8ۦWQl�T%�RȺ����|�����˪2Bta~����pN�w_"m��
'�J՘���̸,Jɲb���������O8(܂4�?´�y�q6eY����NY*4��A["�(C�
��O�d�>ʯ,��(o�	�*ʚ#���""�(k2�w���$_�^qܵhs\_ݢ����=�ꝰ^�n��a0�B�jR݆a�o$O�M��f�d��r(y�X�|�0r��&�90�fHn^�4�P�y��k��W���Ɩѐ#�0�BšA��ݰ�p�)�'�J�j����#�T�rf*DSE�3��
ԩ� �l���#�.hυ�1�/ �Hy� �D�3�!&�z��R�VD���:1-���~Y�U�VqM+��!���I�l�D���T��k^�h��w�+�q��FR�s�3l��� ��Z�ܵO=�<a+�N�$�ԑj]�H13��ZWf)�\���ֵqx�e�P�4`��֍y?<��x<K�qI��Ψ�;tyWI�P��C�NpÇ�ye�b��nR1۳#���QT�D��n9�@~��q��T�y
�\s�!p���A�k.;ԍS~�
�PqN�Yʥ�Rb���>om/�(m�B��/=�����^R%�Ϯ�Y&&ͪ8si�2 ��ሦM���X�z=e���
Q�)�B=���M�t4'޶l��Ob����H��j��zۤ��LY�����RX�,�?0�@�ETia���x��*�9��PRz(&�b7���9�*�ݰF��Q��S+�����6�1R���Qq��Qv��Ke��Qek�r�0l���\�hш:�K
G�%]�^�t�4�<� ��7D4�r��e�h1!ʪ���A�>���hc��*Sv�����|Z%`F�P!iȆ�}C� �o� ����B<'jH�5FM��X���6��m|��'��mc��;����4m���!U��M(��0_U���`�S�klDiU^0
(n7����n!�C�����w�( s��ڝN@�C�#d<Bިv��#�<�W���|��X��@�-m�OZqV��X��5?";�*N]D.LH��B���͡*P�}�a�[��A�NQd���C�Q�s��V�6�J��[�~��_ʄ�4XŜ�Gf(��Ԡ��3�¦����d4�1VUX�$�d�%Ţ�]H������H��z���<��f�$�.Q"�I��H�@0��*��
U	�t�c�q�K�#�թ.S�!] {�Qg<\�����1��JD�Cbo ���#�c�E�CE�d�b¼`��-T�y;�-XQ�&X�H���2�.���	����͏XB�q���aI)A����ߍ�v�Qh��n��#`}�8�Pᴺ�R��ܱy+ �Y-��W@kڝ,��B�k�)�BUeƧhƹ�U��F��Gq��Q�U%NyK+5�����|ߞ<{��:�i	ل�Ggj�pݮ,I����TR._8�?��ߦw� ��$��^���n�Eb�Zs�H���	fJ�Pթ���Y��tm�#��Rp���h��]�a+����A�aU��u��c¼FZ-�"�@*wXbT�8]IS����6,(*u�H��Iө�K��T��)�f��XI����;����d��F?���jNY���
C��A�]%/AT+M�z��C���h@W[n	�&5/���>���lG�	YO�hl7�'?�V0˜
�fFM    ��*Qp�D��VM1�2> /�2�"���j!���*HC������7"��+.�%}���5�{ٶ����R��-�
��~Rs�qq��olΨ�T������Pg�״�"�Z����ųm���X���Y��6�U���L�t(ֈB��v;!I�ׅq�CUg��"-����������AVt4���"��^W�4�L�Eu�%υɊc�,W�E$	��
�o<��c����x}J�jLu�o׹dpo���X'Xp�~��Eo=w�UwhYMI�jD�h��	���$�lT5	�lͤNr6=V�]ӃIe��"�f
�f�(SuRX�Tl �N�N�6�ק�4��F�N���b0כziXЛ�$`����C��U'�
�(�S��f�g��iP��w�E���<�5�aN�Im�@�Y�̟�D&�]�� ٥��.�;�q�N� sS����̀t�����&&�<zS�q��<�"���SW�A�Y�<�]v�U�x=qk��P#?�\o,�Cz�:�I��I��̎��QE=U�6�����	2յꌩ����R8`tذ}õ�#F�:cj���@�w7{^?e*i�j�Yj���y�,cu�}�_�p��A��5��:c'*���L�V+Ći$u��e6�39�U�șUg�m@vjQ�jT��5���kY���+d�Ԩ�����Yj��5����B��ם�|�ݪޗ�m�D���"�f�W�鄪��OIq�D�yF�Yck�uPY�<�9��۩VyzA�<�9
֎2�=��Q��y	=��n���� X�Mh j���$>G,g�v[�� h�N��uaA�c��$}�^�)#�O"�I�if]�aU�V��^۰\0D��=�n��2��v��pU+RI1�(�.2Ѩ�*�4lO��;��+,�'�<Ѷ��;�G�,�T5��p��$�"��$�DҖ�MӚ2���*ԓ��2�&���[�o��;��%�}���L�
TB
��yt����;g��W����Yz�h	ЊD�D]��hY�̂>�9c`E�VX��Wõ���\g�R5��FL0[����Wh+j�,OUa&�u	�D�=M��Y���n?ܷ;�PO�Cڪh�T�e5��
����0��.��iا1��$���/P%�]�bB��4�P7֮�*_Ь�ļ�h��?lE6Uȫ�k�te�p1����h\Uf^n��Un����+�U��-Cu.ߓ_�U�����!
`mE4�oH,�5d&u*��e��*#�K�ZMP�K�!�e�XU�S�����N	�z�,��0������h�L͘X���g�ý�_�wG�G-)酉�.�:5JpaBb�(��Q)��h-��zU��%��8g�f�K���6L�)���#Po�J����h�i>C�f8���ÓdY��@w�k��@M� Z�V���U�X!V�&Е���wLO{�g�B� KWʬ�I��P/��M�*|��Tj��R`��Џ�L/�ZUJ�EӖr��X�s�$��kUq"w�Z5d#AԸ�К�mD��ېoqjJ6%W���}�WmT6ѫa	���z7��׎���6oFқ����J��) \7M�0ĺ�&:T�^$�ʓ�ZS�`���d��E�:U�SqM�rT.}�w������@wCf�f���rkE�k5�B&T@��#�^o�$5̴|z�1��Ee�V� 9��w^��2�IBf�F�gZ��-���k�� �Քg�Y7ֺ�)[��5]+T�p���g�mX��Ԡ��'�y��ܢRg��,��\�y�	7M���s��?5N�l����w�i+�Œ��d�rE�i��(߅	Y.�$'s��j��c�@J;���Oà��I p��l�,�}��i�8EJO/�X�i�-�N
+��(Tz�d�c�	m�]�����ۍ_s�6N�1�*Ӥ�	�+̔��A�RO�ߗ���"�PQiR���Q�9I���Р��٤�.���MR���1�Ф0[�q�ζZo+�b@X�'M�i���Ҥ3%��̇�p׆�[�"ݚ�v���[MZ�Q��R�Ce���a&�C��l=g����Hei�Ą��f��ـ�qZ��M��T`��碊��&�mu0�i-�����&+�aHQJf�4U^����C�󐃫�*#_�#D�>'��aD.{�AzYO[S�{�ԏ>�h�ƼE��I�]ѽ���&�(����˹I������u⍊����g�M���5=�n�����eUp늱"��C��3W���s�N+7M����J��)=��� I���b�G�MU�&/���xQ��OT2�'u������QW�E��&�]E+�x? ϊF̥=m���;!�_;�ɟMnS�Yՙj=@�T�1��S�����B�z8���AÞ�
��|h'M�E�V�Q�\Q�gS䴃��:W^�ع�E�����do�8]���b�)�M��2��6��C���%�#E���c�eHl�$<�c�2���	>�8���<�R���$�T6	�tM�J��#�Brr�U���o�n���{+�ۄA�)�x�C�T;�LZ��A�,'�0T��`E�Q�N8|��p��h�e��I�`S6�%z*�59�(��|�v	��#W���C���7��+�jC��^g �Ϩd|� S�����q�Mܦ��'�o>���y��(����p7�WG4�G����M��q89�7P; h7R;*)2�l�0k�Z���j؅!�,���b�K�#�E�M՘���ArR�$%���s�m9��'G���oPl5(�1a�7fG�I#8����*����=�w�����9��wSN�N� �Z_�ͧ~�i�a�w�k[���)�3գfc��ΰ��@Z���&0�{Mdg7�}����W+uc�M����4�YƜ�3�D�H�@�MA[5�60ɥ�T�hR��Ǫ�W1.*�5��2�`�����ZU{�@�|hMa������n��'����4�}D!�Y�c�%��l�J6;�ղ-su��I��v( ���\�s����Dțk@B���p�+�DB�$]�ň� ����^DQr'�M�ʿ�q���:�� ��@mv<�zŅzg�ڌ'� i.�i}��0}Z�%Է0�6��L�J-��K/!J��V{�K
ݥ��
y(�E3PP� $�C{	)(\0j5�t���nº����WK$�]s����X�(Ԑ�EB>�.��Hw*
�$�o�����Y�v#���؟��N�f&H�0q*5���;UO��Dc��W��_1a\�\�嘏��T��~�F$� iL3AWT��H� 22]�q����5n����/��C�P�<��rWGI�*��M�̮��JQX�7Ҋ�*z�L&x�M��d�O�z��r�JD-�l�;Ԛ�o�T�6�Cw�J���GR�|B�7�Z�4�Y�	vwra�Àj{Y!F���[��nq�՞� �و���Ӹ{!|j.J�l�qg~�ϯ������K������`�=�N��0�֔-Fb�U��W�]���;kIg�ϊ���Zyo�zw���AY.�y�\&X�.z�F�l�b?��ya3#VJ�&��}o���NL�"�H���l��9���FlS��rЦ�'F�:-��4�.����E�$�E}�r5���8֋���ܨ�'���2��I�¾D�p���z;u2��8-��U��0�e�=�z_���vn��K�j�ԗ��v�
�	>Ǟ��Y}�7dQ���I���5��Մr��i�u�iO������>�;D0 8�_=yoO���@��x/�W��I�bG�ܡтs
tܾ$�pÁ��xE6�پ�+�巓�,OsꟘ��@��kS�^:|kJ�==u;�j�Lǽ�k*晨=�wu.���7gc.|;���ϯH������9�����3��N�V���Aڡ��t�`-�Y�0Mr����C�
�&G=�g�S�Cq�A/�D��Y��&�fa�����Q7����X�\�3 ;������r�bm'?�'�����u>'�$��&;��
�������!����P�\����M��pܶ�\��E���fw'����>q�>e[�Âjg���J#zA�U4%�x6)PI	�K�����.�Tbҥ��M4�t�^:^�C�c�[���͡_����>ӮӇn    ;����ru��ԋ�]/Vw�IoY\�a�M<K�����$R���k����Dg��*��w�o̧:�]nY�^e��d��g6	�+�b�[ v��M��$����z��&�Ε*�� ���*?�H{+�������Js>q֛�IT���R��Rq���Gm��\8�K2�zIp����qaڔՔ��3~γ�Q�]���,*i���Y�����)㋝=���,�l̛o�*��l1ɹ4��_P��o����/���`�"ngc#ֲ`���y4���|�R����K�]�sU��ĊL���#��4��I��6��4�5���&�sO��"��̚�%���
\b;�xCY�i�%�~pE�~!��	O�-+��^.l�ˇ/�n��qH�c-�^{�H���Z�j:�����U�Nv<]�f#|��ɪ�0��tB��1�l}蘌��5�>�����aB���a��N�0�T}=���̼�����XM������ ����;q��Z������Hēu����N�t,x�&|������Mn`z
��xwcj
��A�߉3��B�u�pm���r��:3�PH��H��_����7����Ѷ�2O-�K��|���5��+�w�{��4"ϖ�C�\�X"	?���lj�xdsh�{؇�&j��<ȷ��5LMc����\�'}�-U��~�f�j6V�~���p����)&(��U��u}��������&�ȉlO���oV���AZK8���Dj*3�)��\@y9|�� ����cf\''�g4��f����DPT0�q��q�t�<�E�3�i�I��L����N�|s�'k���^dTN�����$aP����sG�V��a��{y�Ӂ�:���p�4A	:z�@o���+Zo��CV,��@�z�����=&���&��K,5ɦ���d�X��u��[p=�A�t��$����\k���k}������A�_ht�8�i� \�J�/��a���׎��<nΟwh#K
�l����Ο}h��Y��]{w���M�
�s�E��,,�#΋�����be$	����HWG2��7�`#:{��d��h��'�uq�c��l���2:�M8ғ�X���ݑ��-;ت�R���Q?w')��囥r�^:�k$�ڄ���� ���a�?�:��0.a�����N3����C��|\��reX����oͣך}�tZ��v�=����=v�V}Y"�K�4�͵1k��w ����]L�� mH�&%В���U�r>��3�r:�S���E�2�����c9[O}zdI��C�&n��S4��P�$K��L0W��A<�Sv6#8�Fxٴ�-��ǹY�c[���a��yi.ho���-r�qm(���6�Frf9��i�P�%|{be;�{�N2���@SwC�CA�x�g\A�s�G��ta��~��م2��cu�H�e�.�tb�0}�.'��Cv��t�n��3�����1�"!{4z�t��h��5�Z;�rZӕ� �H�Jg�A{��;ᖛ`uǠi�%��HuaKY���&B�1Gg�����;'��$�yS�� �XK�)���c���$o$����)$�K�$� �ϦB}�Ϳ�n���Sϥ�� �63j��W-��|�`�&M@��^�$i�o!xIA����ḛ��n�o�Ƭh��*��<��X�ŲO (E��di1%�d��aqnł�"��|jL��R�FQ
Dzb꜉��h[|<IQ?��t�� ��½�G��^И 4~`�k��ل�L�H�oy@y��t�W�.'`Q� �%tY��r���!k�16�쯎�9�a�����͜ݑ��3O@{�����v�r�y����^N��{@�d�%e�;�(3 ڲe����.�`3�՚v�G[�Z��Bh8��Z�kj��������rI*NX����Fo�>�~�l�v�u��1���F�Z�]{�B��#���Gi��,�
[����J� �����(�p24/��@�A��C�IU;�~U��$���@�W��^ŤjL�@1S?I"9���}jg3KgcA��=pr�B|�I0�G��,�:�jk��*f��#�U��X��4�;{ -��.�'s��g��+3�h�%?FR��?`�ؖ��e�t� �� �g��2����ޤY���S/L-S5�'ĵf�v,�Xn�B�7(M<�����͵R�&�׍�e�D�H����c����24��U��_GI�p�G+�	��G�H�|7�Y��n�-w!eL�,{#�F�f�s�ݐ0ۢ5g�eå�q@�5ux�'M׉y="z��s��mG�6j9k;��<?&�l��:��Ҁu����:�z6f���o_�R�ua����uy�U�V��ĳ����������+�	f�CH�u�F@�_i��<3�~��o�Q����	���fa�{6M��g�o�^I��:��c#�)(����^�sܕlY�<&vX�mc��l�c8)�bF��9���[�H�1Wp�-���������<u���E���X ߄�=- �-}C�XGv����(i������:gw1�^�B�}⨉�����w4��P������D�%�N�S��[9�C(��ՙ�}H?|��������D�"pW%y����H�=!&�f;��b�^�iZL"�D�8�^@�8vMt�ac�i�nF`��N�H��������On�\�p�4&s	\�Z%�l�pļ G��&KSE3Bw���.Y<��5h7�:���4��reҀtT��r\�!��f�}�̄�)�%Q7�������5�D��P��ZD{m�c�a͡�4���rL�R�PA:��J�Ҽ;��oNC�{r�0Ɨ����h�Yv:o�5.��g�7ʊ�t}�!��;v�ý��c��9 ��	��l)s�ǣ4-;<RT�l�����l���*^M`�4�l�VT�xr�k��[��m��ŉ#Nq�qu�0�\<Y��$�K�L���e�&K'M�	F�&����(p����8�Qod�e�:�O�e������ښ�	i��]#�x�^�8�P�r�����'�w%-��{/���2���������%ߞ������A�t��B�m
}��ܶ�h����B]c��h����n����gq�� ��zz2d������9�3����q�@�aT#0���q����!�F��>��[0R#�u��Fpl���Cn.Q�k{rN>��*������
w�rp�)���#�H��|�H�?t�E�n��ȎL_�cpri�GL�~|��#�����B!>'�MnP�+��NPc��.���n8���t8�;�e�2�B���;a(�`�Y?�_�b,-���C���`��qa-~�����jm�l����m;��D�xM�c�Zs礝#�� z�°f��߅#h���R�W)��8��5��yis�ȎE� �$����4�-��ƾr���:p�`V�y?n�;�2#I�A/y%ߚ�UM���Ȟ��?���?�����L������:��]�X=o��OAB3���Ᶎ��j
�б��N[SZUO(L����#���4g��sl�j���-�Hb��~����M&sM;f�w�/[�_�DZf�$ˤz����2���f�X]�w���Mָ+�<�����G�O�m���\��$���|�/�E�_����a�!��H�4FƯ~G��d��7(/BH6�+�ܼ�e�����w�i��s_��ykْ�۫t)�v��/*���ӌw�İ�`�R��O���3�H��|�Ğ�x�^\�l�fk`��7[�+r2?H��������$U��a��ip�e�CG{r�b�a�I�`�mi����u9�t�2re�� �Ci-���ۺo�;�ִ�³���`/v�xf�
Ɏ_�;�+�Hj�'�C�(u��o�F�d^�2��p�}A��Q�Sx��c������~8/���l�#������J$�	��:�����$m�e��k���E����I0�<��_�>�K*���I)���h�ޜ:v��t0�w�@=������9�    ��
A]���h��B9J�}Y��DD���h�K��BU�^ؘ���ŵ�i|
'Q�������W߅��w���ʹ�)��Uv����=���Tu�p���y2��L��Y2��DLK����En#���j��Z��g!`z�7�#Pt.�X"l��?O�	��0�P����C�|�1��������w��i���������a!%}�ܒ��ح�L
��Y����W���{G�_b���(�8`�?"ʹ��D9�>2��5�Z��E���:�~�ZK������ܜ��I0g3.�TE|�Kk?�t�/�Klm����ٰD\;��(��������DA�z��LGz�<1�F���Gp���̏:�r�4�� �W�&�(�s�f���ܠ�9������O��P���gД�&���*�eyی*lj�R_~����O^Y^q��I�^�#&il�'ᛰҥ�	���R�S`˃�Z*hG\ބ��!_����-x��5�p�]���Ӡ�cP�Q[ax��l�;�>p��S~[�k]hl*�&J=h�'r�ny�T`�L�  �$�w�D5�Ӕl�1s�ȥpo��xl�� s\�鷧x��a}�-�E����$����v���.n�2!u8q�v"��ܑ�Y�0폽=�������|�g,��b��^��<'���ۈl2��"$I���Ժ���O�k(q�R���q���M,�|>��`�bOh0q�M��(9t��5��������ٖ�@�FYV͸��}(�z��A��r����:\t���Аz9v��sF#�9�c�O�5|�x�L`��t
�*��>A�����$9k��=]d˜������b��#i��A*��9s�Z�U�j��Q�_YO9�Yc?Xp�& �lJG1�w�Y���d؜��1E&�?�ʇ��/r�󩞿�H%	�M�i8v�}E���ߘC#��"��B��2���rlS)ο9�&>��-=��/�:�[+�:��D����OX�g?������w�G����f���F�_M��d2qY���;b��|��~���/Mv?�=��P��NNf�/`#�[�H_��dMOܠ[��e�lhOH�5�����9�)k��t㷩�����j�=�E��6��t�����`;���>���pvDq����y^���Q�U���zXƀ���w�6ap[�,z���9�D�gZV��-��A|3;&�î����/2(rw�F��6�PZi��2�G�^^z{��"��,Ѿ(N3���s�IЯ?����'DH�l��'ҥ1jS�����pX�<"�uG��J��I�u��ƈ�Y\��u��@v�z�>�;g�M�M�$��+46��~�g�'hr�������°��*�h0B�>O��������DZ��Қ�́�`���paY��Ed��U�5�M5v��>�Z"kHAm%��W�KN6�D����� l�_�s6'��r��m�,��9���?۪�~��F��'���
")vʋD�T���$��o���H�P��f��#'�޺7L����Z�����Tzw�Tz5QK{�y�>v��0w��bӞW;t�s����)x��ރ;�6�@�;��v�������?�y��3����]&�@�,��[:.x$���~��K�=w�T>���c�s��%��n(<`r�/@o+�g��ͳh��ܫ��`	��o�R�L��3+��yb�Y�ogWմ�~�(m�T�I�Yɑ��|)&v����ڞ��¸���Ծ�p���HU�<�54ң��z�&�3��ڜxO��Lω%ϵ��(e*,�ł8�K��=��Mj�Sp�*v���V�-˼f��SP**�`N��S�&.���^�!4� ��K+֎^���"�vGL 8K�~�ڰS镚7 ����i�-BJ�m�Hse��uCY/yQ�����3j��H�
a�[N��h��_	��@�[uwją��C�g^�ʠwN<("��Or0u�ZJ����L=i�p)��<-ײu�k����B'I��	��ќ,3��k�80_�x�U��̹����V8a��~�B���D3r���K��>�9i�!:��&d{m�:t����q��=ə��ҏ~-���7�2��_ù���Wi�˫�z�0���#i�OY|3f�����z�#�k����<����������(�[Z��R���2��$W�t�+r2�տ�Y�
U���؝�W�a1�K%��Hu�a槼c��O���8S̢�$�5��e��T��h��ٙû�z�j |h�lg���8��t���&�Ƭ�4��n�B��~8���;y]�Շbk5zJN����G1�](�ւ��|(y�ٰ�&���7(��ܙ���0����ԣ�����I3�J�J��풫E�:I���F,1P7�y@s2�l/}�˳��C딳�+&'[�^i�<�:�(Nρ�� �B�9��x<�A���8?s2��J���aR��Wh�0/�A��X�(�ֳl�Gs&���������K��m+aV���9��3���s�!�z���L�jluDY�uD�즶��~�R����w�;�Z�� O�b2���
���Y�3^e�\>��%�OS�$[xu�s�߶�#�X\?�n�3��ԑэv�yZ�A�x>?���æ�GN�JseBߌ��c
Dt���SԨ�C�Ȁ�a�H_Ժ75&�l[V���H���9�'PO��"I��1�������X�D��ia���yւ#��iAF��v�m��FO�&�ޘ�ǦHJ�=J1�_$=���j��sݷZ�B��qB�M�4qa�)�8j�Q"��϶ȹmIH,���6��;�w!����'d\���'鯝� Г�ۏ���;Yll��Ƴ%������l�17x/eI�ݩ�8#�H+�?f��)RZ�vj�m��i�I�_����G����O�-�w�y��w��.���|����`e���!��2z���c=�̒��\��ȭƯ~i�X~=_��8q��fݠn���8�
���M��8ѩUR�5dt�I-2V���������쯍?�Vv�������������֓5_��L��q��D�4#���X�S�D�9�v%�e:88ɢIE�k����y��/�͗�_�A5ؠ$Q��k^���"�4;̰��N��˕}�"�W��У�/��0�M��g�K�.���/�;c��	��`E�V�	A9���#��X�2����>x(wF�B2|>���2����u�0�� �e(؃6z��"��8~�ٱ8LF�$�j�\]�2��(�z堝��#~��$��� �:N_h�.&�NԢ�V֓��������o� p<������a��3��%Bz$��شm�f�8��Oj���QP�-~Re�L->R��I���Fj�>Ӣ,i���-;O�����^Ԣ�+?Q�/*�Zk0�'9F�lB����d��r����w�F���w��v7NQ%�k�rg�"��+Ȇs4��Ci�e�;)'��?I���*��U�5��9n���!H'O�RO�,,�<	��\P�
��Ɠ����j$����|N��Y,?�m5�<G���;���p��x��2�ۧ�m:�+2�Qw��#礝F���7�U��I[��0����I9F�a&7+|��ݕ��t.r׺��	1@ܑ�a15�9���uZh����g���<E�0�XO��l��o;�(��,��U��	O	U�jU�t�����!g���s7����h28|���S4���<Ѽ���q5�1	�����w*��}K�����PN5�-��KϊݙΛ	,������?��ʹ�L���2���j�y�J�DϤ��н��	�����bA��FPxJ+�~!� �1���]\�D:�
�&E	�/���tCPȡ�"M�}��wz������$K��c�q��G8���<"Ղ���wH��ω�r3�K��< �L�+}Ha�+��I[����iH[�ȃ=�?:	r���@F�@��E��o�ل?���Ѵ����`9Ԓ�~B��X]k�Rwr"a��#A��(���:�Yg���    J*Ĩ�H�IK��"������e��T&W�]����Ѕ�F��1�N���#�#ʈc��v�*!��IT*!J�4��'��d��]%a��g�		�e���������L�h�P������c��ܜ������ޞ�4wo���N.�%�����jKʦ>��a{�e��J�rr"���F�6:�ϰl�?�Hw�q���jMxNQ�:�$m�&߉���l�u{�B�wгl�8R�]�ֱ�U>�.�eѵh��;0A�V`{?�I�cnZ.)��M�"����Q�h�=�G�Mr��k�!o�?
��-�0r�$��PZ�hD�ʡ�U�jM�W�*��s�J4�Ի!�U.5� y��;p��t�C^�O��E��g�H�FG�_���������r$mRMq`
u+�"jr���@����%���w��.ژlfd�G��\����/�U9�V��rR��7��ʅ���f	3M��
�D�K�YQg2Y�H+�#�.?1���dR"@�~����I��G��TH���?ã�3x'�ܡX��H��� �3�N|&}�(5�>�������AA=�@��,�����>������$��gZ?B��O`�hk���P���>��yj?�-�LgDQ���V|)�<�̧�
���e����|��*�nC�_\
���p�J �֎����i1΄b��q����&hV-4�.�*7)A��xK�iw�Hڒ))���/�)R��$�]N��^#��H�2�Rd�UJ��.�J�R��/i8��9,���͘��s�Ŵ���7��´�QnQ�p�p@��_d��9*F���TX�?�k���X;�U"��?m��G��N���u�N�De�V��/��<C�X��/�R�t���*��Ӌ����Hb�-�K���ԠW2dS�[���.ڸZ���Ҿ�Ո���� �uX���ڶ�kI?��s���E+�zm=���M���&9�>H\��o^n��[�>Wp^8���>���~ *���!Yڑ������drG.�$��uږ��J�{Bd���p�y��Uy�K1[��{�r�@�e�c�=���S��ŕ�k��R�R��ki�}�v�3

��t;�P���O�2[����wrm�㯎��@��72�Go��׏���Ul�@Z�#"8��5����t!$���k7�@k��YifX�4��;�6P�e�=�ţ)�����D���LYr�W3��Y!ݣe���D(Cvn4�3��y�2�i9.,e�Jb��]�-�Gd�ЧU����V�ML�^B���H�*�K��%�k3訩���w���-mr\4D�{�z�#�'�?�;l�ȵ�ڴz�-J�/ׂ����R`������뵝��x�Gz��@ZJW���CW70�������OE���X�M���̭1�����:u�������<PJ�d��<��V|�l6�/;[�GX��޵��=S�7�vt�~����EFkm��G�>~�ܨ$^5�D�G5B�G������o�2(UYs���x�4���E�r���%�2a�WRq�N���Ib{0g�l�y��?8���{��4W��ᄇ&��r��\|X�B*M�<��>s��O����lh����EE�#�����-�-`����kҺ�A(�w�}��1�ί�m��"�^�bi��4*!��w�UX�^$i�{p�T^1��t���m�U�X����=��5�c�Շ쥍ќ� ��s�`ˮ�ޏy�U6�Ë7���@3�wD�ҁ�����F3X|m��^�)XW绑)D�^�Y|�"���|���J�[k-ܗ��]���#]����*��VPUi�t����X�k�+��0b*��z�|̰ߜ�:�V\0��&W��]yR@߮6�h��*O��$�8���1���Q�4M�� n��I��s�Y��p�J���&��P��t�<~T�
d�.��/ۺ]V /�P���%�*��B����%�f�W\n���=��|���i!K<L&��W1�d���rz'D�0@p]��#(�nHS��GO�Gf��ԑ��U�<B$�B
|?
Ɗ���G�g�*T�^2n�3Ib�/;�PB�<vV�#B��T���/2s��"S��pT�F�l1{����1���	4۲@zr��pǕ("�C���*�B�y���!n�U�7us�C��85�������w�c_\0Q]G�⍉(��k���-̵�{I�XT*�~��7��<nޓ9��{��Վ��Pj�Ҕ�;��x��9��f�V0�{�(�p�"< �l���|�Z�]�AϪl���xlc�6�Z�Vk�����������$; ~+��Q�e�Տ$K��xL��hVl}�:���"+�a����-ش����X"�ɪv蔉���}��)�RUEЯ�
?��e�p?�[��p$a�sj�����h���H��K�8<��u���X����t'W�|lrv��<�J
(M�օqu!3���PZټx��!4�c�Ɂ�3��B�^ԇ>ҸV�@��]��`~���AIU�j��;��V�0�Oh&X�Z�B�3G:7�|��f�8����6q����"r���{,�DU� g�IO03���1CT��6�/�mƂ 1m������#֬�n�j�::f�q��Z�����S�K�V�)-�J��r��T�s���j���	����o=�k�fQ��jC���O��L���C�_xe������ĸO�\~ݗ���F�
ZM4�ϓ�Jg�&kZF�f��?��Ҽ�`//��;iX�{j�����bc?UΤS�6'eE�W�Nɚ�Jzy�|�N�vӊ�����p5���N@@��4�8�;7"^y\��Nq��q�Fܳ|�����2��B�ey��^�\㽵N��n]d%B	��/�K��B��Q,D�V�F�������,���n��BT�,�F����@��c{�T�G(�ّ����"b��,K5�A�f���@j���!'p��'�I�k��m���u�jT:�/l|�l����"��móG�����q	��|�W7�C�uZ	��^C��]����,R2=Z�U��6�h2�͍�;��J������ش��Sg�8*�mGZ�)
H��tO�g�
�n�!DCc�r�0e���H_���IR��d�m{�Daj��;��2l{�Hy����c���fZ(൱�r�Y��D���L����!f����G��:�b�2�_�ʷ�� M�����j�i���d%V�݅/�)Ћ��񮤏t~C�W(��潜�<�Z�������{�Bʿ�:��t<�W�� V������:���v ����Ȍ9ʲ��ֹ�0�����ɭ1y9gN�ʯ��>v����~ơ�?9�,�V����W�d�O9��b� Z�;�<e��p�����.��=�7���k�n8H|�^����@C�4n�Ϭ�R����7�џm�ħY�
e3�E��.�x���u�e(Ϛ���
5(�g��������,͋�H��=Z)H�w�5o��Q��7 ~v ����>8��RW�����.�K��bZ�D���G�q��x7XU�0��0?/pg>�;N��NR�s@�}�\��bm������|!5�V��\�%�~9�u㎸��͖�6KNJ��)�2��REKکr����RGs�%*�k�N�;s9��T3����z	�%�Ā(a�4W�ֲj.��`N�i
_��Ry+A\��N�@zN�x�4�7,k|vQ�|*t�i��z#O�PZ+T˂!��o\ �0"޾���]k#1Ւp�IHR��^����~����eFD��6L�"	-e��)�V��t�ӳbOj��<7�?�YJ{߲�\��\艗����k��^早2��:��,��au��AޜE̅ �F�2��
�s6��8S���"���r�rl%R����{�e�r���I9E;��#i+&ʪ�D#���Br�Wi|�F�g��ʼ�=���1H�n�=�j�6�b , a��@aŹ������Q5QV��T#GXFXJR����J�Q
�����;�`5�8Đ��    ��w6��q�i�3�Б�Z�L���p< m,дK��A�D��O�^[��Ҧ���5�w�j[��+�]��z�a��t�R�D#vw���D��/t�,����aO�ս�N?���Y9��V>�Q�3NOC@�9�H��XĽ���f:�y-,+^��9,��d[���*$[�rQ6��+q^�|u�b�*�
착w��$Kp	j��
�+�(Y� ��7�#{pڒ`�Ҁ��v/M/�4��ˉ�wMK��@˲�c������c��S���yُ�Ψ�H�����w��Ъ��\kcpp�C��.�˒���۾rR�p�uv�4�B6���5��Kk�A��Z�+��۲���5�Uѡ:Җ�YB ޓ��gΤ�L�r�I�T+�r_�!_*�rW+��nm�[�|��~�sY�Y�oJZ�^�W��{����������"�w� z0Kq�nz��nz�Wa�AJ��.
�x��@R��hD�Wq���4���<;	<�R���"�$|��E��a���Ϻ�)�J���C�l㡟.l�-����u�Z��j�N��c����S���sմ-�U��sa{��®)wՃ�3�6��ʝ����B�v��z�po�N�����ޣ`�)�*;˩!�N����с�Xns0I�`o:�1���Ü���wjd$8��Ӷ*��i���k� �R�������w-y�A~0��䞉Va��O�P
(� _��L�G�t`]���Gf�됦��-��ψJ�;Ks�M�q�~$+�gZ#$~d#'��>������T���P�f��Վ%ڷ�U����3�����*��*$�e�R��=���+��/���C�Ԓ�x�)�"��Z#�/�w�1Û�<���"R��|���/�ړH����~�%Y��Yq�q�B�]l~_��G��s�?��\]�Xڥ���H�v�c��A��/@�h��IrOV"�+����H����FD- x�N7�7;D�����(os�T�G��~բ��4٬B�rO(�*�8#��ɝ��BSV[�#w��F2^���Rɐ&�c<=�g厛�E�-z-����N�5(�%���h맷����r�\:f�A�g=Xq>q~;ߓ/)T�2���esaA���|���)�'Z��A9q��d��|�����ː�ؖ�{�R��.�=��42��U�+����yi57}/�/��b�7�m� �azO*mO(�d{7�Tz%�_F���d�o����A�5h&�
�Q殲خ� 4���`k;j�yl5�J3�,{ -�-'bW^-%-�E��ۼH(��^���m��%E�L��������m�%�JbJ9�JcJ��1�d�xRS��G���iJ������H��P5�^�%�5y�f���q�yʦPN��4e�Z�w_����FN�G�ypHgg�/��J��u����FD�ۀ)�j���g��4����/5�_�d��y�Z���%}K����tem��㻓�f�<��K��5�qγM�<O���;O�~+,���-8KS��ڞB�UY	~��� nٓ�]�%���&�/�D���	�2�]0;�ҋ�U_ ��ʖPa�b��Eh-��w�+��{���w����Pk+[�'�q��0?~AqvT�fS���D�c�}K*|f��UQIwc�[W�����"�,�V�t�x�z������������52
ތ_�����Q��M\`-S�l�[��,����j���̕��,�z=��_މ�?1��;��׉�Oq�AN1��4��3 ��%�"1�s�4ufޒ�f��8v�7[ץj^��F�j^O�ۻj2}i���Z�*˘�6�s�i��h��B<M]�%@�\�o��~VZh�۴�!ķ�� 
̝4M&MM{�����(�^�S�����vd�l����J"�G�sN�ҶM��k���>
{�0q#�?�e����e�=��:س�	�7�i@�ڝ6�F�e�u]�ܷP��G�Ȯ�4�L�뭸��f����(Oo��`�)ԩ�[���'g�S�U�7�$rLW�7hw<����ݗ�/��=Vz`2#iu��N6�_S�Uʱ���{ywҤ�� 3�h{wҬ	�� ��"�w\��ˠ���w�,<mp��H�Ġ|':��%�d�g�vq�����(�ɂל��۔���?5d&��g�4;�ڨ?����Nk�^����E�RDlh���i���E�T�ٿ�2E#W��k/���R�Y�����*,gE֊��zR�G�¸����ԿQ����{���Q��X�,�����$OW�5������{b~"���,z�����41�ړ�k:A�>���g^����;�\$���u�o^q
6�i��EB�/��<ͣ0���>NVRb�,�I�����s|��
\���Ro>�~(p� �qu���BW���8/����'�5��p�|�l�9�3[�k��m�A�I�>,�<��-N+r��ݰ�	�QC��iI�.& YH�y��/j클�����G*�2�ۮ{�:���BN�*:��D�
[���sPy�+����o0ڪ�+[ǆv<+P��_,Oj��s/mz��|���diYoͥp&k�vj"η�� m+ ��T����s9�`�fk)y6h�3�&��LHx��vG���Ȼ��HKf�Q�*��hU ����2����2`�^������y9FV�]
'�@�4���C2��[	�Bd&O	[i!��b5�i��D����"9z��m����Ɗ���Cnu��o�{�%lg��������(�טПEM)�����W���k�iAd��4��"�cbwm[����܁E�~+**�Qj�Y����a�a�G�Js9ـ_�0�BG�A	/���N:��b��N��'J���ե�C��E��멅�����}�Ž
��0��>׏�xv<���hZ
��i�ٺX�PJB��P��~-�A�q.X��_�������L�ނ,�|��E�t�6���Vp��۟8���v��u���cu��S�4��z������Z��pA:װ?��2���N.#H�]���_����c@O��4ٺ\�����xgg_�e1�d��^r�P�O��25oNO<�Mp���Ԏav�S�!�3��E���A�j�s����jψ|{�u�w�v:�>��;�l1�F��/��i��ͧ^3p�?�=��e������O�y�#|�W�RT�kHJ�F�Q�Hz��� �=W�?�M��$H?V�[zU{`c�P�1L@VF�;iG����L��جc+V�6xk��
,�Z�L��x�˛,ӗ`��
3�9��A��xհ���/ϗaw?Hf�d少����Ɇ|��߯����_ܮd�վ��˙�;�+���3<��{���XCCɌ��ֈ
B@� �!i�c؃�L�_��m�����X��H�B��b9ӹ&�*�,��+�����1!���2[�nH��k8���!夯B*�!��O�ҽA��+V�@b��������`ci_��z���Z��^r���C�>���@�>M����Ev�~V28��.�����o�A��f^���Ć��3��$���C�C���Ho���"O�+-�WT,^4�4���iLΤVhX�������!���MP���ˀ�F��>�ys�W�I�7�6_���#?��5��ҌX���xe��ٕh)��Dz�9@U�Na�<���<C ̡h@�F�tQaXE����דuD1�扴.�X���] �k��IOf���/d�}�Z)��s�7a��)���K���p�=�#i�(�v�!�@E��F��
[�J}NZ�ʻ��OI6�XL/�N��WsSu;������`�&(SÀ�<�6� 0����Q����U��$y��$�mK+��ޢU�$��|{���i�9��%��nܠJ�s|���(�gO}�Co�{���&I�J�N�i��%��w�ލ]|1�$A���K��œ��$��/�c���`6z&}�\կ`�I�����\��N���#������NI�y}��S;C]@~ڍ��j��9�$и�-O���!m�8�p�_�7��\5�=<0.�*��VPqre
���?i4[�
83 T�- z    �I�D� �~<�������K3����k0K����Ԋ�p8�Qϥ���z.#�.ٓ+ew���7�C7*'x��aėlc����KR��PO5�i�b�=ж��aM���l������� ��v��Ȕ޺GӘ((�C�����>uغ��u��{`��r�l-���[�s5��%���ωΞd[�F'��I�X!R�ն{ǝ֓��Y��0"�����T㲰��C8	��v�����nV�pN��A:b ]��:IV��z�p^��HK�dK�c7�͖�q�
��Q�h����l���՘�@�~�%*57�y�$c��bY�uE���e'��ĸ_�2�0��<׈z�@?A��X�^�!V�G>��?^ {�sF��]N�+��2��Xڋ)�Q���S��a�nk���2� {�|����|Q�$�f��Q�r��qFy�b��Т؇�K������\�8/ȇA���x�B���ƕ�1�kWsǂî�N '����q�j���G=�>`����{(����0+zPs)�X�FS��tL�$Ȯ�]�e��Dxᕉ�T"���t!+}[>E��������!�@��p�(jI6|����.��1�n��^�xʌ���$nh?(��˒6���ϷT]�G��R�	�_��W.�0�/�������V $���4��g���)��)���e�Az�V����L��b.��H<��=�b��Ib���dRe"sJ�Z�c�z����3,�s��cѰ .�<	�y�.�� �s�{>�f�q��(i�{s6���v�[�vOe�<0�3�w[- g�����
��jaA�#�kn"���@9t M�1��,�67��񩽵��d�.��D�I�W��ť����I��Y������D�fl}�%�]��M�4�WcK�~+����I���X�ijg�H���J`g� ���	���N����ΆG��NR���["��1{��Y٪S��NM���)��٤����N��X�<;]A�ψ`��S�)IM.]~��x �L���Ìh.]����Z9qI����=(������h��r��}ب좄P �l�E��&�ִ�"������6��ؙm�Fo���Ʈ��n�[ѧaO�2R.���%�9��h���S�`�e6�Gd�#mMJ�`V��
�������_#}x���=�0Hb���v�;��G��K�Y�t/\9��K0�Y�uz/.�4�OC s'M%,J�n%>�6��g�0#�HKN�����%̞�|� �Z������.&)�'�J	��Z�~��)?�J�l��qTf�;:D"��D��O�)c&bSn�f���{D
N%Z�O۸#ic�x���^ݍ�^�^��3Z�P[�;��d�	?.Ny�Agރ��g�]9Ig8��.QB;=�a��3]W�&."*ݪ�Eq7;!]ת���۶=�x�c���9nW�kl��"0�&k�vOz�ѿ�HiO�P 3�S��]���5ܦwH�;Ь�7�`�%�d��%T�8FWR��̞���"���9�"Em�[�p�u$�#M�BbG�E+��v�U�{3��u5K9��cCS�(M*� �e(MjWS�5�ɻ�14O}���$�;��wl�>�X�wh��T�IE!>kt喏]t%�'�I�Kx�T%� Ev+����0r�=������5NO��"����	�!taQ�ia�X{�S3m�}�B�<�0�@9�x�=t6)�zW�%�v�^>'-y��k0,�F�7A���J	����ٰ��,���Qw:>�qޱ�-���|�f�CG��ip����j�fI��8�pX&j�Mj��N.ץ&p@ľ��i������#�<�
D̀��4J�;��D���a�����
%�$��d��V/���I�W���4+Ţ|��W�B6._&���	���`��;��+�[Y���I��&.D�H=��I�:*�p�ao?p�?���m>���m�2�<�y�b@#��(���G�-HsI��(�R���h�o��d�0��{R��a ���8A�y��V�ɴ���V��j�g��54��;�*��[p]T��E�}���ygX6�9�e3��@Ũ[�ΐ9�?����*`��e2O�;�T���sPz�bI�b-�.-"-��3<���l�HJqX[N��>�18��L�&����z���OH��s�)���9X����
s�KV1���+��r�vǪ�ˬc�C����U�;����W��)���ګ���95ix�JE��j�-����k�����3�:鏅�e���!8�6��	���9g�$�7i.�B��k]G�&/�v���K�z�g#5dg��wA.�**�����������+�.���<B�"�.@�/>G���.K���g� z$V��m�jZ�d�BX&­Ҳ\��_>�V7��`�~�A����Z�x���
�&ˆ��H��j�cR��3�Α)�ʹl�n$F�
�WkvhӲ�m׸��D����Iũ�.UbB��Lq��7"#��$�R�C+�n\�^�l-���Uw�����9�lLQB��]��0%��$�m�<P�L�/,�Ke�B�1�0�R� /�WF�UZ)A�f�<�;kU-q��sl�ҮbHiE����u:Pe�pl���+i�6H waj�M_�����;��5������Q3R����:Z��������9�R�q�}ө�w;KU�U>��W>�`ҷ;�d�.`��1^�s莤�@`��0�է��9�b����s@+`)*�sC+V)
�^S�A{��z��iߚ�@�eJ+=�6�HT�����rz�v����+D5�l��N�e��.�F�$�#g�	��S;�.|ۋ�B�;
{\(m��I^�[RC��#�n��)mp����Ci͕��"�J�dY��V�KmF���fE8�n?vt#%�q���mZ�����Ed�#Z����m��_ݍ��%���^����(2e" 
 �%B�Hܖ��r�d�.�̣6ȥ	"S;���䎤-�$!�!����������t`�>�������Ma�lq�xǳ�Aٺ0��]�Z�a+��P���DV���a��2��O+����j�����nS��,bJٺff����@m������'�E{�R,[�*���ږm�F^�q�,I�Ku�0��N��,I��a�����)���������DF���{.5�v͍��mb����b]�Ƅ�L��;��L0�,�־w���x�`Ay`��gI�(���X�J���i̹�����ƒY��!4�c�#�&K�x�\=��XaQC�1�� c%���'�]#�UaT��A�N��_�F�>�Y����K�,��P7o�3�;m	��H��N�UGm�E�-zqnbx��a�hC���h5��bRG�������$u��~n+��df���+ҝlի �b%�N�&�-��RAn�����r��v��$�k���)XcM`Us�&˦q9jVx��+�H������5+$pc� P�J��0h2-	����k˴��v�d��٢`��{D7��t[�BҎ��;�5�y?��pc�C�y�J ��
���y,f�Q�m����H���66�칐pO�G@G�a#�A�E��-^ G�5 ;�C��8��F!9��[��D?�Cw`�h���:�F��;���ǬRtujh�a��#Q|��|HL�D��5/�d��>}��G����h��7G/��A]c�PO����=�^8���Wi�'F�K����|�ش�w� A2N�S���K��	ն��UM��KT��>�$�N�à� <<�g�hXٙ��2����;Ee�s(7*h�w`��7�D��m�{����W�E3�mBn����qc5�b:�%x�U�p��X�Km�q��l�Yq[٨܍4���^nJ��9���u��U�H�,�� 剽�s �N�N/@0YQ�r'aV��K|a��Y,�)�<2Y!�[�8؆�W�PZ���u��J{7C�f
)��Sl�N��]{
�Q�O	(D-�u߯�+�hD�%a���lB�`�<������{���	X�(    ��A&�����Wn�7��?D��p�ʒ�u��>��Et��leit.��8��B�c�S<&+i=��P�:���ǁ4��oqAD��H�2�W|�5<���L��i�V��n8�$�+�M$&��F2�h�{w$m�y��b.+҃?��T)8enxT�����T��p�� ���ʘ��i����sn>����H�v�R@/DJi.�;����ֽ��������x'Cms)֤X7b<��9ܬ�;b@�JWg;v'0
���� u�$�L�Ѩ#��HJV'�3�_I���J+���W��C�ht&}�PbI�/S����q_A�
�Yn,�bB�$���i�6k�Jk�!�t���%d�S%�y��_��-����.���q��V��ֆ��R�K�3�r%�� ��E���mX+ѤW7>=�G�[4Zm&�AϹc<Q	[6V�I;�b����Z{<%k��P(���V�-9��C>'B��>�_6ȶ���5��
6�U�ԬD
d�U�zD�J�$�]CҊʤ�P������Si�G��8�w'���!�iP�g�Xz$m���8��C�XeMc�!�R�8��O�|��5�v�������،Y�c�u�̐P��	�\U9z"B���;̛��։1X�i:;�k̒A7�f�v�8���[$/��\l�.�ҋS�<�NC<9�M�{l�@�|]Y"���9����H��%,�n^Y��R �,��m�;ٝ�S�02����<6vv�=s�ʮ�<@d��p�SR�m�A�AE�ib�����\!��*.oAפ��9��y�i9b��e�:�[��zM>�2\ 
}'T�x�>߉��Q�Lǖ��c�*�SyR� N�p ���lm�z���d�rAX�#�Z�i95�6�=�?�-� I�Y�A�A�$yXA����:�w�d������|�07�Y/,�<L��dЛ��DTc��L2K÷mK��y��iӻ�c��=�OR�F���Z�^QH6��[�Y�ФHۄ�j�7�^w��(��B�Ѧ0jm��ڸd�W�)%��R����x��5�{�3Jtt�$�3�$h��*�o�(
��u�Hr������8�5��,����D�+����>XRQ�p�
��m���s2���^�G��	a 3C~�,�<���N&�_Iڊ��=����&�O����`��&���O{���5_s��i�H��Jk����Ӹa��	��'�BF,�:�(5��G����H�2uC�����X�s�#�G�{�I�������!�/4<?
O�KJ#e��L�s�3R��lB=�~�q�Q=���H�F���J���P� �RȔ6zh1����J�s��ه�u�7\<Lƹ���19ؖ4a �cA	��L�X���i�c"U>�g@�H�OF,&C��H/;>�ybPL��V�2H(91�'f�`km�ŹDv)=�vyZ�������zr�+�8��%�/��t�u�r~1W��^gW�M��Em|]�8F�V�EI�E3Ն��Wå�{4ч�՝6��[���L�aF>� �_082S�ٻ��Gj��}�$�Y�'�\��z�8̱���G��ݽ��1�)��f��n�����󸲪�'��Emɳ9x��ڲg�M����ZJ i�����Y�
�}�	����TJ�Q?B�����z #g��ߙ���O�
P�`����X�R@��#��x�K{����=���ػ,��d[�c����x%�K���l�*o[�@B�`�D��f� ���ըz�����k?���LD��1 ���k�S-��kJ�v�#�'�p��{#˰�
�+Ĭ�@�"7�
�Q���dP>9�Hv�ܟ>9ηHrX��N�1���vk�fJ�qU�r�&I�yK~�Kh�[k�U�}�#�mǝr�@��=3���+�:Z�?��P�i��M<��3�iv�G�Nڳn�ԍ��z�)�-��һ�sj�_��O�bguׁ�۬	j۱�p�;i���M�I���o�o�E����Q���B9�D��a
Dl_a�t$NoS�i&��X� ��;E�r[i~�	��j����5O����`��q���;���LةaU�S>}e�)T�KTQ��Ă�0´?��P$(u�"��i3g��$�g���];=՞��"-�⩴J���7-�A��/�BMt\��i����e��B���p_��_ ^�#t&z}x}OQ��6�#Ր�4��0i&-�І�ʼ3'�0��+��U ƫGHHJ΃8&�nʵ$��ĠǏ(�z����H ǃ4���cbx� ��r�$��b�e�x�,I��+��j<[;��\��菹�0.�4�TٮUɴ�)���d���@b�y�уX�k�ui^�E����Ӑ@2�"��COd�_�����6m�#�ϕ-�YpP�:��#�z��>A_ʵ�b�X�����
oh�����{U��.Rfk�蔇 x��q%?3ɘ ������7e	��U��	�̢�>nʄ\�/�w3��� F��a/Pp� iLG��{���aB��p��o��<7X,��)q�/<"`{#y>�4K�.�ձ�(���)l�@oD�7Џ��a���q��)A8�]q� qzK��Z^���D1g�!���W��"�,O�M�Ü�.���6��y`�k,�9�[�+|�)�BK^����D�v$SS9��_n	��2/�'d'��ә��*�4�!�.��0$��2�E3ﻑ�\˻��[��K�� [ٮս2�fs���:*����7��k�i�.gWF���sy$_�X+����V���|P�몁7ܞ=��,�zΉ{=����l�ڰ��CwQ�'�쓘���z,*[�5�E�2N�[ \'7D9��\�uLHI�-��D!cQ�C�G�^[���]����7��u��M���~A/*�o����^w��I+Y%;4��'@w�3���/#�Wr� ��Ň^ʢM�Y�"*7� �	l��rܞ�M8�-h�2�P"CC�&we� �),
��ēx|�)�<M{����?�Ɓ$ ���4�a�[Ǖ�4�%6�
;\/�`�V�1��f�S�!�J;w�k$]�M�T���j�~	g@S�>�}s���X߻�<��e�iʎ���
Γ}�픛�|��96��ؾ.�Nu�VNՎ�;��߸$��/��{n�Ŷ�{�'��yr
�����L�p�r^�P+Q���!�e������7#^^�rnG�����V�EO}��*ˍ`U����X�l_�=�ei�6?��FW:�����������gT-˸Ԙ�qHp<�����WaV7S�˒3�}���e٪,�� =�o$�,������Z���H(I�}���o��GȽ��Z�cDj.X'@a
P�U1+���8���d#�i�!�ٽ��$�J%=G19C�\�%�0�cq`���Ho�W��IXwG����Ú�h; ��?;@�ʪ1ze�U	���T�� ���Ю��AUe�^�z"��h}�J��Y�f�?c�F? <"�u�f�������-oQ7Ƚxv��2-�Z;�[��ʺL@=��̙��=��Ę�f���� ��	�����U���xF��9����-x�\�i����9B� P�Ӟ�}W����W�����<��P2t�'�[��։�Y�d��z��D�"�h�����%���� B����L��ae$uZ!j6/~����3;��EH`�� �@��Ao��]س���f/ʹ�9�l9�2��p4��� �m�2�Z��O���^�v��2����ʚ�ֻ�����l���z Wi)�C<��+˖�zg��Z��Z9°#X�P)°�bj�l�Q�K��S[
����<|fЬl�$U�R�ì��_��cR쟣���Ȓ�uZ�0�O�
o��N��W��$~Ac,���i�M�Ú�@��l5-�x)YNF;E"k�k��L
��D[������9�m�VH��<�V�ג���8�ؚ?8~�
l_P *^�9Hs����9���TK��Uk����q��R��Z+C�OO�6�j�    B{��	��K�'+�m)�)���t�h�FR��J�	��%�,�Ö!�j���gw6X��v-����#��VUĴ��&@����$W��!Iys�U��N�/���H�a�>�+��Iy/�ܼ��þ-�+ڨ�R��o��A@y6��#]��vvInu�m|�,&�ˏ�nH�?Y�-��;�P�����"�5Ƚ5GZ��k�[?�y8��� wb32�+���u���*k�z�1�l3WCB	u.���IZ�O
Ҩ�ۙ[���M�y#��G�n��^�K�|���<�\2^d=�y����u\��{ 8�te����6a���T�SU����s�j�5��J3��u�*����h�5 p"0(�xPÄ"vnW��C�͜	�+���[B( �$+�݀O�(����U䈊��pO�_X�L����*rD?�|_^�z�/[�����
p���]�RE�*�����&���a��vCB�w�C(���x�h~A�b�G�(EU�d�B���sC������~����{�h�AW)�U��U:�WH���ʢa)��C�)�h��u0�܇"�5�;�v���F��j&D���v�'�gD�Rw`˃���[���;6~�,��>8�����	L��������C��Q�f��<8�i�"DhS��"e�jk���J�?���5h��!/u !��|r{m4$���`F�
D�����UP�
@XH���#�'nI���:�%�ت\+bL!��<!�{ s�L
e�q]��$�|iMw�w��W%j�3!V�E��#��$� �5t�c^U�^C�k�Z~P�����}:Φ����i�g�ަ������#��\�>�R������1��à¼�$8՚E��;��g)˘^���Тh�ƯbSV3��KUA5F�[�B���z���H��b8�buG_xDN޿�"��*���f�60˫����O�+�(.����?vT��P��!��Cn��NUU�_NU�]� �p㢸+�U�0�z�6_���p8��xj�э�HA��o�1���;��j��Z��x#���k�+#n�G�V1��A��N������H�󝇐�T5�,�wO�D���R>+�Vj����{-�	lf;=����om�m �}Ǉ��*]� �!w''T���=�:�KC��ZRɿ�p����|�1K %���/���S���nj�Q����571U͚�v�9f@��\�ɘ��n�;��O��K��i��������:P��u���=F;�@��r��_ .B6�/�!�
x��v���@ŉ��켕�)�����	������:�Y�iu㱟R�k��/Ep��6?�`M���l<����6�/�^v֒9u����U�k�̜@,1���+��&SM�c�_d\30�,�7Uk��#��sLA�����K�@Rp�kY"ʅ{i�3�+ʬ9�
l�)G�~ePgf�:�ɭ���"m*~μ��x�C'.�%<���r��T�����k��O�� Ɏ�Q�V$��@M��SA5�D�W�M/�Պ�ĨK�L����Z��~	p�z�Q���(�ˇ�j�v���8��^SNg�z�=��B�v$��M����2G��ՠ�g�3lm��bW�tP���m��]�Q�#M����M `#��0�5r�$��-q�<�y�|f�ݹV�跧���s�#C?σ5h���ą��q/�3�Fv�p`�C�YBMgM��	Q9#���%�5�N^��]8/�wqpG�gݖ�	ٖ���Rj$��{��+�%�Ϲ�H�U���AA��rT��@1f9�U#�����}?�'��m8O�/�T��E.i�98e/cVZ9�scx���L3\,���d���ّ/F��]�S���Cf�į�55����}��j}KxSPw��%n������튣�5����/��b�
��:'�(�����?<q�ﾻv��:�Tf䓪L"ٖ�A���ȧ1�5�q��K�������A��[92��}�Q�Ƭ��J�"UH�������҃�@-��QU��X�Bx7]�
�� }D]��GФ���#�ˌ
>R޺]i��S.������F�����C3u�$%���yc���r���y�e��ҙt�S{�e4G�K]T�5IX��L���@����l�� �_A0�FD�̶p�Q]4�W�kw7$nՕ�x|yB�퇬 �DE���՛:�u:�X��䁬�������t��Ō�d��	���M���z1�� q��Z�7�i��7�{�IT{l7�>X�:�u׬7�jy`��k�TK�D�&�;%G����܊�����_nkf���j�?�;;cǔ�k����˕Z�L�Q�_(�)i�I�c'�|�r-!�1�M��Jh��qL�җs&�HIq�(I���9`��Ed���	��g=��2�b���%�R�
̈́�9����[�<�ӵ.k��Dģ�o��WD;�M�T��#m֤X����\k]���W��]p������0p�u��ͨr���:{2�յ+�a�L�!�\j�s��m ;k;��f�h�r�
v��O��-�e�q�`��)�c]Yk��� �t�8�Ts�c�l_��r&�q�o���^��X��Fl���tP�$E�-*N��rI�s�Ys�|�r���V�i��v8b���2=�Q���51�@%u�=�Ң�8{�ź. �� ��,��o=}d�2�o;=�i��p3
���DU�%�����u��E��/�³EU�_�N]�'Ū'��ع}ES(�pb[�=[�LcXyϰ֞��zw	��E����;�:��C��Z��]�8\����"DUz�G������E�Q*��6WyF��<�Va���b�x�#:��;f�����j��Ob�2��48�η��J���w���.��-�����<j��"�IΆS��y��n�5&�i����Z���W�,���p���ig��p������E����#�l�6?ND�c��3�@c1u���Q��!ݺ�?&�[(��<,+�}N��n7���$?8���:�3 Mݖ��wtt���Tf	g1�C*�Ʉ�r��́2/r�C�O��������X�"�s�@�ޟ))=��8�vN�ϖf<�ާo�/OG�������׊�f�Y������V�_���đW�6�#B�.R�QRb#CQ��(���������[��bܩA�#2������H����W9Y����g��G�i�B����~������u�7��}�i֢�~JW���9���9�
�^tN�t�`M�fi��1{��Ց����i2k�;_�"8't�V��6MV���E2�NjO��'��AND2#(n5{0��R�K+�<Mײ?۟0XcB��+`�u"ok~�%c��ৱ xr�$$�q�6>3_�w6�ZP�˘�B/Mf���R4�K/\X5�|OIy��Jԅ�
	%�����S�����/��(�02.#��y��w[��M���%����?>�y �J}�����t^C�}�ݘ&M������ \���Sm�>R.��h�e����$�d��3\ܳp���b�c��������ȵ�+��	_V�����a�Ɛ+��=4�l�nt�<�qW �7�m��vɺп�F�D��S�ˀ3vn�c������v��t�r�lY���$�z�yL�D#���Oaz�Yz]����4��D�U�p|����`�>��.����(�<���L υ�,��Jq�TM��R���]�|w�3��MQs��<)���Hјw��t�K�D2��5�p{�L��� ��(�/q���i�8/�z��v�1�f2 ���4�{"�������o�2C~&�4��a�(�5�z��y�����YAB�,�6�������9�!UQA���,�,��+�O:3�:���n����>_����@��,�?�{�IЉ�<XkG�����"�NI��J�|�z�:w�}���[ooӱ�+=M�j��]C�f�lJ���3��,�%���Ĳ���n��=h��(F�2�V�_��D=�1_�6��p\��ߔj^�ˣ��YhJ�$L�Y�a'v,�'	���Ί/7%2I��9
��    �QS�Ɓ�ơ��W�5�Nk�]��eԪm�+*�����s�i���w�v���k������#Y#�B�^htlCġ �;:�!G��T����X�=��v���!��TK�{�~D�a��k�8�"��B���+�B_U��є� X�j�/�|�]��U���T�&�H)ls�o�� +j�H�Zj԰�w�[h�V,ܐ�ro��k �*�k$���J^������T�N̘2*�{b ���y7Q�U���O S655���x�.�i�����z����Pd�9+������d=������7p���i|A�-�Ӱ�^��BJgi�`�,Z�#�d�	ɴg�=_�`r�1�ög��h�64q��O��H���ir�8�]2WU���v��u�5As;�1R��f��{#'Y��
�6���|�[���'��%[*�>y!Ǧ������i��/��;l(�0X[8��܆ٴ������������V�B��B(��@&I߁�aV�ے�(�m���o�M�9��S}V��i�6m�<��>�L�օ�9`�i���#���;�BۄgHG���%����-�T� �M�l^�;��#�󹴊Aȕ*���39�'H�.�Ri�<��J�q�&_W&�0�M����J���m<���8���N������l��ӽ�eDveP��"���H3!�	g��I�ޘ��J~�zmD���ߺ/�"������L����Z/��r��<��l��:7J7`_ȑ�<BtL�싈�!k�Hr&(,@�Z�"z��7��.T���c����:�y<�]�v��&	��'�W�ǌ��_��v�T/�ڱ�������@)���\w�qOC"�C}���BPQ��o�Q��E�_�����JH��$jL��6[�^��j��0:e0��r���3W6>�f�J�iy��q�N�p�fE��i;ܮ�O��� ѿ�V>g�	8�dJ����%G�L	?�(^/g�&��Z�����*��fsk�Ҵ�#�4$�HK$�W'n�sj�-"Zm�����D���8��?��"�&���T(B۬e��"�����曉��������m�I�Y�8�$ѶZ(�]L{@R��]��3 ���a�6���]���S�	�m�B��O��. r�p�w��J��i����`Ĵ��A+4�*�X�6�]��s��+5�i5�èɅ.
ycB,�̠�6o9��ۋ��)g[�%��TAa�7�<�/(I�n��	��/��r���Xģ����4d�6��LkI� ���Nt�-挡�HC=��'mu}��z�6ǿT�ʮ)<l	k��Eqk�n�~��ו8�-|>Em>�ip�G@��k�0W2{���m�����g@W[����)��i��Xٶ�BB�e�3���?%zG��KB6BQ}�h�<�M�:�d܆�5"T�ŧZ�d�� �BD�Hy_���R�T��Rx������o ����������S7�:	J��W.&� ��H��$D仔���Td5����΋l7��2/�ԍ�W�C��Q�C�)�"A�vC:��D;m�v4�ʪ/��+� c-R���8� v���;�GW-�=�\�
E����%	O@fI��Rz�*T���v}�]vޡW��QC�<�u�����`�25r�JE�Ep��+~y�`��&!������e��K������>�srH�����	(�b^�TE�p�b(m�66�޸����ʢ�k����*k��
,�]9�#�+H������3Qo��B�`^;mMP��h�n�+��"l��j�/z�=����hdF�������\���)r��LĥB�����}�l�琬�^3%<^�A���$9�R��J*H��$!�:�>���a=h����;�>Tn[S틵H�z�=ʠ"����|[�$RsI�栭K9��%����T춮�������r�R��t�?K_W!&�md-��`<Y[��������G'J�@h=��i;�wȉxvv:�����GdX.�ӭ����3��BX�mr��5�Qv{�c�AH�� �%/E�I���ܑ	���μ���h�����L'�����}���#�+$�|Ķ�n8%fH����y���mӘ�,
K�'¯n,��*�ZM �)q���G�?N�HHq�]?��ߊR�ϼ|��vwq�|�eG�rĚ���S H�o�tEh�j	���/�� �w��#����8l�� VKZ�3j��-af\�F)ϡX��w���m[�?23p��ڲ�0C���rn�f��h��3'x$J�k��@j�>�Nw�w��W�}�/m�@�B<���u3��""t���$d�*�'- �:I����=5	���o#)D�͞V�5e�x�7��m��=���а��6�k�(N���L�0I�3��Z�L*�cjQ�\�
�خ/>�GЁ_�(qi򨿳�������v}����g4�f�Qt/���lgW�繅y��Bތ�����L,cH�a��0�D���g���'El[nh��㶆��8^+��J�ގ��3�������A�P�Ǝ=qcDf��B��l13���r�o����l�~����e��|�M�ڨ��R-��,e�J�Q��K.׈�o����IMeA��۫��ޭ���=�C���R��F�Ͽ뙲�h�9��ȟ�C�|�ݒ�mG=����l�z	/8C���$��X�N�^4�L����s�q_A���Yv3�^�u��[��[{�I��l�Å��Q�N�wK�2�`�"q#0}�tkϪ"fW��CB��r�4٫Ը-��#RE��8W�b0���A�c�p��K�¾1��:��j(]=L$�s��](��2ح����P��b��[my�"�d��Q�1'vz�=`r���@��ͮ@;��Ea�眑G�cu�-m�7�md)��6��d�CڠP�>4��n}g�W��=%&�|r;�a�7]�k�e��vQ����7i��-,-�g.�����&�ȧ��G	�ư�ٸ�O��Ja����p�|}����J;'nv�,ga� ������ �޼���E��#j0��ݼ�WU �<���{Or6&��~(��x�R�����0�:��������z3W.8���a�t�M#��A�t�O��s�U�R�_ze%Ǻb��m�l߶@'A�|!� \ڬ�u$ kR�Ȏ��;(a��h;p���{!%����`Y
"�v�KU����-�1N�xw��
������9зYvY�Nˏ�7�s�g�����؋T���d��^*�6_Sb����!��A1�c���D����r�� )�k� ���e��!�Vk��EW��;��1�b�&��6��}'��r�=�.!��J���V����rZ��B����ؠm���d�}~���m/�b��^q�ȭ��d|{�ӞT��`n	W� EO��F)x�&ް�)�=��z���bk|��?;��G�Y��X�8��aw�$J�%����
�}�g&�#}�1��Ż3
�A,�6�Cޣ�X��<ki֦,f�I����ܨ@���Nn��*�P����g�Ei��|�Ӫ���7)��{�s����~�����n��KY�����r/
c���"�Մ���<�E��cM�Ӕz��	�f�	�._�Qgb��#H��A�rs�Ȟ�qhb�#�L�!��D�� ��4�qȐ�  ۷	��8O5ȉ�٩v$���;B�O?J��څ��K��oB�-�4������w��.��[�ʣ�ؠ�J�P�q-�/�����>�Y�k�21�dw����i�4WjK�;:�#C@� ��
����V��w؋l�b����!�g�Db����!Bg��ʄj{"��!�ģ6�9[���O�x�w�Ǖ�ZT`��Y��,�^�FMT'byC�c]ө_��#�8�H#��iU;���N���f�5`����E��t�Is�"���̇�z�X!�\�c��@��T��~>;f��aB�����,[�K PB��$�Z���#n�36�M�0�>dS�$G�p �	瑽N���"}�y����d�    �d�_�9*W�vk��rVmX
�&��ucYj��x�=�1�Y��-��o���ܡ��J;ɔ_ƞ�&��g"�&��T��6Y�Hh���w�"��yv!���������X���|����3l_�2�/��ԕrl�� C�y��b9i�T�d��n�1! �p�<$�z�-�*�q��M����PAA%y�J�%d&�"��%�x�Kܓ3�}�+����.5��x�T��i�bD%ˑg�v�����ˑlGz���M[�,T��h�Ȕv�B�
���J����~�w�4&@�cR�%C��K��־]���t������Jw��0�w,a'���;���k��9{�m��+n�W"K?�bAL�HMa@�o�륣��i��E��0���o%ơ#Y�HW$�EV@��~��%|p+ǵ�KMam:��C�#/��p���p&���YT�p/�d��k؞���u�F{&�%2N4t �+4�3�.���U��9�������.����w�G��]��l۪�&��*�E�
{o�-�G�dTӗЉ[����O�Ӆ4���Y2��4L.�R�_W����z�#+���#��̳tv,����s��i�/$�8��wv��-��p7�N�Fiޡ,f�?����` ���SO��$STv��~�,�+l�n2�	��]�wh�����Wf�I}�}'N >�φ�h'��a�ǿ2"6??��r���6��/�5�aY�&�a��������g��ɀ�(.F$�2�q�I�`I�JdeR�Z�S<D�����pV&F�h%���� -�2�\ ?}/�	����d�S�{��r�y!�4�+��a
H�l_��$[���0\��/�[1���%g�F��I��/4�Z�_��'$^$�B��N%O�1^iI��&XU.{'}����F�GO�*�P.��WMc֯<L��$� ��G�2rM��W�=v7@.��x�"t�'Y�xq���Ğ��qa)� 7�MNbH�,-�g{%t4?�6"�gD�O�� f�*�}����Nr$]5�?	A�hBw������߬�`������-u�徔G+o�}�7��v��E2����jD?��k�����	����qA�@�N���;�����jqO@�)U�/��8}�|u{�Z�l�K��q�2��Do�V�h���n��g����!d�1C�(+ ;� �V�6���mw�7�/<�<�S��I�Ќ�i�%?	kŕ���Q�j�v|n�P��f��0���?�an�q�'wlFۅ��1~�qo�����VQ^_��'�*����.`)YSS��}\�tOM	R�5ah�������a
jbo:,�p�QjE6�d-,?��nQp�� ��H�����.�=+3��� G�ڜ"7���!��?1�v@Rl'Ȧ��.ZU0>B%��4��r����7�:� CV+=��.�=�"t����<�&j'���^���-�'��m��:^%�&�d�0�:
k}'��(���N�n2H��*�~�Lv0�ƪ�  �;X.V}:/_�%Q�F|�uF+�v��Gk�6M䓓r��#�X���S�|���,O�i�oHGr��e� �W2_�޸��M�Dqf�#���'9`$ADBd$_['��NLH_s�mW�j�9N��<[�㾧�|���E�`�Q��Δ��q �aa�Q�ET$��`���{=�'��%O�RǄ��R��<9�.��m?D�Gd�B�]���CF�A�.� )&�O�w�z�I��؋�$��R3�?���^ϩ�L�#)�J}!A���uZR�$.�N
��$�ڈ�.���t�ˁ
�5=���PP���|;}���W�yw��v�2G�X��d��kc>|�s_rF�]��m8����7N(ѧ�������B�RռHo槿��!���BCq9;�^*�^.�PIԋX?)f��M�װ%Τ��+�j9.��4/( ��5/6y��*M'eK	�DY>�.Pڝh��kdBܽ���!b�2������!�3�?�W�{:��OQ$)�DF�w/���J~Or���:}�²=�KnU�<���S�˔Z�y��>]���ՠ���m۪�j^`�C�'��<�p\�i�P%�K��Ec�cb�'g���tA�����o���ߕ���7���҉�%����M)d��2�)E_pb���M����un�a�:VRN&Ar��0x����g�)�h�<�ڈ��hMN�R���M�5b��S���4W��v J�i$W\r��R�A�o�m؈��?����Y<)/ס�� �������!�DF-�Q�'�j�2�'�u�:WX�cO��-k	vNRж.^�]5�qز�3K�w51T������F���w��`�=l���7�����۬��'�xJ*0�$Fß�ޚ�ډ���y�UkM�2ABF^�E�.�����Duq���2�V�f�vK�$3x���{��~s��ux�v~���\O�w_ ���w��LԻ�����P@4fF�_j�@��U(0ѣ�o�b�/�OI��Ls��؍D���!��i�s*ϙ�,%�''�'!�� �����3�*?�6y�+�u=�%��/H��}{}x��#zW��546i�Ȩ�f�P��T-����=��&���A��]ƈ�M�0���ǁ!(�R�~��#.O9��p1Λ��	�@��c;;�w��b��_��>[���y�i[^՞��#9��K�'�fG�|���_BA 6Ro/��Dl.
�[�{e�}N��4l.�]���S�P��j.�V��5M��|+�*��:��O8fa]�'z��9U<��y2r^��R@�=�kr��+�C9�D�A��qE�r���Y�1!���D��ښ=��܅�=W*�U�[�J�z�k�^�/�R�J��Qq�#�hrO�r�i{n/?L�v- PyCx40�Nû9���|�0�)�,��x ��i�|<��7��r���"�p>4��0��	t�h�k�jÁ�w|R{�6	�m����1�~h�<F�O�"{�:��9r�H���Ojv�uBx'o7l5���B�W��q�Y�F��m/�V]��=�AZ�aE�f�������Qc[��1�O[���{ag�pO�ݙf}Yc,��3���Ҙ�p�l���92s��%�X����T�u�aG�:���;�V]8?����?�L/$K�4�_acP��P�\���	�"�bC�ZM��)�/�/d�\�ϧ�б�5�i%4��&iR�b�ۉ��q`C2� �u�	
ź�b`��m�砘�3�ușD�(�iZ;�J�S��Em��;�x��Z�.�1q�PB�5&^��0�d���(?�3'��V;���s�+n���r!���p�+�%D)�f�>5�C Z�H�4 �8 ��$*���&��;sq^�.Y����_x<i���e<���LEV�T�9�JՊ�Sکm	L�"��/�� ��e�Y�,(N].H9��bR�)�sA����!%�<��Vo_:9������Cv2`S����1�gn���4����9y�}�Z*���0���^J� �����1r�F"ؕy�*�q ����"/�-ܥ�������S*�b
�"���c��*��2�cT
���U��њ���a�z�i*�V�,��˻%�t�(*�;*�:� �nt�r�#���Y���Uz}����?�v�+y�:;}��<�g8�,����g�����D�r���t	�_
ؒ�۩PW�
���QA��\��2�_Y{��pE�R�k�P&ś��1?��J�Q��8ߐ^�'��x����������O���rPn���_n�v�0���"��k�@7�YA�-���M$rጝ|�*H(p7PuT�{F��SqX{ZaT $����F��?u"d�N ���]`��Ut�ɛ�UŦ�����������p:E��ꎸ�1�p�`�ʮj�%�v�̪�F��}w�!k6��m�3J�G��i�咪i��iA��3)j�'����J�g�".hH����G�����~{�����I���Y��;탼�ӟ���h(a�m�i�Lh��a�}j��s��f>o�&��DI�؛�۷$5��/�~���    ����o�]�#�-���\a��&%q��U�,gW�-��n��.�a�Ҭ�[P'V(f�x8�R��I���^"9 ��Ar�\��)����|P ��oӖKA��mL1�R*��|7]���Iw��GE��7�t��)*�/����#�]�[ �l*�[�o����>�Y��bжb_`�>�F�7?��������J���x�4�Ѕ�o��K���HҧN����ne0e)V�0W�*����~:��%���Վ�L�m��I}~����߹���.�?ٓ
�ǧ�Q ?��
�R�w�J"/{޿����m;Mh[r�V^	�_a���3�[J����OT�!ᕯ�(j.x����6D��2 b������+���k��v�z\� tx�-��Ԏla��@G�VX���d��t���N��fmb����B����A�ZW�hB�lD�Y����z�l$ ��o��[4���2)4U4���o#�[��:��#�ڮF�3��4^�~��&�^�@�"�ЃR$�H�Ď�rI��Fk��D�o|7�yg}a�7�A���[�;�/T�O�8ѩh��q7P�~玨�]��z.�8nzf/!�;�^v�Yz����+�����$�SR�ޚ��B�|I�|������r��-)����\R��,�0�}���������8�h7�6� ��]��]@Ez�yv9�K�uy;v"9K��r�aY���cvq��b�gd�" �Ё_~b�2{��,$�t�Z���	dNC �qQ�� -���v�P�̎z�����IWج�>�0�����U(@.�!������$�
�j�\Y�j�IA,��3�v�p������ARThdA��q��Cq����9�2���n��?npR�'��ku���cPi�`tr!��
�tn��d�MG
c���=ۢC��L%���`�^�Ŋ���pA��#Z�ipz�u�ۃ;��lm�>y���a�C�ox���xv7P���Naz���+��ѹa�Zkv~��ڇ	!I����Y�*?��m8� �ِ�G��9<���,�3(C-ȏ�&gTI0��}Ӓg��"ΞwVS��}%�����p����ڲ������I������=��A�HT�;�`��y�/H�f+!���k���q��߻��8���12��o��/�9~�%]��w�[�jڕz�ҳ�7~MsO�-gɓʑ�w���ޚ[/�N��i�J�X.|��=��9��
�R�aEr������t�ٍ	R��L{�����*;*%�e��b�wGJ��4���Y�u��q��r{{��rԝ&=�JԻ�V����FL�-�u�y�qZl�<jXj�YNC�綻ƂX4%BX4� ��AJ��yGmD����4*p�A]�Eъ��py.`�\�>�����B^ƣ�~V9+@�����JR�v������v�Llx�y�6L� �p�A�o��@*�G*�s�TA�G�����y�};�\t��N,#��N:��B:��#�xJ�gh0���am6 H��Zq�On/E2��!C��3�T��#�vX�z�=�!�0�au�RCצ;
�Sz���	m����S�E��Z����[�8��̄w��nU�����U�Q�r��|����XIi;
�ď�i���TnSO:��!$sD:<k� U�8��BzG�ǳ:�\��+�� b�wS��վ�k�0��NSy^���/5N�~޼��>|�˚mf�'��%d3;Y��6B��R���,G�N���h��A�պ{�A��;��84�:j�-�*��!���xބi�<��Fg��[�2Pvx��S��*f�\
�|����9PK��UeDjr�ʀJd55���^�S��+����Q�r����������č�f�D䵓M��`��z�{�/�^x��x3t��3��h�w���U�7�u�G'��~%����(�H��F��c
{v�i���n`��4��I&w��R� ��?;:������A*} �I#|c}s����]o��G�
�D� Aj��g��ަYۿX�����73K6�yތorzsf��5��$Λy�mk6F�5�h�P%�0DY�<��2�Wf\�&�B��B���<����;�E�S����ѓkZW�H/֒o�k�=��o�5�T�F^9F=��4_"�^�lL����is���3N��Ͽ	ma�g��(��3�]���+6rP &Ez�P�!��Es��+�9y�mm�wf���!y?pzО>�SjO�ab���\+�H��J�{�x�b���'x�矜�����������:r�j旗kW���`ؿ��n?Uu���/���C�4b����0�!0��_�7F|9zp%���ͤnZ	p�2}�7�-Om�o�\�|G>���t/���a�:�d�1	��M�S7��ἳ�O+3�g1���\(�t+��*��,3꧙�3+3k���/T9��Դ�\�2�Ld���/;Jk⌕�Ɗ�{\e���ᙹW��GD`��2#H^aC3��깛���G�v����.��|�� L����e��H6����K�=����"{�����������w�5�K��Q��Q��Q̕��%�|����?.��t���ۜ��X�ؑ*sk�=�q�vG*�L�e��@�����+b�]���E>W�ײ_:b���T\�g|��o�[*���8$u�˼�cp��C�ʕ��w�̓�s^ю��Ge�K��dG,��&��H�����F��֙���M�.6�����{c���V�y�]3_������Nl�hER�<��?z�{�iO�A�o�Cܶ��h)�� ��)��J�� ��ߏGR�BxO�܏��Z�����*����o��}���#�tK��	�Rُ���q�#�2��a:�\az�f���k�������ǽ�7��̳>W	�jL���QD*t�ξ#���E������o�/~�s��p����F�F�_� (�5'�{�p�s�ۡ���V"{G�4�de��a�U.��}q=s��,i˜(2��7�hZE^xY�/g�I�|�����(K���k�ɰ~=�s�*��˲
U%�y�?kJ {�/K���.��B�OP#������W�E�:�H2y����LJAy�WM]��c_Vk
	�;�[9��V���H�Ζ�����U�i�dj�;>t��ئ=����i<v_�r><0�iO��Xͽ��ڀ0o/�$G�7gI��6M9���|��$U����"��aA~�GW�y�/��,��:�Z��uR>Y��=]�6���n�B �f�yS���h��:��d��1ܞ$��W�>k��g�m�#��wr��|����O�W���/s�{��܃�L�fA�I��/9���I��,C$���z��faV�n�Ğ�<IĂ~	W�w��w^�r{�$P���^���W.�w.�r�1rA���K�^��'|�'R�Ճ\	�΂cO��#�>/#n 2�n���D0���͵"4�=m�䃝:O�!�mU�H�p9��CA� �5��Z O~�x�޳&�G��̺^��`'M2������r��qo1ͮ#g�
3�Z�h
�x�*�bl���F���:�S���y:�S�q^��f�u��=-��"�;]Aހ }LE4]Ҙ��å�>֭���DM2�Q�\� ��s7�̢�K��#fs�
������=�SUZ�v���i�xx;Ĩ���9C��ˍ��=���tF��G/��:a����H�@�	5xv}����Q0�M��=Ҙ5C��<��v�#�1��Ӌ"h,շd��o�ʸ�tR��xc�U.(!_^)�7V۫76�IN��ɰ�t�����P7�h���=Q¬�ngiK�[k�}!����Z�L�L�j�R�����@�� :7�~�f�1�[NR0�e _��El5t�=yX�0�fA���,�օ�w�ޮ���tN%sFȭ��@�v֖��!�pa�S���2V �@�m}��|r{p�j�9ՉK�GH%�1���ؕ.V0y��rF�<�h^U��E��9��u��hfUkq�G�(��$|v_iT��˫F�a�j����{�xu�6ɖ��ߢWv�
��u�!u�ˏ���ܥ�P�su    �K8�y�B ���B�Ϲ�J�a����A:�Z�m��D�7�+�@CK����{�&�*ȓgVP��.�cYM�g�U����W�s?��k�.�ЅV��ݔB'�����Ϣ���AY�lr�e �1�:��i��°���饊�,Q*H�jq��Ư�M�?@�;����9"_�{�y��>R%x̦v^�d�e�������aKƋ�k���D�����M/�gJ�W`�g��xwzpC�rI��U�sG؍��L�
s.��QoWM��������7��Ǵ�B�J�(�@��,a �}�P��]��P��Gm��v/(D��{��v+���Ӿ@t�l'�'ȅ�'�C��?i򓵝O��Q7|�J5���4'���.
� �0~�M\�/�mL�b��0p1#��|N��;i-EEt���Z*����7���|��xk��0ĳ����bק���q�Q�L������F �3Xc+Ԥ4®�}�����k\AZ��H�C�h4)���z�E|~2v�U�e�#9�޺ ���Z��- �.�Ql&���Ѧp����)X�}�K�ƚ
�蜎�M>��e��ҝtط�c�:�����CL��b����Z�����r>V���f!�5�7��|��\EU1\Cm���/w{ �3���Ra��ow��(�ۤ2��p��G��Ph�ܡ'"��6> l��"����Ս�˸�S�8L���?���)��Zx4�%�]�Z��� T�V�r����!s��?�^�<]\^v�]|OI��ޮ�P5�OnoYOe6J*�������H�����Z&=Z���a��. ��H�*g�-���dg��w᥯�6���Fc��-� Y?�#��*�����{�ȡ�bR�7ӱ��^RB�����Kʈ�*D�ܑ�� ��p�O0	}r{�q2�9�s�g��x���
�e��v��#���,&,DwDf��}j�\}���M������ɽ@5���hoSH�zx�ǞWt�쭇a��@]���P]�1PԦ|Uy�P3�,����u��}[�������S7Z�xC���% K��B(Ӂ�ez�޿���o^�N�p��o�؄�<,(�e�r�̼A�g�ǡ.�44R����#u艹� 3Cg��0tt���:\>@A��RB��RJ|UF��pbgA�7�7Dm�����޲��?�/�(����':(d2��~�Pd�Q${��'�J��Ҙ�ъ���DM#.۽|�����3�f���e"Hp30�i!&l6�aFg�Wd=�+��mE� ����a��:Q|����ո�������Vf��E��j%ᆘ�f�9g �k�o�$
b=�G�@��H�͵�y��<xB�EV(A+goA��.4�5�ʂ�Bk�Q=�c
&��k����M��ܺ5�6�Z��כA�菑�#O8ÿf�)a3�ݚ�ץ/�q�8�U���y.P�k��td�
g�U��iS��H���où�������PQHƯ	��:s+����Q��u��w��R�0L&�+��ӟM�:S����n1�������B�>����zu��?V�}�f�a���~�U���5R\�0i"9�6\o<�5Ym�ob8�&�H��]���Pͣ�A7I8�&����:��v���7�Qj�qu$0����Ð1#�|�s�Mo��n:�_^�?�ѥ�̣q�\���\�f#0˱�:�-[�I3�$k?I��/��4mB�ֵ��U���*�)s�)N��gh�;L�U� f�;R����x{k/;�A���6}��7���>�7��H	qyZ�y��^I��3,��X�y�vO\M���k�Hnh�ha]�q����>�ϻB�fG�D�~7��+��r*��9�h�L{.u��i�" u������C*I�-	�˰�R�.j�m)=�r/�����Y�E�,��F��n��
�2�BP�2v)bǂP�������Y�_N�[���¸����R"����:��t�,�F?p{2G7*��&���*��g>?9U�8]��3;��Bb~����ה];�����&G<�-� ɥ��A`�%��l��F�׳��@mK�������f՚���M@��ɋ~w]��>����Q��2� ���w���E�����1��B�.��ZA�'���+��2�&�h�l�!
z$�WƱ�W(���ꨫ�8b]�>hF�y����0���{f�Qn�w0�jBԈ?$Q�%ZA�F5�赿�H�<��J������sAƺ��i��o�g8�u�$��=����ŰD]�Eۭ��� .q�Fi�q���y1��7� �{�<;����>}f��>ޫ����3���^���Y���	X�b#`.Yr>=9P��<C+)8��?I`�C�m�Lf��6ȱ��ԇU�iZ�~����ǳ>�i5���̼��~��E%���D]�A�˯E�t��W�"�W����Cd{]���I�ʦ\��\0��1\��	ZgW���,ŏ沞>����Hk�/D� �񭙾�00X׵�w��:*~�_xDc>X���?,�A�}fր�%�a��E�bJ	M�!���$�vq&G:/��E=LM���|ggڿ
Q�a̿P�M�	I��.�˪��եF�H�<��*i!����3������ۈ�cS�$�a�"u#`�{{��l��1*����nШ�T��iɄ>0-�	�V�^S���s����L:D���oB]�9%���2�tG��Ur:�+�4t_��u1۔�@����_�1�X6�iI������̤V|d�n+#r���Lz���k���nP�� r�����t���K�;���Yw =_��;P)�������,z=�0�ج� �K'R�뿘�.�	�qƿ��t�H�^?�h�A�0u��S�o��7Z�À������Q�*P6���p�	�GͺD��tAʛ�-�)�u��q��E�����5�
�x�Y"5k�!��á��!�K�|�6kR��H�,�����D��L2?�#��gV8����%<�n�X{��޾���,l�dvw ��R:1���"��g�aK.%8����&+]&h�V�A�5MV����B���s���nc^e��鏩���*.��u�e�G7v��ҟX��--�.�t�=D�e<25Y+P</CL*,@��Y�14_A2�fE� �`��d��Z�8��_,PM�(��'�x��ǑL;jP3��f�V�ny�vv!�����&���F܀tnP��x���eV�/�2�7դ,�4�����.��J�E*y�Y���eP�)�Lw�7G�*%0��"��B���z�=rfIth��b�ςCM����R��+=pm�r1�*��������%���[�J��q�i���e,I��Ii�V�e�����pi �!
��Kb�gjK��&3��i�fDO�Jk6�7�|�I��ė)U���b�u�D��B�h���ѣ�b֜&���p��� �pOmت+�faF"���Ҝ�hV�6�����1�}�t��42�;�m+ &�L�r=/G�lw���v�%g�@�T�a������Ա�]γv��8�Aק?�p��_c�e�w�de�+���x��+2/��Kk���c����Y�����$]�=�Q���=�N��T�v.Tyv8�M^e\m^3�I��݋wWd�9�d�Lˁ���|{�K����]Rs�Pc�4ɛP�DѲ���<j��X�'��!R�Eiό�5<|���H~�w0r�I�\!�6�m��S�t��#x�F��<�pZ���?|QA��6_�4��/5�)��Y�������W�A��J����'Qv���Y��kGJ�T)uOWx�U]�$ឲd��:��~)�v���Лk�1�~�ēg���gj^EO��Er�E?��:q]���^�/�T��XԞ��v�2�;jX��U��G�4E��*�XR0a�¼~$���nE=��͟��� �<�㑵 f��2��<�,��Q�:�e�?�l���&'T��$���!T����"ӡ����|%�=Z������IFc�ٟ(��l�����3    "�ɓ�nw�#�~�~D=Am�p"6��	������mzRvNyh�1�l��.Of��d�N�ӟ+�7�t�@Ĕ̹fc�Y�a��|r�̶_�1��fە;��FJ��VԪt���)�`M-`;�XX����1o.����̣-�)���9n"����\�G�z�u�v3dM؟������2pǥ�;ER\2��ڮ�4����I<�""����U<3[%�x�6������2|���ꦝ�(�>=='*��P����*��j��h{l�C<��{b:zd�G�9�}N�vc��"��[W2�v��+Χy�hUD�Ot�lge�x�S�兴��ps�J:�9"����znI ���>�+ޙG��-��tr\��%�﷉��v��.��}DSN�v��Y�dH���I�γ-]�ER�y���["��~�>���mכT����;��C��ho�Q�(�8 [3���+(!;�����:���ټs��n�� ��o)7E�N��G���,���4��]���F��IM��>���6�O:P��<'�R�_��(��N��� {��=a�j�1=	w��x`�=Xs��s����L�p�ND�s���)�V9� ��6��{��ic�z�L�f:8vgP��9�"G=���K�E�¢���<q����+�����{t��^`j�;t�V�Lk�������]�,1xr""�ĳ��}yf����T���g S2PΊp�l�s�=0��J��C%ye���C�K�#����~����"j/���i@}�MEW�S��ӧ��$�H����L}E�2f��ͩZ�<|Wh8q;mM�.r�n$f����~�R������0���Zzܱ"]B���X�+xW9��m�[ʙD��V(����:�������y��*���ۇ���|�LK�@��}7����vA�)-S�fo�u�<���gwJ�Bˍ�BO��"��䃐��{�?��"M!+�hg9�x�Vu�Pd��g"��W,'��~���<�^�
�k%���KކB����.!�%t�v���5�h{�W�����дh�(Z'(k�~꫰�ٮ�L����篹J�<��\#K�%���K���Vbx�mb�C�!׍^��^7D��rR�醃NU	�Kw'G�ch��dm�T�G�Y>��&�G�곩;h���ī��7/���Y8��+xdҫ�,����~�1�K�	NK�T��M[h�񋿵-��5�H�vi����8X��Ȉ�8��D�A[
���M���s@FS<�J�x��r�� �(�e��V��Y�ԍGӧt�\���*���Mt�'Ѐ�����v���t�CC���8]9�)�VGi�M��I�Jº'QMݲ�
J�a/L�����mJ��-�������z���]�Qe�}!I���8k�6��ɒ�f9�Vk^E��9�����Ϊ0��v�-��?�����!�|�L���x����{(���
�:v�72t)�&dJl�R��R1I��i ��U�j_J�ōNK{)mW��v.���qX �%۪](|�&���h­ӻQ#���=I�֎J�e~Q4�;�r�����$n�����r��G�(k��  K��q?�i��Nc(��7�����pU8��dY��#a)C�ۯ�h�Tw�6@yot��1YP/i���҃2/��W� ��щg����� S�n�v@4}CS ���P��Z���ڥk��T����I/����k�&��:�W��Of6����#�DӺ�@������"_�_�G@��N�I�3�)#��H#\FT��x���Os���ݠNBK+�i.��U���٤*�vJ�!�ſaġmZ� ]�xZk ��%sZ1��@Y��Ao Yt��z|�]$p�L���3���KA��x����& yL��ma�C6�K����㋬���WY�L޶����%]�p�+��4 �ҭ}�����y�Yz�8q:M[�%�)�D��x�W���ޏ�n���bU�2.��h�ҷ@���8*�~���L��4�`\���*���s������.�����W���Bm�,!��C�s?)��<i����E Mx�}��^_|7]n,��{�Ӯ�;� �jvs>��y�X�}(S��K��NpLh����εF�G{FE��?/�p��:^���oG�&�?�4�h���y���j@����{��=kf�"p������B���JĻv�b����.;�h3���N��~�!+�O�kebtl{&D���F(�er��I~.��[I~L��_h�nZ%�;�o�Qo�J-����`[�($i�&��å(4��ɞ���ȋw�y����u"Xŭ嶈�,/gm�{Bk�jBܴ\������&�'����M:.srFb�]��v��<�.�n�Sr1���g��e�!؁J��;. &n��"4pU��5PIs�Zh��ǖF���ms�nXs>��F7�9~�gԢ�����`z`�oOE5#�@Ž�I����HX�"|��o�B庀�ņU� ��QyG��ph�1
Aھ�#�*��!�Ty�0i϶�K���c$<�G��2(�Q����p� �/��)Sz	O��R�\�Ҏ�f�u0c�:��E����.hOf%	����:/�� 9�!7�;]H������>�C��Ԟ�������.�yܨi��Mf^c�*$�Ӛy��8�-*F\��c�Z!��,�qB�+�{"�{N��0�Qڢ�]�4Q��vZ��Mf�����U��♾QE;*F��Y�1��ݴ��
'�8^��,������ݣ�1���|.~x��!>�bf!|h��������V.����yٶ�\��]en~�4n2�4��'�� ����.����/~i��4��\_������Gا=�����\|js僞���Lٲ6>U��L�����Ƽ��!�W}OnR'�
�NNg0I��X��g�*G, �|�6!�i��Ze��B���*�1Z;<'�}��]F��v3�*bo�j���x�Z�2�ί�n>�ׯ�.��1QTĤ�;��:5�_E���|�..�y��X��LaFu��	��
�&��7yk0�αO�:����r�μ����n�F'�>�9RړrI����|87@�)�T���pr�O���&R^�C��bD��
PS4%k��.D%�3�H{���Y
=ڡ���ӟ�C?���hދ�>����Z��.�:�ǧ	�V�[ٙviتX'SL�v�x6��=��=���bf�L1��FNU�0��ǒX�J����#����Y���L�� �m��:ةD�a���Y�ҞV�J��͕�e5Q������}�/���ǰ'��߻O�ডʅo�"��?xw����B@�'ڐ�`"���ԍ��@%��A�VQ�r8�A��?$�W�W���}?|���NZ��=#O2_�vϷ�x8�W������
T4�1G;v㳁eU�3�������vǵ~��ʦ���n+ Mx�#j�DB)�P\0E�/<�ќ��o��Dm[B���2A�C�,ih�^�o���e�S�R��=3�FE��;�"}G�5G�Hr'�5`���� ���RH���(�7j��M;zc|d��1M�[���߂���� ����ʿ�L�ww�}��XP�tHP4����KR��R
be-N(X=�f`��i�
������R�e�v���2�w�sQֳ�`K�C��t�gYn|���aJ�`�.$i�X���Qx������E_51ű	;J��]��̃�vTm��� �Tq~�ء����Eۊ����%(� �}�ZVAF@���8Z���"�v8���]~(�$܃��CG$����$� ��(�g�6��^�1w4i�OGx��4�g�$xq����Q"���@�W�&��iK�I^KY��>�t%�>��!�������
�r�[(������}�`v�P��E�l1Y������S0�ǐ��z.�o/��C]�r������祱?���(�ƞ��������*�fE)(ঊB��-Rk4�ʸ���~��1?Y�W���֢t�n�������n�<��6=�_�"!�qs�Ĉ!��&7�^���)_��޾�믘�7�����9���	���B�?J�*�    �T?�9t��N2;b��O��u���#����&n*�t!���;��n2/7�#;�O�Ɍ�4�Cu��l#I�A1}H��kN�a����$Dv�u��K�v�LA��]~�g"h�q��,�8����l�i��e�'�qs�.�e�	D�;F%D����"����h�(V�[n�D�n.r�JӸX ���A� �9���+#�4������=�E$���PO�6����&%*�.8v��+J��#e�� J&��d>V���C�j7Q`0���]�c#�� ��Y
��g�^�+\� ��,��@c�vL�!��D0FVU�8��/���eU(w�9��z=g (=^˪��J#�y�Lfp��̈`>kjD<�*�~�2h��0,�w`���hI&9U�����`pn&�rGa((f\(,�7�e_���o���1�	WOY�*�`��)j��Ω\q�tʡ�J딃�jb��Q��\�FI���A��eb.F��v���(��<����1�b&҉R�j�@`d��A�B0��щ?�� ���ˋ�O�a�pD���=��VnK��W���2��ތ��ڿ�� �ۢg�5��iTƢ�����^J!�݉T� �v�}=�ۗR��*��0|�'�E�>`�[����(�1� �x���5��P(3�{D4�M��As�S[,ڳs�|��b�%�_�k̕���鍥�_���� 8�k�É�� EJ�,�W�"U��:6�����̨O��G(�T�J���u�*.,0�X����j��xtEd> ^�+/q��1�KF���հ������J����'9"��2��d�^��Z[�ř&w�}�l��G��pGܗ���6E��{��U
Gk�K���ԄI+�7?��Da|Rw/�nn"&���f���怓���K;�y��c���n��g*�������c��}a뗐|^��U�wˇ����ZRT��$�{P�+xI2<)��p+���xV���ZH~�6��;���������cH�����;�#��<�����tqt���-����Ydhy�I�W�ij�����ޢ�p���vD��z�}�5���G��v��]��t���vN���Kـt�=y�b�k_F�T���rg�a�o<fc7�<aY���إ���v�o��Ѻ��%y��n�04pqh�>mp� �e�VښP2���ּU9��!�kY�U�����!�"T��վ[�xjN^�U���7`w���f��S��	���?�|�	ڷy�����h�	�![ϖ�j�/KD��#Xj��nIh��gG��K�z�_��m`72��6�ﵑϰ�2��߰,-�ؤ?+�i�1
f(��7�x�&�;*Aַ�ߡ�XQ|{��ԃ;�>X$ӵtr�6�y�|�u���)�������\帿[D@u��*D�)jE��#��F�D��EyDO{�-�a����H|U�AÞ٭�Q_��/��Z��/7��}�,����IArV��ŏ��@��>��p��������ʶ�T�o��t���?�N������wWrɶe��3��xC�zv�����U]��j �`"I�����ڌ>�|AMǪ�Jj��Q����~�`���;@tl����k�7�SeH��< ��r�+qi��ƹ	�̥h����&�n�Q�y��#��`I��l���	���D'>��*rjB_F�W���C��q_��tݜ�<���-J�143[��z��.#��q7�$�G��Qx(���^��C��W R����l����+SKxs����ꅋl�w֘u{�_�ǰB�ﺻvGC���=�����jp�7"V�^�n�_8Q#A�$�����zEg�����ī3g���~����u1P������^�JS��
�,R3����F9���<x`������E2qI���{f��K+VP;��Y�C�?�3���ۛ9l��%}�N��n�d7W��[ud�m��f��>���?�P,��]��o�5��#L�>dM�Fj~��-��\��O@vUXa���=���B�s���g*��`h+��		wA@��I-`��"��3�����u�m�w �M���1���܁or;�SK��q+?x��s�&�����<��oJk����X?HFd���y�����}�D���aF��S����W�=�5:p���m+EJ22۸n���^G'Z[���tn _��ϩ=t����cg����ۑ�f�
j=�o��G���9@On]��,Y��C�)$������-��ew�e�G�)S�� �?D�������+�ⷌ�\�1��"��<�?Iwp�:y�������c6�+�6���)BM�K"�rqq�{�	�����&uͦ��W�e���&�^)6�g�L&�.L"xg��� ��O��ig'���>_I����Ⱦ�v�/xHƔ�s�J��[��냵������\A=��
�ϼ���չc�ͷ�p���@ۛg�U��C�����,�x�*'��H "ϖ�@�8�@ m�人�E�ȳ,	rǱm��&�q��6�1��T����(<	n#�M<��t��fH��[�E�=�������y��-㰛	Cm9�1�V�ݷ,�њ�l���`:��u~�ɗ�W.f��*�@F�LSk#�=��t�?�^ZA1|~�Uv�����rR�c�\�'�ǒs�Q���֎���3;P�VZTQ���/�Ym��YN�+P)�MA��M����]�CU7���ؒyt�W<F
_����7����JɎ�Yn�Hz<)�sԙ�$��gN'ee�dʝ-�p ��z��N���L��v4i�P_?�Ԁ�7l�;���^��pk�z�_��4�
�h��E��:�?�'e����B��p��}��v��b�R��L�8P�#�J.�xs�.؂�	U�{�	�����mu�e��Sz��	��l	O�n���ZF��Uy������x���$��\.���v
��T�t�O&��8}��id.'O�#%�[�IN�#���q���N��{*-M�^�0��\�6��|ڗ�ֆ���{�9���bq��:E��'�{g|���G��gLgU���H�E��^��(&��5���G���ۥ����i��&�y�/����	4����`l\�"��搇�.������0߆{q���M�}yʹ�͋�zyM�/H����FT$���n�Hʍ�ǫ	:�@�j;�q���ё�qJe!wC^��R;��(7����*a���,`+����<B8�C���(�|Fn����p[�����N�W��(����Mŋ��ъ���³��ߒx�AzP���$KR}�a��;��+�ڹ����>��(����K�g�Z�]�_m^Q������9����C�������0[���:�f�������@�7w�Db�j�j:1��+_�NZc	5A���E"˞���������yY�#�&��0����L�i8���|,�@1?�t��|�ϲ��_�W<f%�J��$2��Hpu>6QXg�/�>�TL�ܓk�������1ˢ��	�mŲ������|>↕�X]u+�#�q6D�
P=5���
d"��A�"�]�)���K$o�]Jn[�v A�=���� �뎩%���~#���c���į��[�vC�W\����ޭ���V�!��>��c���Pߐ<3��Q���������'���n��=T�_�s#bLT���>·��^Uf��Ύ�I(�XђxuZRv�\UI�X/�̲i�,'e�J���(���IL�g�"�d#����Zw�V����Cv�v�~I@�@cqnI@P �Y��"	�n̠�@�tW�'ޗ�������5*����p:S=��h#� �\d����%s��"�(ȚJ4M�mF�k�i�qp�/`#�{���P���2[^�|�������E.+X�WPp=��!�;r��r�?��'>��g����k�0���i���3���/�艟�ݠ7�����J���4�OJ�8���z��N<Q����.�L%%ڳHC΅�i���o�=y��>.>-\ �(�$�HV~�i�    �E2�3^kQ� v���c�/���6ޏ٭1b3��+���a�a���{$T6�s&�TQ����6�+�Z��f*���'*����y��$��r�!D4��X���d�8�;�^ ���n��Q�no�A��#����v�|J��Ө-�Q�/���&􁋲�"2l	��L���%�T?�`���&���M�B���8'8��7�y ����R��!�&sV\ҹ�j��_�ǥ �F�aV�i��-ю��_����&c3E3o��]�����q5�~Q��>$=����y�KN?��x;y4����[kZ����#�A��o�CN���ti�,�ii�B��tlm����x�9SQ"t�$l�&��z�I8�.P����`:�K��;��֊N&v_l���T+���X!8�'ވj�IM6�RFed�e� -I��6/�� 	2@�'i���3G��p�?��87@�?���B
j,F�(� R�S�.���EE�G�C� ���t.J:� M|�x��/0g�!C� M�����\����U��H��@M\�~"�����ٷX�?ގ���G��dtkHZ�H�h;n��p�� [@b`�T�����.��x�(~�ު/w��'%Y ��#�aR�qg6݁��?��;�O��ܶk\�'���ÁZ�sBM�s�HM�%@�md'%��%�H=ՠ7}����̦:P�}���d�hpe�&�;���2���c�,�kld<�ŹJ0�Z�\�.kt@�G���m���Y{��u5��0O��Z[v[G���|[�p�g��:��ȡ�:���>9�y�b.^�=��*w]� `d ~ ��hs��'r�1kG��[�0m���r�~F�������%1����ws�ߵ8P���Щ��E�DK�X���rHX�Oݮ�9y��tV�ȃ�Gźj�X�ՠl��J��b�]K����7v)����#7��~���"s�-4>�n_!��졆y:�,`rd��
,4��qAw�����Dv����q/��{��|�
,~�/�Zƕ֑��vW����j|)֨�%�����:)���71���z�n���W��puYh�ώ�N�ji��l����� �\#0H����4�=�PCd˕��BU]v�(؝)�F	C��bm�"��N��K?���p��ȍ6?�k00���q-*|�+���N���2J��F3̒�����q�!���AL'�xN�����&TR ���y��z���_n�[��3��h��N�ANȖF@u�����ZDF��N~��sl�le���;E>a���e,�̇b���z�"1;�ģs����x�Fҩ����D��ؑQD�T����g,��D����Dl��	;��ۜ��B��J��ro��J �+`�P��r��qV�̛������_,�z���	�5��|z�ݑ7����O��{����$�g,��9~�M*"�Q� ��<����6�,zLo�]A��䗜��+�˸g���O� d�h����U����R�rf���2�FPQq�?ui+Q�m��# ��[�D�zt�b��t�إ�f�a�@ņȞ���)VA�#�)��]�� 1 =|�	j��|�2�[T�s;���c	I�GB��lYH��9���A&���gpp�$�����}�++X!fN웟�t��*;��<w��(c�3���0t��NçޥC�a>���LS���9�5Xɚ���n)?�Qe�ذw��l�+� ��pk�D�(��Kw��HǊt-�aSE�7P��"�3Ì��Z3a~���c�`��m�Ԇ���[����������LT~�y�����3be	w�;>v ��y�h#J�����ӣ.��Mb�m5z�֮���x�-����4vO�+�9��*[M@_4�,cQ`%�>FN� '	?&>AY�d�� $x���w�B;x��\X�zp.��=�h�a#�o'���O�;��&;��>x�e�9J�w$=�1c�m����9��&��V�U�O/�_o��Gt�	���6:�Ġ�.PĜ
`	V�G��`?�I>�חM�GmZ��"c[��p)�k���t��&t�l��MR�qqLٱ�r Y�eQ���W�'�zHn�'��e���Pjt�<��hMBj��Ԅ�,��v����D�Y.BWJk��fL+� 2�2ߐ�� �#YJ��R/�[��,e� ���_n��q\p���﷦��.U6��(�s����N��t6z�K�{BĈIm�s2#R{��>�^N�r@���,(��^�%��:�.ĕ�*gU�"�֯w�Ȼ�b��?x�SǾl�PP�V������i��q_\k��CY7�c��6*(��jh�|�51d���e��#��k�]�r�veޟ����?���K����hӈ��
�s���GI�_o��@��si��`:��핖g��˕1�v*� �pb6� �����r�:���gբ��[�؅Ȩ�R�{ZZj28ƺ�&�Jc���k+f��W�.�Q���O�z��{����n�3k�2�q?�4r���� t��\�;`טQ�a�>�r���K�,B��Hz)xFo�a�`["�`\��Z�D�
"�A���䆬��ߌg�{0�n=eo�E�$�y�bg~pGԷZ��o���_�R��۶eաe�c��<��I�r;dЭ�;�l_�H��tM�c��~ǾU�����=��#�o���vn��[�*'�To<��b���	���S<Wg���s+z3F�Kb��U=��P��L�Ēw�#�"�r7�!E�l�9A��9,-y�\�9�C��$x���dD%�,X{oQ�l�|qƿ������ζ!�-28#�+%���������I,��(g�ޣg	&�B�DP����v��+̟�wa�c]t�TY)<�)���[�!�\l�%�"��Swb�D��C�&�Ċq�4��$16����ì���@Nۖ�]�����Π����������Qd�w ;��/�QR���mJ�<��e�Om�����k��E�jV9�>��I���ˤ�R���v���);۳���� �6�ʡ�|*��ܞH
ę(@1���B�0��V�#�[y���@cZ�%��L�!��VE�G@p����\� �r��h���T/���H�R����k����7*��y��?큱|{j�
Io�5��n/X��곩i������.���6ӎ��o���2�o�K�d�Y[�|mU�`q��X#)�B:Vx�Qe��݅k����m����h�R)��@**����i6�r�����ڢ��|$զ�`}��%WSjj�$�.���r���<	���=��roሁ����yKD��� ���S<��|�jHJ���$�T�v��~�Tec��݌]�̟����\�D����|;�H��/�y#f�Chu��q�����TK;�(�'�tI��a��nj���=��͸`�~x&.�\no�n�~�A�d|�c�?�H���8��^��	z$W)�;k�դQG��lQL̍u���V���jr�{@�^gj�u��ɷ���z����:W�ft�����IK���/�	a#q^nTi�\�����/պ�K��ۑ&�V~g i���}`d�NښZ�:a'k���c�?��ӳt�Sm� �JZȺq���|3k:߆�Ќ�7�5I�h�QJ�4%Q��xo8,+F�I[B3Z��#�LȪ jp��GX���&8�
A��'�� ���$�_5K���` ����td?Q����݀�ޚ^,����H��^�Y�j:�#��EjP���^H7�i�Hm���6��B�̏�#gj��FSgYMlJ��˛��OqWi	0W�8�'�L�a�#�t��r�;���ŉ[dl���MQlE]ɺ�"M-i�4?t����Q��r����~u��U�@Nl����+��W16�c��+ت��8��<|�m%B��t/��oK$�H���\{j�)����r��Yhkݽ��ݭ
�{��{�4��p�	!UU�"5R�"]��c���eT1�P ��    ��f��嬔�
a�9_x�G�N�W�2���	Ы� -9#��=�ٕ�kN�y�\�!L�QC��˒��z;5�֋7˴�o]��]�T�Z	��{��U/�1��c6�?��F�:kOQ��&��/iP0�cM��ے�T�½E�:H����ԁ:J0t��WqmC����2���_D��z�9��X�.��.�������/ڇq��[�+=p[��W��4A�*�W�2��V����B�$�7,�S�����MRG	���FP5�F��@�<��
�֣4����V֒ �r,:�_E��� �6���)rȽ�	�S�z�3��o�Lu&J��	,K�UƁL.��Z�,ߜ'�#��<�g�Gu��~�r��'hMXCX��b(��]��S��������E ܬ�Ud͒�t`Ц��l�����uGܗ����D�G�4�������iw*��8�#5�`���<ù��Y�j��b��w�-w�������N�r{��J��5D�ʺX:�Y��yPT'� |�R����P��"�~�Rݙ�>{j��m��h��'e ���Ȝ�sq�Y�ݮ�H�B�r��,�-f`�u���}�@�1t^���#9�$>��]ES1�;�."`U]T��A.�U=Ue	F8��E-'a���'��B����88��w��'`�i�G ���v��L��|�ļ2�˕H�	Xu�)k>݂���S�|��Gi����X,^��Du��1vv�u��(Aˀ	k�O%�[�]�x��$�#�L�ߪ�����;.�a����=) �@���4��aRHln�L�D�y%�W��q�,���[�ܕ������+ص�fo�iM�Y��E{[Icz�U]��a��Z� ^�qS����Ld�>�D���r���V9������(�~�����Y?���7	��u�G�0��Bƛ'H����T=��<�	 �SV�ZW�Rm����J��n��I�sb(k(�
��Dh��^��A�u��;�S�a�,��� ��n�����Y���y���%������3�ܱ�u�<�jDf�WiL�j]R�;)�%�����6����T��NHI^��������|��%[H�8?�ve�PT]7䷑�[Y~�ml�f��UC�4^��8A�B2��,���ucmoD�k-ݓ�Ŧ���&؁Wi
�u�Fg� �U7�O}�e�L�K=���@uS��SG5���C��h�W!+/&+�f�\���ع��q� ބM^l�(H�X&���6���,�E�cl��QdVѪ�k���K%о&:�0�[qϯ��ղ�%�"��	�)�OQ�u��>�%���iK�]&t�D|�Gf
.����4�i^��� Z8DPc}�fZ�.���p��2�l��McۚfR�W���zl���R�Q��H���@�/B�j�\y�+0���{�#���w�د^�f��(N���(N
�j�ZGF�M�Ѥ���x��,�d$5�v5�
	�#�_]��{j����zv�յE�����O�\��0��n�q[�2m��u����,��4Y>��:��LV��P��D(`QQ�S7," V���ulnq��A�flV�GH �"Aͪ��p����(�ygլ*J�ؕ$*S�h[d��x� ��H���QX��}v��ѝf��Ż�#�9��<�(�F�J�M�Z��0K��vXզ�&[I�����qX�&�L��2)���H���C���p��GH�݅�6Ya�`B0C�I~7��3U��a�>@�6�x�P�z��	8��j3�2��&S����0�plvT/2a�Y�U�/�z'�9E�Χ:ÅZ&<�Ad�8����]F1�&��7rB�7p� b�u�g*�QT�E��$�+ �6y)�DH-e8�Z�6��U���D�Aݓ�k����/�$��1�e"V��)ܖjeFM0G�-�%.�"��8✻6��y��,��+��y#�$m��-2G����xff� ��������kO�;A�����b��p��5c-����b�7	L������tA��$8���;��P��@t�^�j��v��	8�)�!I�}6��{[
pOxdΕqF�cȂ�m�k�u����)ĉ�.3�;d�,��h\� ٦��_OH�q���n�5 5�j#�%��E�%B�5�+����2v�E�`��ܵ�P�*�T�˚��b�,;���.S�h����n�v%Pg;�^~�'����eS[1�	єx<�F�B<YSE����N�!j��.B�իKC�	��Y;�xDS毇��P2��8���������W;n�q�*����=gDypY�t[�qb?܎�@OKÎ�X�צ��m�!3u��iC��B_C�n��m�@,q�E��t,&�ئ��5�5nwKlN>�����ᧁ����y���Ez�S#3L�(��{��p.e^?5Jc�So��mL��r{Jk���^^�������HM�M]�}�f�ۍ���zԗ<�1p`b�AS��[b~�x�(�C�@������o�;�#�`�=���� 5���(J���ɾ�aMa��k=���n��R����4L3yuح�p�b��mPVe��d�x���V!>d ���7�(�̥��+�"��A�ȴ5M�~ϪE���-Z�F�����uM��+�ك������q����Ώ7F���R�u#CR��fƁ�L�kZ"�WM�;��Ήl�I5D�{�@p�b��abM[� �]���Axd���R;��Eb��i��K��Cց�<5��jq�oٻ턳f
��:JK����n[�ԡ I�a�VDH"�ي.(�w< ���Z�\EG��.3#�3�̪%�'Á�/�,Zc���@А�4�$�37��7�L�f�,�o��8F@4�k��	�]��h` H��1"�%�A:L �h�5�]��e:&9�>�MNfi[$wө��8��2Y�Б��ZD��'� �+D3�n��ue���pyhW�$�OLF O�Ѽ���
��s�p��y�f���x��I�e��t�@�U��'����2G�5��F��+���i�����G�]��+p�58�~�Z��]R�jN�|�\;�9��?:YfD%�>2��dy�}�M&(�;���WiJ�V2{���o�0y�A^��jRC}N���h�m?84�=v��	���n�J.�2�e0�c&�0Oa���S�?R����D��X�Vuha�'h+���|�z���>eǴ뻵����]�1 �܅�	�%�s��[��p��-,z�g�FZ�$��`A�Mp��5���MÛ�����6JI�~"#J�y�����ˉa�S,�j]^y�yޡ�5����Z����)�1��ԛ����t�ޜ��(v�rknࡥq�)��*���HzO~��"�ZHQ���k		�/yTM�L�܉�kLoG�8����7����0��4;wD}�ҕo����m��+Z�4��{��=���_n�y2m/ �e��/?Bc�|�р0��i2�J{χ�=x�ۖ�H-���4���|���#�d�<>��<h�|�،v4h^�A�䠌v��pX���";�n�4*�"����R��߿V�A.
�.��@>�Y�;y�3㸆A��%~��<0�f\��=IS� ��������oW&�hw�h�_���$ƉSp�����o���&��;�}��ݺ�p}v�L>���O�����hfz^֗'(�L�zx��qt�n�j*��υmI'�-���{%E�WS��b��}�����J��3 ɩ!ހh#XpO)5v�����������z(|Es�h���[��!>X��~�&�E�/�T������T�����n��ȅ_
�N�!]	��ȧ���D�N�NZ���A�����ʔ�Ay��H�ƍ��!T�R0��醤0<4�J3$����hJ�v8��34��4[�w�:�Ꭿ�t(��W����W�l�����&e��凋&�`�����"u�Q��@��@�����ƥ�5��q��k��ge�^��c/d��J��eh��3ѫo�{
    ���_� ���@'0(�n�h���!|���z�p�砭h����Q��ƖG29�G�7饚X�'�L��OrR�D�X|O���V���#�9��Fʌ��p/6ӎZ����nl��x���6y<_QO���-�YN��kDp�^�y��E��e=v�׉8j���k����B��M$C����QXe����OT��VP�l`o|�ꁪ�0�Rh�����TH�2���'��/cl.�ˁ��"�5_sc7_���m��.���^�����"��Q\�h��ٿ�q�O�2�m���A~ܕ,%��@��?��uf~�6��R�@�SN?�i8��k��A���HM<���>R5{���eb_(��J����������w�n�va|z�Cr��D��̈�_���%��v ��'w�}�l����W_�a���o��N����0� ��ɷ�����{)�3��K���7��6�~��WR�FC&I��A����~�`�;>��N��������Fơ�+�uq���ʠp�MP�]�_���D_��C�vM���ړ��گh-I�^��Q��F�5`��S�ڽ�o��K�(�U�d,����C�m(�>��HN�Xt{B��:?�-ds|t�b҃��ղ�>�Ԍ�?��\x�؏��X�Fg�3h�������0�$��(���ɖ���@5G���T��pvCTng��Vw�;��?.�<P}���^�DZ��&��:iJ߭�����_0+�=����WǌLi��L�U˥+*p5ғ�_��1�Vm���g h����ԃ�E��O�('�˟u��m����{ ��e�w$;�i����4V��_~���ga <"��P�B���n�g�U��?^�>sv;��"�-�ZfW�/(o�������R�K�g�d#c)%�Th�m<^��(H��5���_!��Gn�,���62B�?��o��BZMӼ�t��>� ��/������~|�'�tv���y������4����<<@_��x����G����Qd�>����7ڟR)�8�2� �¹��PR��O�Y�l��!�J�AlE�]ë�q�����{�����.�=�v>O媿s0����5����h�6����n����v�bgܒ~����^K�h��r��pkk�����.�ߍk�+�k��X��S���[��q;S<ş�Y%��-!�|��4��{y��#1a��|�^�ᰂq�ۈ"N1�V�F��1Z}��Ӊ�s��B����pSe}�?�v ��yD�����݂�{��nb�˚�D�=`_=^���a�T��d���L�~������[.\Р?n�tJ�l����ģٸj�����Xs� 
f{3��[�%?�K����_�H��tz�=Xi������?��Rp�΍x�/�T�Y�u[i�5J�%������7,�$�JT�o�a>c���φA�tx����[�`q}M'Ѿ�N����ヺ��q��2���y�������H��r}����(�0	J���}����RB��X)}|�-͟;��)���V�i�{��PnL{i�U+�J�l�E�l���	s��f3��pt�l�C��	]�'�ӭ�ʞ��1.��ؤ[V[~H���-Ɂ���$��an{x�y�7�H��������E�	��&9	u���㎘�q�o\I�d�2I� ��2�-)��s#o����˴�TP���U�K]Wv��c|�L�����,��s�ZkJ�>���%�/�a��^l�i4�o���(lk��p�L�D���e��g�p��/����4^c?�Y���:�����7n��n�$���eZ/����N�H*�ާ��>�k(���C	�>�H*�ԔN�Jq�]�V�	�(\���y�-�
y�a�S��Ï��co�mY����V�k��w��iBB�0#-���D�$�}*�j=x�+�n?W$���ß��'' A�k_~S62��L2�H#7o7!?��钬(���OZ\��O�5�>4Z�%�J4�.�
�q�8���{K#2����FS�5*�$�v� z%&8���č��8��*�~���|����J�Ѹ8S��ot��@�Dوot�H�	��I:X腜�RH$�{�r��/PBʁ�Z�m�7�b�4������_nW������ePٔ���j˨���9���?���a�B����^�%�$��BiO�� _�x ���[EԞ �F�B�t���p�(�(Qs�uϮ �°Q��.9�t:��vbҬ�jR��V+��@�toM�~:����L@/�D�s�L@r�vo	0�);P�bP����<�_n���wB ʖ�[۱��b�/xDn\9�Û����%�rM�\�E�
+w����#f0	;�����:��K'�HBY�p�0���#�Z�0��ڧu�['G���/����v�T��CZ/yɣ��������~��N�	�����΅��?��k��	�!���(nYR������u���kITg���,Ȱ��Q>�gR"z�Q)��"��ϺFq�Ci�
���n�ޚu.�ufx��n��)�v�v��-���0���� \I��4�������LPt2o�Y�<��p��V�s�����>x)LFu5�!� ?A�בbeT���rZ���?.��0���B����m���S'�_�m���o܆�h?�3jT����w�j8\����>+��3A��P}h����?��V�=���'�}&�y�6��!�2׉h�.�x�66�s8���Z��)>Pͷ	k{/��˕"������}@N�TE��)���u���#����ͥ�P����~��qu��Ѹ�>3��P���;�����ۑ?���rlo�n�o����I�֐���q;I��$�2�Ɖ�ؙ}����_����*yrA�"�7钳ۉ1~�%UCaB�M��J�0��l
�����]X��S���}}��+:N�Õ��S��{�	7�a6�~7��=n�u�@����͇�YX��8˱�-ZT��o����+A�`��A��F^x���J�F�축��@ic��b|ޚ�ۀ��&�J�����	B7�3���� ��1u�n�tO����=���q#����p+h�m����S��m�U�-�qY"nJmye���΂�EU�v����|�f�9�|��a�f��a7ْI�ݓ'D��]ɖCz�iMW�g혮��,�^�	^y��;���:�J������/(���Ӧ��&�\e��m�����2|!D���uC�h��H]J��a��gr��V�wW(]n��ЁZ�%![Qrٿ˼��nH��6�<5m��2���܄��n�&V2n��i<��G�u�1�c��k���y<9Ç,�}��M���i�`U�4_ڵWrJOԞx-�VM����x�XZ�9�����ϙg��m�E�O]����6X��V��|�o�E:(�����;����D�8��m��_`�8����>� PaNL���[q"͜:�Y���t�4@zJ�]3D�=��f��c/�~����|��fYe0��J�ghw$ڷ�q��٧��s�-2�$�
f��,k�� xR���i�ZR\��mh�ܘ��,'�����_ƶ! ��I*b�[���O.B9���6*2��~�Ck����4���g��#�_���(��̇����� [bח��Lt=We�?�+�7�T�: :�0~ڛd�k�ǟ�k�C
I��#ZX��L<�u/�G{$kL^���7�}��.�a?u��u)�G���E�(f(����Ā�N������A:�f�5r�_~_3ZC�AP������ܯ��	�E�gf�Ҽ������ɞ�Á��G�h�w�1B8���b�7s?Y'��&��ݶ�W���
�#��{�������ˊ�|w�8���C�-�����6���$\��*p&YȽ
�k@���~��l9pOü6��H1��B�*T7��HA������O��VU�9��#�������rI����@�m=��.W�^��xrL��͹q�w�'���i�]�(#��#�䃘�    I��h���|���	}�?��v�}�ܶ#K���Vf� �� l@$��;��0���f�����-}z�;f&9A"�~&*t܈D��������l�Jl�4��x�M�/�{oI1�\`'����vҵ�Z�\�oug��=�tϫ�F�\g噝�㡄N��Qe�'��7�.~���O�eUn~�����7�G�\YE���%�dG�(�����sq��@7w4���1�%�>H��'�$��=�N�p-nJ��Z'8�>�6>uL�*7m��=#F�� �j�Du��|3'���+b��׮?3���O�Hmf���Wg��_Ǆ-}9�5�C��[�C�g(������[���aT_s#�XȖ�&��N��ю�E���Z�9���E�k���F� ����4kõq;nu#�D�4��SM�!Nb��N�"Yc�z�y��p��YI��e	��1�����ni��D֬ɑ��|�_E�ҾH}��Q����>t�N�#������E64���T���ސ�A�[G,;���gR�Xl�,�\��u�@ͧ�^Fs%]������.Y\�R��i������P����o	����<Ľ�a�],u&�U��UE�c�b��eE�b��5r�O��(��&����Y���0Fd{�n�p�)��]Ϭ-�^��5����B[�j�i��o��c�@��*p�(	 Xօ�5I�bα̦8B��ap�$��(��(ˀU��3�x��=5�TE���qLUq������P6$��@�[ 7�N�7��%T#�8�	�J�+���ì{�"|.�0��˕�]�[v6g=��̸0�����2H?u;5q��t����Y�d�����H�����Q*����5�|?�#F�C��GT�jFy���s�]�gm
�|���iz�3t�ۗ/[¹�m���1v��p̜�r��1]�r+�����dX~9�Fi��Y�9�[pN�F%�J��A��m��1a�/r���;��$�Y��Xv�;\��`��>���ڲϕ,���>�
�*��C1�� ��Fs��I���6�h���V-��q����+�I�3_!w���\{�(��%���Ys��M�F�-c�Qw��ܞ�M!(�X=z?�g�\IQ>p6�C����(>S6��M2<#�O�A�r{��x̻�KK�s�0S�)p��_q�
J�ڷ*A]r�|DY��q_5X���&<hQ�lc���������N�;��u*�Iֱ<6Zq8�����d�ȳ��S5�14T�e��[;W.��^��܊ �Θj�k�����C�Z��\ 	^�a�1E�������%L��N����Ŗ���"���W�8~�򠒿=����s���ܭ{C�1?�+ʤz�:�ߴ��F hH1�/'� �g9K9q�>SD����^�oNԎqࢹ|�G�6ZQ�ߒk������4�[Ԝ�s/r;�m\�"�6�S�7�A�P�k��E1�1�!>�������Ɖ۔���M���yMyQ�ڗ7�Z:J��JIᦔsP5�9T�pY]S��cHWb}����|�k%���̽���<ɇޝ
O���ٶ�I<�y|	�*��q���QZSO+/W���F��C�n�;�M|���d�<��JiZ�����q���*/�B���_���-Kf� y�U�(�w*G�l$��?7��
P�\���(yY[�zˢ�D�B�$��س"��ԯ�˖�*����$��k1�Q?�W�X>��3�@�n³��1(y;�������7��ß�z����#���y�={x���U��Ϋҡ6��ڍ�z��PC��`1]ˈ�	&��Ⱥq�0�`o���H�7����?�>�x�ë_@wZg/�Au���� ��9�e��TH�!���o��ߓwxu�G��	���oT��]I!���`$�����g�qP-]�չ��x�|�l��G��!�@�xk�wR"��Dʪ���͟;V,�ĵ�{<u'gLj�<�v�A�Ks���k- s���>J��]kb;�F���W�}H6b������u��/x��ET��W9���m�Zi�jl\S�l4+P�zY5��;mL� ��^~������'�6@�@ѻ��E�4(�>��������{��H��RH��-�R�z4��� �R�Fi����f��{<bj���|��c��4��y�P�Cx\�e��N,�rz�"�uF�E���T\;t�w�p�\@>o�@�� ��lF��[@H��y��ش;��]|!m��ۼ���~Jl<.s`ĸ�:p�a��Q���zխ������?(�E?�`�$�7��RCWւ����G�F�.|mP)�7��ތ���kG�:�{P�h��P;���Fr{C�O�a���e״�?�F=[|�a4�0l�$��~�̴kqϑ?f�^]ׂ�B����C�\��j�@�$}�3t�ҧOܱ�p{8�%�.��.�OP�+]�dR|��r����?;N�J�9۱�d���C�7ċ�ro�����p�V'���VOݤbY�I�N���>�:I��ŪX�����gੱ-ѳP,k��"��'7�*�^z[�GD����3�s���/ϛ�`�Y�B�9��s��8�(�%�lT7� ���x?8^�.`��H��yÓ��PV!��M�x=�<qd��1b�M$�}�w�<��g�1���Q�Z�����]�^�H�s"����fj�.�ʁ��ڄ�������QZ�����x��qt�G��|f��w��Ҫ�����ôE�k�+�I�#tu�l���ܒ�d���J��8����֕���úPoǋ,�J�pvD(�]{��l�=��Yng���,�豛tE�ԥ'�R�ZgJ�k�2��iQ)�8+�h�������r�p�L����T��pP��X��ե�j�ҤG���Yo5TJ���-����!��r��+o &�N��4Iunמ�h|�`wQ�zlE�<��U���n�[H\�"�t��tIB�Y���� �˿�S��q0��s3Ђt�g��6�?w�:�8��{�i��*�b��\����M�v��uA�cjJs-���mZy�=���XF����ϥU��� �$�po�3�NOM��ȫIIڜ��ԧ��xE^�o�s�?�k"9f?,��ܿ�X0^@*s��4��ݵP-RtY�8d��1&nl�Պ��gU�BQ���öS ��+V�:�
�p�u	�`��� �˳�h��{��F����*�tO����=��s�)�=�/������׋~�R���rh�6^bE,V�h��[T�x�x�o^�y>�M>J�#�������m?��ѳ�H��]�GNn⤼_y¬|����w����VB~j���۴�w�A�^�W�T��R��/�kNN����<q:�rE�B��sXܣPHߗ��K�f�F����J�2j�gj��'c���v�ч��	`n���� �%X���,J,t���Ξ�56��R/��A/�t�KwYMK�&>g\�4�s\�˘��ry���]Q6�l�;��.��$�0��mM�m���,��q>���ȢZQ~���{?J�ti����<^vJ�ɺ��'fPO�.��
�������wȔ�A�m�g�*��Ǘ��ꩲ���SuhPH]��2W�Ӹ�ʏ�Br��%��&ս3S��j�7�m������S��/������x�K�eF�qCc�WZ#������Q��8Y�T{���>��%�.7���$�y��{_۟I<�pEG],������V�x;#K���F���m]��v3�ǵ� ����	�M��^�n@��<AzȽ�?�
����]Ԡ7uάb�x�/�[.K|Drj)hN�S��Y�8��p$�pd�A���J�c���PR�6�uW��nE��T�|���B(M�b��
Ġ�SI.9�$��y$
��V�Ĥ%ZA�b+H*���p͝K���KѴ�6�]CN�Q/(�v=��a�����S��]IƱ�KzQ #E�ym��Is:��o���\�?�&~�#�Nw{A�@n�t[h��n[RWXw������{�u�!<[�a��I%�y�³�It=뉵��(�    'y1>���|g��5����֋�5��q����s�=M���T.��9�������g�\:���]u�#��5R���VH�z�܇r�̻E&0��KD S��O;�q�_�G�w Å����b���q3��Lŋݙ"���w��:Xe���"�>k�������^�6�����QO�{����̿!{�
�V��pe�lt�������IR�Y�k9C��z@=��u�H��c�)W����m��ڥ�p`vt�G���n���(����Yh�x;M� ����G�t�(W��q���+�`�F�:4츪���P#C�#F�#gIz\`X��� ��XS�>���r%�����y��p#%4�^\^u�JG����w�a� �T�P��2����}��fC���׎��k]�j��Է�`ӳ�U	��������1�����v�]m��f2�=,�Z�ڝd5-��Nx&��q'���Zi&��H��� U�H��vγʓR |�Ά�E܍IϚOB`y}ǘE��77�Q�пs�p�e�}��̪4Y;��&��Y�Ҳ,@.q0�����-���ݢ�Y�K�v�;�U:j����\��pY˚�Wt���c7Y��|�t�5̓v'�Y���C}���k�_8ew:�!�/����!z�<��[&��oe�|�|�AW,?]���E��sWi�k�\>*�Do?�ET�>j\l�M�ײ�?@e?��gzǓ`7�0�@�_��k�ZɁ~-���b�!z����#H]_�hK8�Kl�9x%��v�yϫ+	�h��G$��T����!b�wN�I}���,~;tp`��4��#���������px�׵YA|�:zdC��0ڞE��E�K�/��K�A��?��n�H�<��Є�d�����N7�����{Z���A��߯0��f���s��H�z$ta���s��/˥u�)+�
�{�ei�ݱu��k��y�;��������;ؒ��{r��:�\~7���2��B��o��:�ހ����<�D�E�;ӕ.��l{R|�l����
b{��X����۩!�k{Y���pE$�j�!��H��Ʀ�T�%v0�U �.�j��1ݰ ��m2�%aϲJ*��34˱�YV��pނl���|�\���r��虜_��F�r��u'��d��閪�J7ة���������VR�5)�.+-�����7��{�e�8*��Y�K:�~�zv�����e������������G�&����3�����k��x�2 �g�ѷ!��6E6�&������ @�gY��-Zcy�B�7ltw ~Jշh���۰�ݍ�f�q}iR�&��:0�����`�S0@�9�x	�[�x �T3u�jI@7���H��s�KA>�Tq?I�!S&Q�>y��7�Z�
�]䵓��q��%�aH��Y���4�.gH��.)�!��;�D��Mq����!OV�j���'�/uW���垕�'>k��cT6��ʦˆ��V�9>Ʋ�"���}�W]Φc@h�#�ӐE �>7�H g�C�]�\�5w��
�	!X�$&L`��j�!:�4��x��=���"t)[_���p"!�9����t�m�������:g���.Y-$�a͞�pk��gˣ�pƒ�;����J��y�[<"�3t��ג��_� v&�|(��|�
t-ܲ%��~�|�5��|��ȆMppF�f�������</���r�ᖱZ����^~?C��Ԃ��C�2��$���Y�ZNX�=�h��Z�,�l�I~�ᯖ��� ?&"m�C�*L9E亩�gC�'ƚ��W��>q~�`��+T!Tx��(F4�]�D�=��Z-��G��j�7�G;��'7g������f�8���tr?�Z���ֺ�uvٝ����7����E�g�V�Cxlxi�� �N���RIi�l��	P�Պh݈ix�L��
�v��jt��$��DK�ld{G����Q�M�H.3RE��щ	�Oܘ�FT����y�K�=��HU�2��X��\�x����$�Q�E6�B�Ykzޮ,7�r��*+����D��H����S��%�ha���|5 ��qlJ����*��S@�^� ��dY_~�v����(m�T�8��c��M8L�ڄ��:��������Z����[�Z�g�b��;[U�LW������د�r��+w@�xƗ��L����R~�G�<!�⚅��K��¼��<�K{ː�E�U$Y!��/�,��E��]����Fcn�O�ь�o��q<^F����шħ��Zh2G�|���s�HzD�O���x&�+�!��l�?&�=����[=���W�W3���@�,o㱐�ϟ�y���Wq�ɫ
�����%&�zx�κwUQ��PwV�H'��L�s|�r� ���␀&�S7R�-�Au��*D7�2�?ros?�XN7l:��W?xc\z[�!�KlK��6CgS<�J1_ڧ�+�B/N�ݤo1��r�w�AE�K��Y�jc�0��� �l��<n��/�2��ob~c_z��|UY���33n]UB��w�ٹu��h_˸
!_a<߻#�#0��g���#Id������K��۝�	،MBbl���m�b�=�
�����d̾�6=�E�a���y!X9IE3hцDLL�5X{����5Q��v�$�� Z�&G�|W����\O��"v���;��EV��"Tl�����JP�L�lk�m�W�� �����cUՆ�q��U�h]���Is*z�6Z��zcU�4?��ϣ������0�_�^��l�E�&�W�N�'�OG�"#8�X��Z�sǲ��r�w��ڮ:d���\�4����
�T���rG��@}���������QF�p��X6��r�©�rh�k���N;�����x�w26'׵���R6UC�($YJ�T�Q��|�����VC�^|�F��~��@��E[�gn�\��P��o�9}�n����R~�9�i�M$FS!��2�Nؗ�~�b��
�bp�W"2��i'�����邊Dg ���l耻WG�������Þ�˚��=?��n��3s�ϋ'�?眵K���JJ-4&9��]�*�$���3_��cۅ%���vi5D����@wo��k^�B�+��1��6U[�zD��.���P���l���Pl��ok5?�X������U�`ɞ3ӬPs��PS��Dǿ�R��8R�Rd�bK9/FS/W^�x��\��U/�8�����U�Ih�����z����P�lF��^��=�$pq���k���x*��G�#�R��i�%R���u�ޥ4ż�ŞX^<��n�@c�^��kǘD,�^-� m3%�BӖ�ze7`7LVy��\�^e��RI�%z�l�ʅ1�Fr
w]���iի"tR� �
�ԫ�~�3ɟ�/�}�ݚ��H;�+�ќ��ԫZl�]��� ���-�U��_g�&�;�UK���&h��2AT���[�3$<���pL��u��*���t�C��M�0�Ί��~���0�׉�P�­©D��}JRx�m�%�E�$�ǤRh�Ӊt6�%'�:HgSO���:���!���W�/cfe�[+�r6m}�؞�0��a�d|fo��y�KR��#�����V�Q�:֣	�̉7W煀��>/ФQq�D���K��B<��z�=������o���g)��E�݉W�a�#H�d��P���ycޝ���a}��K�6�4u����5j<*P�f"<�>�!����Qk��ڝ=�_+���isc������۹#�˔�5�옳u��Րt���u{l����w ��J�J��2�4���@�o}���.JVom�����i�壭ޞF̩��E���4��~N����<Ä�>�>���(�0�x�0��E�".�o���8�"g�KM�4���IUl�җф�Ȃ��S�Nݻ���`�^�ؽ��8e��S�)����$[�eXD��$�!�c������}��� ��ӗ<J�^~����3U��E��B#T���ԥ_pW�����Q��    ���������Q�Jp�����*\�C�Y�#��� ��M=7��ӥ�ʃlP���^w}w�<�K�f��">䩻(ڬSWW��]<����)C^����WW�rA\�F��կj�����ɰ��Λ�����]s��w���j�lv]�zK����t�u�2�o3����9���q��3��:o�����{No���_T��fԩ���h����8����uib3#;S�3u�}��y�KD����s|]`4b�a2�1e�H=����0��9��=uU��۰�%��V�6KV����KQa囼�Q+`�>N�&kn�,4M6����2,���M������p�iH�x�"��5�*5uS&�?"�y��8�l�P��c8�����
��PM�nj��4&�����w��)��ڦ7���ހC�I�R�o�x4#aѺ]�w������Q���Ղ��]�h�`�9Y5��8yQ��m&6�����-(�t�	w�&��6�\$:�a�b"�X3�^�%�XdO$V������d�ҽ��zg�/�ʂe/t�U/���7dG ll����z�i��1fcn���T��ɏzu�Yo�Y�� 䉀�*D�.�S��I�e�����TJ#��6�ti�$�z6v�P�R[6�KVDxD�B���m�R��t7��Ѧ.��e嬆ƭB�g5 �JX���R����m���;��YE�v�21�3�+�:4K�>__�o���~�^G�p�Y	�f�tح�\��=v�+/ą<s�jE��GP7�:=Қ��͊�Rr�IL�M�U�Z:��d��4��(�X��Q/]��{7�fK�����M7��>6�ʼ��M�K�����
�4��SP��UF�=x���ͪX���Rx���ɖ&ѵ13�5M�ҤU,�v���d�E���o��Ov:|�Nm W���~t�U�F�7n�I�4���*�K5Yib@d��ڄ^�����i�*����D�	el-I�-����mj��5�Hѡֈ�����[��@݆J�mS��5y��C�]�mP}
��$�^ ,�	�<��Q��:LڧKj������~���jmǿ?����o�Wѐ1���P�~�/�؜�&zO7t4�M^9'��[��9%&:w�ɇaO�� ���Z�0i�ˆ]�ES��&o����r��c"�=P�w|��X��h�F�G�, �l�߄ʤM�2��R��S7��u�9�U��&�����@�$"��u��"7�PfB^��(�5���7E�fn&]���4��uu�k�{�A�i��`�����/n�k�R�S> �������s:�5��Ӧ@��H�"�qÍ��� w�nb��/�{&�U9��{��7N�g�\�P#���$��q��m|c����}؍���{�H!��R0dP`�\ڔ�*{�/��Ꙓ�F:���iCDv,�I�@n1��i�&^��`���,��"�duӷ����i5��e�?�o��x>�y�����p>tc���TL�"�.�i(~��sɡrS���T;��K�E�MU&+����u�ʅ&Y���r������T�$�a*��Ӥd:q/Ϭ��W36Ѩ�/�8���� ��X�ǯ��O�͚OT��L�~�ze~��N�&I5�]�hל���D��DM�v?��D
dDO�D�������t^맩�`_�zn_�zy�N�̡���;�6'�^]�ht� �7W���!�I8�Z��譊������Wh{�
�I~� <��M�4���`�$�
��6�ID�����TM�O�<�6Mβ��^:�#�J"�@�]EU|G��W�U��t�v߸�"J@E����M庨N0�s�������Q��5�XLD���1�Ҫ�Um��Yr��t)��T�0d��e� ^j��T!�=/�;�EF��wI�(��j���G�<mTЀkP����}y Bt��5Ԧ�P-r
�;�:������� �T~k�6mBk%��V<�VB7��o�mm 3�.'N"�
����&�!F,&R���3�!��h��v!Z�>Khӄ�l�ܵZ��i��k��9q̏}��_.\�,�_�J���w��n`q�%p?؎u��І[B)�v	��M�R�����h=%wn�Ψ�HЌfP��K��F*:e��CBm�v��~C2�*r
G����i�x��Bڎ���q�w�iW���կ8r胶E���*7�9dB��r���a���X��0�m���R�߹�mv��ڷ�I�9�<v�4>{��X��]�I��)����9mW��&FSP�v�N3��鎳��	o��\5��=F��A:bO��V&�2��OK0�@��LU}ڌT��N=���q׬�O��QG�ZW�H"U�0M%S��^�"�%x�I�%R�9�j�����!r�~��>-�28.����)���čt}h5���"��$e=���V��.b{���$�����i��V5Ա��3A��vAe�H�:�c��+v ����-�'Ԓ�-��yu:�����ڼ4��&�����o�a���cy=6��<R(�a��kD�Ek1R=E|F�"G�U޸���H�Z)|Fړ���5bl�H�����b-��_n_�X��L�{�"sP�hS?v6��N�-YM�#a梉���J��8��hIb�t@�W��fTQϖ��,!�>�Bk�����`q@/ţ�L~/4B��<O[��xm�}8����Cȶ���s�>���+Ӗ��(W𼧨��S�Ӷ\����JX�T��N�$P?m�,�͙Q�Q�Tb�-�М�T�2�!��o$a����ea�_�z뎸�Z�.hs��-+e�^���_�71�e=�t;�4���%)Fԙ;�}�ב�.�I���wdr�>��G��L[-���1��M[�H��?�TO�c'���N�F�%W;Զ�E�%X�X�%^����9fF�U��/���؛�b�*E��E ��V�qJ8&ҿi����1�(ܴU�<;�W=���*�=N�����rI�qs[/���I��+�ј9����D�{�m��g���ylN9�5K�e^�j�����8#���AF���[����+�9{Y�@�P+}Ή�i���D�2-A��hN�<d1��T�Ωʘ�r2mc�#��5�RM�TV/��㸲����\�fe��<ë�_[��A<n�J��$ڦ<g٨/f�N�&�iK�N�ʶT��m
^>P�+E$Oi�BX)C�k�F�gL7��w;��dml�S/�3vrib�QKT(7�����h��֘@���x����PtȽ�e���8X輘9��]q����(�[	?�:i6N�`�>)�{�7U(m�<�O�DҺI�S[Dy)3��i�rR(z.~�W�Vt�\�̞��H��\�l�9��T��mk�1���Kߢ����T��m�	�5���Z<�=��MמIQs�\:����cO�>_D�מۃ��=keޯ�6�ڥ
mG�[��	�㆛'+�='WY����~�M�nA���	�gD٠ɤ@��-�8H*)0���t�k�E����2v\�P�z.R�0}��:�@��^�#�ob1� R9��������N�N��c*sjOkCO�!9O��KT���
�`fr<�&\��VI�3$&�4�gdi�4(��Q�`Үr���*�7���c"lj'.a��B�D��^-"�H],_���V��2��	���#d߲�T��F;�v)k�L�ܓ�+��:fQvNWȡ�.{BcM8�)��2�v�9�7��&�13;�2[��G�l�}P��q%K �
�=��1/�c����^!c}xΚ��!�xEj����r;�	��/�&Ӟ?�x�[h�E�gG���r�Ɵ��,'��ajߦ��j�Xa��rT������H�J��Z�W{EM� &�yX��Jͻo�"�f~�eS�:એ�:{�����8U�y���1O��5�J}im�>� �P[x?��Ұ���=�	�S�-�1���9�Gґޫ�U>��E�w����Vx0W�BQ�p�Lű�K�R�w�L�eˈ�u��pU��56��?r��hu^��$��8u^�ԞT��X��W鱣an@�'^a�Z��"'�y�A�����y�;��    ���t�D3ǎbS�SNd��,%�=|fǎ+2��y�Ȉ�3�w �B�=7E��v,���O���6�ktQ�!�,(�aerV018���_���w��Ic��}�Z����	��mOKcG@E9��riD��x����b�7h���0t���NY9�S�_���!�ӟc{:S�G_�"�z��`��]1;�L�SA�H�y�Hc/�@�M$����ČШ=�������9���{�r�r��l��@c����~��:���[�4�Y/���D�R�E7��j6!��T���ב��2�X�zL��� �9i���j|��󞚽��\N���<��^�o_�5$�c73��4ӕ��Y�+a[Q�T��%�.�˪ڗ"��
����g􎬉�e�6c1{�F�A���6�Y|�6A�F�]���w���xª�.�S}ˠ<��XLtH��H=xKWJ����RB0�-�����(��m�!>x�}@�2{�g�n�w�>���<��ۈ��f=h,����+���n�ʞ�����P�Ԏ�=��>�wqԗ�8���J��1#�kM��Z .1;��3D��TQ�=��H���#6��k���ڸ�7�f�+��"�	U{l/������5u	Tsa���f��C�+�8F:6Tؘ8{�P����4,K�/V4�c�J �~�S�8]�ʰ/���r%W`���ĵp�i�bV��^�5��F�.$��TZ9(wҞE(�jOl��Х�Į'o��Ӆ2J�O�5�+��2b��]\�M��hN�ʖ���)O4�Qn���7��|����Wm��67����
��a��bݺ'�p�kK�s.��E�)m�7)��3*e;������߮���c��]wO��Sw���7�>k�hߘW�n��z��aG,Nc���"yU;�'�	UYż8���k��a��ը{s�?ܚ#��mf�U�V�g�Ih�����fb�WK���v���,��R�/���ZV���N;̨ܬ�kF�ƞk�����N:{$�a��8"�����:I�UT��R�Z*��j��w�Y!�0��z��Қa��Z��k�ʸM���xǷ[���WÑ�C��CGG�tcϓR�@�F�n4j���)�س
���$�U�����
��"��ܗV��~���}��xyUk��ޚ7���8�+ M��V��N�̉�zBV��:/�j/j���8!T^_r�-�?��dّ#�\[E,#�����dU0�E2Y)o� ���H ��p�����#X�x�%�Uvo(��?�zT�Fw\�H�H�f���=:�#|^�'�1�������'ђ�ϩ�������A���k�R{���7���7mTJ��PtT�1WʀB�����'�H+�B�0�I�@7�$��k��i�ɂ���.k���%1ު�0��Ji\k����q^�5������
�&�m�bm~쏈E�4%��f�����]�?s�.G�x�2`e+�<t��&�vY��P#�wb�لr�&i��j�<��4�X�\K��&�="ͻT�G8v"����طÂ'�ʉ�%gbV��O"t}�̓}!=�e��-�^�X��9���B�.�V�.)�,�I���L�̚s��QV��q>�;�)YY`�B�u;cUm��S*Kc5vL �C�Wݎl��0)�HiYy�R�]���4V+�y�z����H!����$)�{%���n%D�ɑ^�}���X�A܎Q�2���v�5��*�ʄF��'kY����ٍ�mK%�nVo0�NY9�M���XSG�E�5Ay<�Z�1xZ�����Pa���bw��t��	dy�}ol�^�?�p.:�����<�b��CWڬ����@�G��'��B-�D�� �cB����~��x�S�c���"���u�:��^h�Dx/�3�6��#p�Lj�PܷZ�ܡ�s$*޶̂m��:۱�"�U�;fڪaު�Z_��Y]�������%:�j��<���p'��Hk�ý�_V��kB���w>hߢ�]mSn�5��x[��]4Q1��,�3���������!|K<�z�h�|��2�O��Z=a �l���j�5Z�@����	s��ɘ�,�#NbyU!���Ղ�*]��L2�݉>���2����h+}3=��4�t�Y��q�&]o�E��]j���f9�MW�H��	�J��6��8�*����Q�j	�rr%��x�j�TRʃ��+�elضk��Z��/�2��`G�O�L��G�-�8�M�}�	�����W������z�d��1��rO��C���o�`h�N`/9�ۚ̐��p���K�)����6i�eH�H�$嗞�y.�Cw��C�P�G��X���v�;�n�N�tG��[���ѻ#y�i���|����c��"�
���+���bc-V���ɮT~����\ƃݝ�Opd��H�K���*U	�+4#����		]�9�
�kj�D���cZ�h��6��(�T(������p8�Ve���d�9��<���q�^'���J���Ꞃ�k�ҍ�R�-��T��������׹a� c����0_)CP���%t�/¿)s����gi�[������>5vi�֍]mG���(��������(%�� q�I��\��&�<�/�J������.ڹ��~���������(�&�]��P�gk��?�ـ�[�j�4����P����ũ�В ���S%�Ei"�}�ܣR�fY�a��-��#4{��I�-+�m>���?J����*X���HJ�tDJ0���S�j,�%=쬲���%�*:��J������.��'Y�=dy�6�W}��E)؍pO��١����+���cj/�Q���=�#u������\@I����=Pwi�rxU� �_�b��7���a�@��.���Z���x��g���[�ɘG/�C������`�UcP��	Uǔc�K��0&��Jc�0��3c#;/֜�p��.?��[�E���ƪI��.�"���͘��h�z3���˸�ա���Ԭ�+ٴ���X�oZ�TT��Ss	>��;�0/jk��Sv�l�/�v�x])y�%�:B�#K�T )D�� �[f�Uv�B6����CtN#��;MJ:h�쁗�����Ub����b�ٯ�-?*GC�� �g35"��%�Dt9���J d��_i/Ϳ�-X�n��o�f�2e��������I����?�j+��4�x��� �6R�BzZ=�F�Y��:ρ�j���#N�2��Vj_k� ̼B�d�k ĵ�Mc�oT֘d�GV�En�c�� s�U�����n>HC�4�Ik.K&	�X�Ⱥ<�@�V�N_�n�!<Z+�2�ѢL]�>� �]$Qč�<����6!�4u5A�ӗu��!2ͫ��K�9���BsCҼ�U�O�aL�'4w]ɉ�Uh�fV;U!�YB։7W��l�h��[(�8,j����F_���^}����q�z���4�3���z���&���W_�����Y��/Q.
�'��w�U�N�,P4
�):V��bu�z{������x��SޮY��6�=�PP�m���q6����uȰѽ��G���]����'������{���Q�2�m���P��\9_@C�>{F���hvr��}�j~?a���uE�y��)�>�'-�x�.��g{c�E��\Qr:�-[����vvB�E_���[�d�AG61���/է�b���q���SL����A��z��<�������q{ۻp�PȜ�s��t���VV:���ԮQJ6�u���u�����,6��m5��>�·m�Ht�>�HL�M���M��,�1#s����Z�I�̣��o�v%ar;q67ƺ6u2o�9!-͆�B��ў�\��M;׏��b^X%�x��M�GI��sH�(��#����k[1��~�G�Rz;�ōC-��?�d��nT�t��<�[[��[���0�	���L�pپ�w��ݼ6���Ʊ!��}�p��*f(P D;w2_2��%�\���^q�-�8o�ܼ��oi���*�ײ�8���ew��S���+����    �f�3����W�u� ��_��5��]�k>�Q�̫�K������`�y�'ۯ7r�6�k�����dWk���i^��j�6�,y!=4U����9,L�����.�H?������2�:˟���Ù�!�����Q��Yӹ�HV"��4�{��2��t`�{N3�OR���Ѽ
�b����@Hv��ơP�9��L�� "|4���]�^�FSyx�������ҿm샳)��mq�My=�8�>5q:#�z�O��3ş��T�Vv�藖H�ej����j�����Ɋ���e&�f������K�{�.�q������M�zg��H������Ws�����Rx��TV:�K�v\���_�5����
�97w�x�t�"���
�,-��ط�D�u�?�͎΃�ܝܳE.����y�p5�Y�]Dί���]��T'�����u]��s=�d�~���į.vN���gw0�A'��3��ˁ�0px����ˑ��z]m�a��r5D1�ݯ$A�Ie}��n_�5��`���w'�G���;#zB�b����(M^qPm�Q�(`G�I!�5<|ToІP[tp	J��l.\�XBI�~e��ҕS K������&��᛻1�Ȟ��Wa�����r��!��G��%bC��PŬ+ ^
E��Dr.�C��y���n��{�O�ُhZ9_�n�o9���2u�K3�h��qsc�9��I��1�"�q:E
9:�r�����<IFs����t���JC��p��t8�Ai��2��Q�} �
�G+�,-�eH'	)D�������;�K�P�/������
�VCY���b̸",�N[��t2&�J��zT��q�<~��dـߋ	}"�{ᕽ����g�Mah�N����Ǆr������]91�)�B�g���գ��k�5�����)���4��,��$!����ݙ��8�R_���ืā/Lp���
�Ү=������d�CR$��fi>W�/���P�W�����TX0xT���0LHU�u1��Nksg2�p�Bp��b�!q��C�b�n�Ax�N�x��kٜ���]�ިö/:�
���*T�����$ܻr�@nrluWa␖�W��IJ�|y�^\����/�}�u㹇�&=�}�q�ara��&��P�E�I�
���ݮ�s�5�ѧasc�}}%}��3�͋�K�� �(�����6�|��H�E�m16]����ȶ\��!��ط��\�z�ޕd3��}���%=4�Z���f��G���f�tt���qҶx]4�δ�&����N!L��q�D�t9��y��2⻻?��&|S���n�O�4�,Bwϡ�u�]�EӘdz��Ym]���\��;�����2��1ۈ�M�pN�k��K��sm�;��dw�D����*�O'�}!��.�6g�a�[F���.Z���7�-ho��B�#|�W��/�m�ό7_~l�J�,.�6�=Hu�����DS� g�&��B��s�*C�����к*�l5t0���� �����1/��.K ���|�!��G#?u���_��n(��T&���y�X�yb%S;�{i�x�%j_ѿ|C�����w2�B��tz�ǎlx=�K�ͻ��ռL����2���5Q�H���d�w-�}�T��� e/R����/��a�sswn�k؆d�@��,#�s�Ұ�� [���7�:�l��90r ��M2>삎�(����̉�:�T�×4ϻ�kF&� �^X7%�a�v�9�����]�k��;`�����ء���]�Ô1�,�r�"��3���Y7Jϒ��\wFf��s�̸R�������G����e�[����.���mKuN�I<�eF��,�K|��)Ye���������V���q(��졖Jf������T#��H����a���[�IPz��L�Ϟ��m�?8c3Ή�޺�=6�¼/Z���c�yIP�fe��f���_g~��/8Ѯ�}i>�����7��J	=ґ�W����<3v>�x��	�5&Ҕq��;��': �8�se���?Ҋ��O��Η�|K���Fd��b����0��ycܴ6�t�ۥТ3�b�Y��[�.v��y�(m��ja)Xn[�����4�<�����=#�YYd�f��{'-��Z�~vd��9�*o��pV�h�l츈���s/���@	�V�k�,��F@�4�]<;�TTƯ�.�"M�r0��)Yk4t:��Vvp��W�qp���0�S�Ls�S��'��;�̚��Tt�i�����w�8��)AF�o�+�����@y��/��:w��q[DO<}ei��~���WA�a����������x�c��/ҷ�J_��.��|y��a2[c X��v�1��O襤+��Y�%�Ih�,�qʒ�Ϣ�ً2J����IFf!��,�L4,�=D�BJb$dq_@��W7�a��ᆃ0^{͉���}����xi�U¸.y�w���S��h2�#hyiWr���UQ��,E�ʊ���¢�`_H�=ں��|\�}q�[��پ���~��~��v����$����r���7��u������܋Ô(,�j:^�O�̍��]sWvY�{���u������lӴ瑫�G�^vt����<%�K9���tte]�[�����nW���UXBdx���0dpj�w'}݀�X�������^s�9��J����.�m����;�n��3z�.L��~ݘ��-x����~@����}-�K��i!���܅eç�v�<;i�h��w�De�劼\�e� ��G���.k3t�� 2��=�_ț嘬�/�WJ�9�Ϸ~�����b.�z4�%��<��~��ē>� ��6�<�M��z��0~	=�]�a��Ӯi捺G7�����AҲ��V��Eu�0a�[]/�3ϣ�ȳ_d{ۘ�0H$3��jk+��ٽ�~�y'?ެ�x##��x��$t�s�-�m�p'>��0x��^���,��h:b�bٶ�9Qu�_��'7�ũό����JKS�#��6/��n0�$pTr������ea�_l��dGR��a"�ҽ��B�꯾�V��:�Q���=� Rٱ?����Җ�MW�t�8�4�>>�O���NEϿ�6s��r�����Z�B ��^���:zM�6��pM�mn�Mj(�I-9��3���:ӝ�������F�9m_�V����(����q�m�8鿂���l݌h���jM��=��l���h��Zg�/�Bz�c7_���!�n>m�+QւU��e�i9�E�ȤEƶ�uk:{�-�뼩������-�D��`w��/�/��vd�Ә���r)�h'N�qKϊ���mD�G�E�?��8WnY]�	�+�9�a �(�Srq2��v�����:
bn\�rc]�����m�� \���屿mTD��ƭVgs�W7rɍtv��N�r���
}�?��}�o�ˠ*8CkI�H+;R����Vbf�&?�_i�Tل.-v2����m�u��f@C'Dޘ?Џ;��0sbti2I�F�*2"F2�ًsB���].��}��%(]Ц� ��s�7#{7����?�Q�-+���c�~��P}7I�����*��i%[��1��+�+����~Ғg�]����E�Ϧ����ܹrY�Χ�m���<�d�r��ϑW�t��_Q�t2G^��*5�=$}�f�t��R��u1|BA�}h">�R�p�/�������ff���c� ���J=��@�&�:@hb�0jK)�lLĦM�"Q���H�n���\�j��,و2������B�φO��Wn����e21dGz�od���.(=՚��G�7�s}�kռ��̀O�fC��Uߜ��#�A���Ivn,�|G?�&��*����"x+X�]�b��W�����	�'�pn����.��V�_nwQ˛?�����O�I�G�cpQ�_n��L�ȩ�̲�ty��$C������_��N�QM��p�Ľ�G\��(z��^�A]�DhT���@�o��a�l�H[��=�j�}m�Z�kN� �DW�����_)��9��nɞ��    1�	i(�����#c�>�@V��#�������te�x��4�Qׅ��&��T��� V����/��5깗�Nh��t�Qbd��
h��$�+�H�#��L��d''AeV>�=�e�M��O��?�M�J{c�T�aO��#��{jБX��^�����U�w���(��	�9g����]o�J�5>��p{l��B������(�#h_kUՍ䯩��R�a{�\DXtRq�[8��"�َ�D�-9����h&�kA���x��*����~[o���$�����xc(i�)Y���䯴7���^�m~��0}2�}!=]Hƃ��Dk�q�x��F���=Q�/[��w2&�H�$\��=����e��k�{�a�/�zú3���vM:�9.�bn�w��_�3G�JJ-c|�����Ϩ��z���	.�o��S~K�}K�ڞ^[��Js��#]���N�AF"��g.����>V�#��Z�ō�J�2�L��Ȼ�EI�{�pq�Ԍ���7�}_���Gݳ�E�tK^ ��jv�`\��l��dL-��hXO�jkv����A\#���@2��=�6���F�u����K����0%-o(7ݰjW�l��FҥЪD7��	u}3����Cg�;����}�6�7��1
f^�I�j���[�6�9�^ƩA".e������JJྥ�ls����$�k�����h�l�ʡ7ۈ;Y�[�+�-�A=3��+��b�5l�r��kBe��Y}�6;&+�RV�a�c��G�q�,|�����)x(��Q[����E=�Q���E$Q��@�82���ߍ��G`=��.�N�TN�B��w����<N�&x@�n���Ʈ,I�#^d9H�Fg�v~a;Z�׃ ���F����X�&醜�������:�X'HA�1T�^�q�o�>/թ��'U�#��t���h���n%�B����N��� ��ʘ@zԄj��G���q�l������X@5��оũt<|��E�V	X�	,��F2�q2=�W��!�p��m ���	 s�v�������?��ʰ�vzP$��>���P���+��Q�m�Y�dr�5�K�z�-�.�Z�QVr��220�^��/�a��e\�9d�`���9�Q�>�߂?�����Bz:��yR�����<g�!V�aiF,�ԋj��9�OԶ�aͺʝ�-�����3� ���P6��(��.Ӻ*m�N�3}%}�&��B.�T#���N�.�`mP?m��F�߁�P�C�*����"�ZW(���ޣ}!=�U�$��� ^J{���X�}C�;!��]{p� �t�*	�k�|���!�C�q]���,�s�	i�F��y������Ps:� ��/uD�U�l:ӆ5h!:���^ơ�@�õ��������x��2�q�ї���&��D�m����3}���'i��oˆ��{��~�9_Pݨ_1�fԄ��GuW���YY7i��Cr�>~���骒I����[���Pb���2LO�����v���CU��b�����c�(!�Ɩ���N���o�����ǐ�3v8��g��vs	��7�wi?i��V�����m�I�-����_������k�vqBv�s�)w@-qf����!�ܟBk�2�r �n�}���OVB�G%�@�,��~�kk��jX4�Vui˞52"����a�@X#��s�"�_Dws*|��e�G`��z2�I��/�[�њ���ֹ��.O��.���/�^Gw���?�:��	��luBq.���6���ֿ���X��j,ͅ����5+}k�3��o��襜l�������C��,(^�q��V~'cڔ��!���Ca��%
oتn����渻A�DtQ��Al�*���2Ϻ݋�̓l��ӑ�/���0
�,�dΣ/��j>�G���ٟ;>*T�o	��c?�_��H�K�7�߃/�ھ=�D_xˍ_�6:�Nd}��v�߫���&��3�!��/��Zn-{�vv3Q�׳/�&�Z���:t������3�����_m�\��l;�ҏ�<��,(a��s�~� ��zP.�#���l?lA��m��H�J{�ޘ��V�P��_��9�w�3�ͷdZ�|����y�f��"oS��Z�A���������Y� �d]<�_n�נ�oH4 �nn���L>���7�ܖ�@.�����c���	��8�6J?HG�f�����U{�����3F���C�7���[)4P!��V�N�-w����W�PN�x���nM��^ 3�a{����VGI�W�ӟY�	�&���K<p3�N�U�Qq��p��V[�e���s.ȟ�}�[�3��5��\p��c`�=��i�eƃl>��ۧ��<�=����bR|<�À�gy����=����4ޘ]"^J4�/�W��%��=_H�f�PU�_�\R��~½Ƚ�4;��U����v���Y[�	6���#y�j�B]�'�����MaD�s�y�:@�V�1�����lr!�jǕ.���'*<�?Q:$��F���an�'��wP������/(��fr�Z���ܨh��K���/�YaE�%�3z�e���������Pq�8z�G��1z���2~ks�xP�%Z7�*�SG�֭O8��x��ӨZJ(�
�լ���k�p2���s.#�
N�� �P��0Un��iEb�tv҅����
/����J�>��aЪ8)����ʸ�$�`E�,mJ=��r���]�j�L�W��s1�b<�W߿��Xl�X�����̏�is����W�W�댍�4PY[:\u.>݋x�/�R&o(?�E|򗴖)1��9={ͽ�v'�C�RC�ڱ��:��w���l��{�q`><�J_�� �3�`M(z�<�s�|n�Ԫ�-88���0N&c-�o"���" x���!R��mFL+4�#� %�qM�.~u��hCB���B������g7��_�F�J;"7����������82;j����'�/ib]Ei��z��kf�mÑf��m�a����"����	q���EJ$��|�|ןm��\��j?k���o������W�;�V�jc���(�q�+��8iˈ�3���a�`��m����/����1Aa9�c�&y|�Z}�#�U*�{�|{�Qܶ��������G���M��>����p��W�ׅΏ��!�]p��3K�2�'�t�X�U^ٮ\<a��}�*"��\���d��;��E8��c��p��4lຒ��^��غg�OMg�c�;��2���4Ș�]$�|>]�G�p|V�ֶ�`�k��[�8���5-Z���N���^�?�k:�'�S��w�+GcZf�=^�}�YO��a��E�{�����"�]g�aA��r�T��
a��˅3���<	�;�Z|4�w�(�n�l�ޥ�Gu���=�i�_pd1R�r�ql*k6}��UIE��
ɱ����n"�(�K�C{���h�(����(��Z�r`��_i����E�JD���TkT��FjE�4���bwJUe_pO�����'&���zU��/h�boc������� �|��I��m��ŗ!U�W�S��O,b/E�t�;�O7N��ly�}7�k��rܲ:I��,�{���2��J��#�T������[V�\�'.��h����� �M/h���i�|&�4��u��Z�����0]&/F���0ǹG����v� 2�y�p4;`��"_�Jk��/�J�����&D�Az�� )h�q�����CI)�ni|�!�J.r���w���Ro=v�����Ћ01��wL����d�������mF��8z�C#�i���v"i �Ph���mzA-O&��)ݺ��{���B���z����;���sߋ���/��^�#9��̪+�G����.��|E�k����n�=�z�^�eHi�˓����L��ͫ�k�kt���lo�t�v����dޢ����'���2,����p ��:�Vib�?܎��#�D8��v��U�����o������y��������z7:/� i��\ʈ:�N�    ��O ��i��jͿגl���iIs�:��Q��U6���M�������r��'l�e��ɟ�!P����t�����V l�!��_:n�I�'��?�$��,���@=�:X��(�B+u{��*�:�az��ݘ �8�z7�YH�r���#����Y/�[�)dS�6	H*]>/��.�/!�\�J{�X��a-��+7��K�q�3���Z�����腻�=�~��E|%
���Y5�+�6�,a���?!�������0�UK��<�K��=��|�-0�W�CI�S��Fgu��B�����A�� ��� #}-������?��
����������z��j�C����y W����N*k0��� ���7o0���d�G���1��Ǜ'��W�G7�4_�w�7��A�G�9?7.�6'�+�d��{zv,���ه��a���f�8�kc�mUo�5d5���+�R���n���~�����YoCo��|A�X��S���u�sM+�+�UѮp��u/�FiX�|a4��Qi ����qX6A�F�J{�k�ǉ3������P*�Ϗ�j�^ѷ�2|�r�^\"'I�K<L���#��;L��7��Q� Y 6��fW�
���T��G�kݪ?��6y������5�� ���ߧA����9����"V��e��W�;�ɦH)�Ea�$�!��z���J<�����vf��9"�~t�q�j3��,kK3��^�e)�����_Ȁ�T.�}t^���a��c�J��'�7Kp�������0���#��e�G�8w���y�gpS�9�3�ܽ��H�Z��.l,Aʓ�i)�k�u��������ސ���?���I�,���`z�!|;�/.6�<H8���;ij�I���}&�N��C{���' �w�Бb�v��=�W�������'��i3뫖\����r�iIɽ��}����=W�q�aK�,�n�EH{����L�X�}P|')�a`� �l�HEX �[:L��C�����6�sU�'��&{́���7$ZQ��P�Eڠ�bDȽmҜ<�cSR���a�#����v�CVG<,�!XXn����J�r�q�qB?؞���X3> �զ�w��&�p��.�sti��^�|�&.w9aw�}2�q���%� �º�8+�!x-�p���	.lG�W�������2�=#�B������݀>����?P��ŢG�&43�<>���pS�m�v)Y�]��t8�1l��%�~6n��h��F�bT�^sr�8da��H��c������� ��D��w��qUmԭ�굫��Xr���%V�G;��K���]��%�A;!��=�o�]Q����,WS�М�� ���p��3)�Z��	��:���!ӫ=Α/��W��ݭ�PbZ}y���=�h�
��s��w�L�'6�B̽��nw�Zw�Б5Cݲ=;g���LN�?#R&����Rz�{p���=���Վ6U��Bͻ�}ZE�W;G`�w-�?J~x�g���)r�fH���e?����frU�w�Dw�|�7���XTs���.�A��;��x�Z@�e�n�s��Y�J{k�����i	��=ˠ��4(��Jx!PB��|m�ԯ����wy=�Æ�{y��2�!}(�YJ��s��p^����o�����1|�B,�?^5��=���?����d�� vF�~?	� %ɇ�k�㷯��
2�fPե�- ��^�'���#���6��Ibg�ٓ������w���|��K���U��L��U�J�b=���4I�.�PRG������!��yz���q2H������l�I��	��7�aѮ@����������2�9���K��uE͔l�|7�?O׉���9i��l̿ܜ��
�x[ ���C��5C�A�� �NʪQx�%�[]<���G]<���|���=e�_Jo"�������m�[��'J�2�ս�튠R��?d�0a��WcG�4������>��Q��琰++C� ���	�!�c�)��%vem��
�k�-5�_�l䤑<�D}##ڄ��>f
�#Ʈ\����-����'i��i�K�,�'s X���U�nԺ=kk����}v�މ���\��9�ŭ�G]U��?��9����������IGs-})ͦ��8&����%�UHT���>�҄al��L՚/o�����G��p��>N>Ь�;��?2�u���Jh�����`u˸n�z(��PP�!!۞���"��&pq�z��ҍ �9���u\(�������1j��aܒ� �G}-����/�d��;�g���=�zޗZW7>�"�����
���-��ӧS�[ro��^�W!����X��@�1���]�W҇�8<�.��$o���X"�w�Ώ���XkK,�Gd�_xǓ��q!��z�_�P썦I�~��˚Rንj�R�b���Ui��O8�К�6���5�f岣Ms�7�FF4��!���~a�FL�!���,k�6��t�V�Yq�@����Ȇ"�S����=�_��Dr�B66ku�&�iZ��Hj���vm��1��a�9�j��C:)ɢ�w�p�ث̓m\��7�e��z:_y��e�?�̭rY�ۼ�����1���A�u.��^{a�z��}��s��\r�b@/",���S�?�`9�D���ږ�1Ͽ�v���h%��^v8�ׯo� �eB���zݐ���	�nʽ:΍��V�Hk6�5S
�<W�hw 3���ҦU���upN>�ׁY?S�e@�j�u��#��%���:���@�{�_�2tM]^	W��Y�e%4�h�k"b��訕?`׵|v��M���m�Vzש��eT��dp��#)�s�c�M�����U��FL�^������re��%��=�F��V�q�~�c��J�r�m�l�6�]�@+t�q)��]K@��-�w��1�z�	��(]zy�u�E/m�B�gm���L��_�r�d�{�Ӹ�)�z�����#p��|O<  �[���s	r��֩���v��ȫ�'�뇅��5����N
o�e΀q�J��5c\��=�G��z��v��n��r����oӣ[o��{`~y�QC��(�ihu��A��-�J�]��`+M>ߟ��L�w��o�#i��c��G����#��ghr#�Lq��H��U����'�Bzڹ$�PN�� ]�gq��"�N�F7Do�13LHK�6_�/E�^K���R�0\��	��QZ�E�2� �A��S��.Ҝ�<�����_G2]o���T��.�l1�KU���a�*�F�x�_�a�+��� �Gצ�Mc��eml%$��n=s\����j�Sӭ8���aWX �u���M��AǺ闀!]��������J�ã�0�).l8R����K�o�
+�ヌ�V�y���=u��}_�=GU�a�dv�c`E��
��c���K�6ľ����E���C��UJkn��Z�Я�EZ���B�yk$�9gl
�j6��])aϯ�ߦ���D�f7�-�߶|G��]�kM�Wc|WJ���X��t����@��|�^ %]��oo��J����{%}0� N�����F��e(|��Nڌb?��c9}���&�t�eÕt�2����uH����=j�ôX�b_H�3�ň�V���1���H���a;-�l��Įz��;!���_���R/��3�	Q��ڟq�$�ng�`̨�S���ٍ,��/G߽���Bs]�h�
2�����8��ƾ��ZTC�L�(o��1�NY���#V��"�iQ��s�gg�~[q�E�U�F�㗄p?@)�m#C��d4$�O��e4���GR��_���WFwV��h\asbQn�)�ZyA��8�T%KT���<������o�u�t��}r|��}r5	����@-<��O�r���F�e�s����?R�=��|���WM�,^��U��$����f*��h.z)L�\k��:�k�n�N/⵳�6�WTɃ����IPǃ���A�"WG�8���dePl:(���    }z��$(|�����)(ĕ�5�Kog1Tz�J����?_�����^Z�{��=SW?�.�9:{@��_W��ʠ�����x���r�5]���6��v�O���Қ6�߶��@2�4�9)'�mo��Ű!�"7jt���h� �^+@+n� YB�]�2��� Nh�|p�G�J�Ȱ��]��)��H^��Z6�F�R�@�r�a3E��0�mmŹ#%�sOI��:&/���Z�d��֒/�~�&yt�^���2�!��<�_i�g'D���c"�R]�O�4�;�S�);�T�(~F#���+o�;q����<:w6���/�B�����[P����5l�"��տ����2�Iŵ���o�+`�r���w��/`�3�~��9�u�ڦ���7���dQ��\+���ufתhx<�od�܆�0Ԇ	)��S�.��Q4CP[۷�2f��m��z���s���u��rV��./ �l]8�:��xD�f�m���^�V��Y�9t�R��n�'�C_"��bB��}PVMe�uU��s�Y)�G��e��ޡ�Y����#/JW����,�f��
KS�SP�e6k�gq
���a��*˲�pҫ���ĢGd:]�Sx^Ky�R�)�L�PP�L���,kl~�(�V����o	2e
�)`B<���@e�u/�=�V���+�׾Tz��믵���ׁ�i9"�in]�oje�*���̼��具-ͫ,� kY�1Z����R=�!��JF��l�;�Te�����~���+�gE�kaIgd��V�b���d�	Q��A�ɠ6��cL���,˝M��^��Y�;�bͦ�wx�Ͽ�ƉM'%�󿀿�ኖ��DsFT^��	b)�e(��R�mى/���:ydi�fW�� �������ѝ#E�nt�y�x,+\%��N1���u
�\�ʅ�S�ZBmYA�xm)�Cm�iԲ��e0'�m�x���9H���k��%j�q�����v�\�Z.h��I�"��!+T=�Y(wᱬ,����-�0��~� {���e�u�AX�ع ò�6�a7��1��h�vͫ�e ��#�%��>����n�x�����<���]V�_���שw����?(���|�ZP����= ��j�`��[ o��U��*sL��.�yG0βs;�N�\V��+�,~���	ަ}��Y��8:�/(�,ᶑ��1[V�:! F�A~}�c���Dl���lm�������f���o��c�Jt:���eU��2^[��eX0��Y$�a�Y�.ƊY�J��\o���	�:RS��n��\o �P�3�{�&�pn���'dQ�]���k��4^^闺���鬺��d�����d,"~��Wr���n6e+�.�]��R\�Յy����P8�+���wg���~B��ɝ`O�'/̬���w�%}*�?��g�M&�w�\-��,��h�9eS�$1&z�:���Q"N�ő8��q.ęY�D���������E	�� c�j@��?=�E.��z+�~��Y�>ܡ�rc���"Mz=� &�$=n�#Ϧ��k�w�v=�|NtI���٩]+nM�S�֧��E5�/��úO���KgLT���>�z��(��s�b<O��:��p�O\1O?�����V´�j�i4TT{&8P�ژ�<Ƙm$����ДJ�'���ԉ�5�|�:��Qx�����!Kh����Eo7�������ߖ�i�JV�X��a���@�plu����"����ZԕG� ����0�bE(7tj���=��A��@G�wt^��r�s��%�p��4$E\���az$$��5ІK�r%�s���Ǌq�� n�����8g>s�1�=��cW(���e�(�迃 �RNɭF���]�$Ƥ9n�-A�]-���~��*{�od�2����weuL�y���Vs�B�.M|o�*���h���?�#v�4^h�£����agF��׿���0�ރ~� %�AG�s��K��>?'$�h6�J�
��u�:!������ �����^�Ȑ*Hop�g�����u��l���y^K?(u�?2ڰ
Pd�nMD#gR�8�9��<�]���͞�y�����H�'�/!�<#��
^L0g���~9�/�t��Ԝ=��_aD���T̳�g�iO�c��'a�J�ьفl���=����2� ��Y��_n�c0s��i������5��.>;ő����`���Y��^�ٱ�_��3�����3)P���XӄW�go���~Cf=+�+��|?����P�s��e�����m6ـ�|/-26��� ����I�Ϫr�et�-��gj�O�y��y�9���[~+����X"w����͒e���B�O�&>�a�-���E��絥Yz��z��LA������t�}.��]å�l]�^���xo�����vZ+!�G�I���˸g]���m�늵�h���8�JM�S�ڪ�d揗'�����4<<�E)�/��N2`���l�8�$/ �C�\��=<H{Ò5,�yf!WN�dEOy/��KM\��T��E��
	h_?`M�&��KgۦW�V5�
�h;�	��u}%}��:c�����|������"~P;`u8�Lp�3�8��}!=���]�����C�G�0;�d�4bKp�h�����\Muq�34����&���^I�X���=l�Dmz���:�V�4	Kn{�v��i����=�J��q��37��y�Y��33S:�a��a�z����8$�Оؤ�~�:��.,�I����1��=�'^,M�".̫�H��qu��h˷>߫n�7��Q�4G~.!l��e����+>��R��W�CU�*��(� �O�͍3��¼�[��J�I�D�[0o����s���&�Um��χ�8���q�p�������W�XƇm�Uk#���#�B��P�W�ŏ���G�y��f����ig-�!P�{��rER�k�]�r�j��z�K�ڋ�M �K�ڳs̓Ӽ.�ℇ�*7S��*��Y �ץc����l�J2^�`�E3�9�8j����9�K_��+�R��C$.\�{4��	��6�W���v������b��A����ay�>����a�X9n��?�Sf��&�P���dh����F7h3k�;�{kjXGn�k��į>�X�5�^ Y�B4�wKn��,B�u�M����[VXmW�y�=�j�Ѭ��Z�Y�	Tm:��������5��g�{%}����oL���٘��0Oަ
�(Q��U(~��t+�g(���A"�ڂ	�H`����`{ft�ta, �V��c�ߡВ�
����9����s�K����f���Ħ��,���c3�s���I�)"�dfhnH�":'KS��Ք�4���/��5�3k�[�. �.�(\�3����j�?j:/o���F�\I��R ���.E��Y�_]�K��]3��tc��&��_E�V\f��jVV�]���J������h���8+2���r�������,�����޷�5,a~;��J��ș�g� q���|1|�<�K�+��֙yT�3[�.�\�����H��e [��#s�h|貀^�`�X���Zݧ�!���W���Hl<��#�����	Z��	X-֚���΁G2 ����F�4s�=�N7#ߋ���bq��>�{���j��3�TtdS�1][��G�����Π��1Ұb-i�c�8�36g��(�������kٖq���7E{��.Wy�(�����zEb�:���NF�T�U�m�`��l��~�޾�\��"���B*ux�Cu�(��@�p�e���t��r��KUrב�p Bmn��1(-�5�d��,��/���7g��.���A��|�Q՗�`E�؆W��8ҵ�J�X�u���P*6E&���Oڣ��EދLʞy72Y���(��k��xC���e��D3/��"o����m�=�]�
��    �O�>.�㊐�*v�!D'�6�,D��Qd$l��p Ӣ�U%_L�	_�Ԗlg�I�^�"�*�UW%�[q��5V�u�_n�u�w��Z�wjQ��	3��Q瓽H(9,�+bI�jD���ZtD|���Z����A0�(��e����% T���:a��D����Ql8 �}c-�E�}x��<(S��\]E~�p���.$�O��x�Ɠ�+%�x�1g�6x-��:��>e;S@��<�-�ܼggh�,�~��O��mGƕ�^�r �τa�)���7'TgtUeU���w9����:�z��i�{��J:F�E	�؈3��y�hX���Iʃ�%<[�.���SmN��gl��y[T���$���:�����lQe
���b�8L+��A�#d[�t?��)M��i�D8�V=X`������_��D6x�U�g) 9`d�I��#NV������|��=�:�
:$}�����2��u�TV|7�q�&�Y�)N�\-�碲BcL�k�Q/��.�ќ�/"�t�H����q� e翞��^���[p���G���?0{'�Y�$2ڽ�{����ӛ���ҏGD�ԗ��9-�l_HO13�� Y����I�-��.MH���-56��s�o���a��v�ެ�`�s�s\԰1�'�H�A�/����٣X�N�����]���;�-mB���h���Ĺ�V*��
�5@q~J�}v���%�d�Y�lkDkG����"����iUDзh
��ML	M��y0�e�����I��M$F}�T�x-��	o��<�0���|Mxq���~ao��뎴��ӮM �eb1.��l	���M����f��N�Pls#�[�+nQ+����λ3�D.�ء�J�!<m�2��G�a����@\{kU�g�Ԧ`(��@O���3P�23�-�BG�wB�P>�E�qD���Crؼ��Og\�ox�\��@���iO d��&Bq�(p���7J���21�$6ǵ�|J~q��{�����Vѣ�V����V�;,Ɋ��o�j�[���,���}�.�I�Ԝ0��E�Ix��O8�����s��W��H�K���\z/*��Fݥ1?���4��Fk�v"�O=����Y�]�R�&4wA ~�;;�Z���/�-�0� �W+���AzV��Aɒ��b�-���E#���CB�M���2�0ߐ��QY7g���\���K1�����mM�Z@}��%q
|p������w �-x��Ku�щ9��i�;]�=:�ʵY�c�&-K���:3��r�yӒ��d����M�����W[�/W���Ꞓ+Oy�sJ[�i�!����F���� ߵAF�UM!���>?�ߓk	��eV��u�,�,�Y�4&�	Դ��V�s;��GZ���;%sH�E�H�<b)�<iC 5ˬ��
��8�5A���dO�����p�%45f������0=�߿�W�Gfp,�e�
[4L�$s�;��]ɹmO��3c2���_`1��Jd�%Oe�M�o�� 16b`6M<U~b�� ��>H���.��͹�J��p��.�/*0���FKX��ېNQ8QB>E�Aѱ]Ğ��SO�� K�"O�O�y<�4�d�t~���A�r��u�t4]7p%RUP末T�d=G��f�AN��(�lY?:��U��[5��7��z���J]�:ӝeqp*���Y�е�5]�;H�Hw�\ ̬�~O�P5�wR�������M��(��YU%	��q���Qi�o��=�P&�L�D=�W3�i�&�#�D9M$е:p3燄�Vt	���@�ʤbU4Dl�ɮ�X�j��º b�*�����qxY�h����
pbY�Τ�ك��V��(L�`	&�S�s�X��JO� ��f�`.�9�f��[$�L�d���r�hGnE'�?�u�Eq�{�f��0_� �r�^������XV���fU�^�!���a��"�Ba����7�<�ۙ��#0�g��ti�/爕~�l��۶��z�э��ې�T�ز���0qڣ
<����@��uf^_ckj�Z3��q'6�8�?STM���xc�����f��5�A� N���M�'�^��+��|GF �W/O�:�%JAcQ+��^E�*�cz��Y��;Pͦ�Ҳ�6 Z7)�:�@��@����W�[?���'��������uq��ZV!%���gɌ��IP�V�g`�l2s�lݼ@�N��4V̫4�)Ff�<�YBHS�B_���êCk} f��A:yh��O�jS�D�lT{�Ӂ���V&q�W�
��_ҏ��Wz;tQN��djH�r�`Ӹ0�+��� rm$g�z��Pt�����K��q�N�%�~�~8��k��%y��EzB���l�Y�2	��`�����u^Q����l�r��\d�F��������@d�H~ǶehҨw�c�v�.!ݶ��"]�t=�E��tV&3+����.i���F��i�*P���\�j���]ԩub�x��4�=��3Е���U���5sr^��S	N�{�#	~�U�\0��0ꃶϑl'�Ϻ1�TЕ6���\�α�O�h/hFKQ*+/�F�b�[�s��= ��
���/�����3�{p��8L��6]�]��Yv]�`�(H�����m���%gp8Z ��:3	��Y�p�X�S����gq('���`��Ղ�4ݫ@R�}�V^���ڷ�M[*n���XL�=��KՂߪZW�햌��_L���޵�RzA�˒+����Z����ݤ����1�~�7 )�*�x+[(��Šs^�;�h�����i.fQȷ>Ns������hu]�s��,c��I���}��	�����#A�@�g0
T���_�A�u�j�$M�+� ����b%�_�����h/#�	��c�WY @ �2�Ƌ����siE���TE�#^<�?~�UX%b�t�Ƅjc&���8폃lJ��A��!;}7�)%��bm�3W�����XX�`[c�]�����	��Wt	�9�H�1��Kq��%>�*/��'�J@w DV��ǔ��A��*((dZ�#tw(䫼
�:ؑ������ȟ���q^�,�c�	���҆	&i�AJ��]Z��	㵯x����=��6��B��D�����2�~���J������_��� [n�CO�L_HOaPMߟ<�FLD��4UQ�4�J�Lk.T��K�[䜳A1P���|��!��}ˠ�*���5����)t���H�(g�*:���(���K�-ױ�W�CJ|ͰrUf��K��CɗW�e�|:���-�;ou�"0��¤�dfI��F��������]�AF��>Fw���V�	,�] �7�С��.�U��`���+,,i����btMYA�kF�	�_i�T�Yʐ�"ff�0vvV�"B����2K�'G�\AL���.���-@\�=E���%|ym�+��+F�]$��p�b��©@/�[���t�̯���S,�K��VP!Ud�ɩ ���N^��J�D%� 4�����&�����;�d�*��	�U��d��ܻO7�VF9Z��`y&�U�Zx���q���]L���D�邌�ׯ�,�0b�w��:*����Wx��U]D���&g|k�T�f�`_YSo���H m����_c�~��nҢq�O�����|y64M'3��C����^�vx�K��j�!^滟�x=�}�df����#(�@8�
b&���H}@J�;e�AF�	��LA,�ė hS92�AjGpG�����g�7	�}�4���A�EH���w�d�"���l��ws1��U{�N�D���@���y���(�a�T���ڵ�_��U5y��ڒ����2�;���4�˪6g��s���4�+;؞�XY���\��/Ś#&��J��L"QV�K.��,|���>mggE�X:�	H}�v"�^�̖?~P��mP���i�U)�г��s�����1�f�zN��#���tCX >4/�V]F���iԁXu����k��5�5�,��w�'/p�a�S�i�Ю4��y��G�BzB��]����'~/�j�}A�	b�Z[Ru$��
)�	��}6/}�y_u��7d�Ͳ    �X<qFv��~����d�x�t�t�jT��O�9�=��f��H��2.c��T�nU�l[��D��o"&�X?O�	MI�{�Y�د������$��'MJP�U{��e���Y�z&s�L�E�k��1Z.�4`���8��,Z�[T1^����	Ls�32
x&Y�z��1�
�A��+p�G�u���?�ah��F�,�z�V^Q�s���$�Ǯ�o�-q�^���1�h�g����W*l�q����!h�U�QK�5���,�'n�U@��:�{;����)묡��B	p�N��$��cZ��izx���g�u������(Ä��x�#���md#E��|m� E�S��&�"�)�V����iþ�Con���f����%�Y-B�5��T��崳��}?8^B��r�~ϔ��2�� ���":��چK�W��bk/V���k5�M�?��VX7R@TQ�m��=-�G#q�i)RZÉ�pZ[#s���f������ť�bip{A�M�TR��$�VU�tT�|@�v�e�e��TA�$�.r_��:Q�~�*��k���	6b�/lj�v��hs=��V�Ws�����x�H8�<.��G�D!Qo]�3m��-0<�+�Q-"�Z�v1��THŻ-�e.
y�E�Ӽr�3�*\�U�R9�9������]��`9h��+��wC�*VH��4��&��@����
�ʑs�0bY��.!��?m��y�k����>�vH,�%��'����."��H��z	��e5��X��23� ���g䏋�1%�=<_�3�@!<^�!ܯ�VR��u�L��c)����ץ��LR${=sI/�op��0�@�k-����B�TÎWN��k.
�%F��)�q��u%!�W>�ȄKz�⼩jx�±V������
���"B���	At]���'.�sn'<q2綾��Z�!>�+��\���92���2y&Uǫ+8�M<3W«뵹��wO���3(�~���͔sH^;\�\4��<�|eI%=\����Y2 �uђ���%Y��u]�'وX�����R^]Wq��^AA��kH��Q�ܝ�%��um+��Y�,6n#:zܗ����4>���ih�#��Y��G�ϿБ*2J�*����sA�n��ݙ��[h��W7q�:�(ׇ�z�pu W-��TU���Mi��n�\=᥯\�ᷤi��[�$�07F+���W������XXaz�kg(]]K�q�K��B�H�n�����z'8���#��vmt��P��n3;\�9�sc�G�ב�A�-{�7���7���B#�R��!�Di��C��4N������B�#�UTl��wA������:����~����Ź�2��c��[�������ǉ�����I�WWt/����L�q^ڮGfu�����L��Kl�moy!$�k��V_�^H�����y��gXS�;���J��r��;�BM|]��0%q�n2ݒ�C�B��94�iy!��
ab��y����yuW��2ހ:�W�Y@����"�]#|޵&�<0��A����\�}��Oښ��f�3Yj���ؾ9��:3��a�o]T`	h�"XB��rÈ�7d�qL`�&�.k����q�s-:�q/��f�����a��,����u�nA�A
��(TH��^��[����[߈-�O�ћuc�=���5��)�9��p?iP��@[�� �{0E,���+��=׍/PD^��/dzA��#���K�&��.V��,��e԰A��0.��DysMV�iA�W���E�!L*ٰ��xM&:?J����c����A����t�'�xM�Y�N���bo��^ƞl���py6Y狌Yt_h�����k�ީ(����N�@�^�ùu8�.����]�y&|��9-�O��ʂ�XthX�덗�u_�����D�Y�1�@o��+�9C�x�-dQ��-�h`�����eu&��6y��M���o(�ⶽ�_���T��Sϓ�S�g���䝹'�g^��k����\O��o��Gv�����:�j iS�*�����օ�yB̜�)J����ASXkaN6i^��l���[���N�$CG5~	Q�E-�4�=�'��j�9�,'9�B/�>#�bu�\{S،x���
�G�CPn�bqN�ܦ�"�/��D{M��JI��H��E�{.!�mX�I�����O\�����y;�#1���M�$��_��9$��Jx�����Z����=��s0_�xmJNS����n�%�Mi]�V.��4��x��<q�3 Y�6��ȓ�Λ �'vr&@9�OO�ds�y���5��چ��AO]-����
��Q$w~�_�4_��qa�:w�CΦ��S�>�����?���cy��T��U��Hk���u�]�~����A��,��W�+�z-5o̻�'��K/��}��lj��܀����f!æ�#�U�7u���)�14@�'�:��)��q�ݗN.���+�7H��<�2���V�X;������s���y�K_H���L��+�,Ȍ~���8;���>�do�v��^ė~Y��M��&�~8,�?�m�G�"�l1�����5"i��ǒ��\\��=3i��ɣ�z'�X̡�^�H���v� '�
�1�lJ��g�2���#˦2Zy�2^���K�X��i��3Y���`�Izaa��߃�Di<��Z�;��ݴ��[:�^ߣ�v�rbMk��{���	�LZ�дy�ۘI�^�Ep�
I�b��i�Eu�e��Y��'�R���<!�p@�B�	��4-V��\������ L�AѴR��rt�.]��H��,��5]�9rg
�'n��7]n���v�t͕�Y���z]���HK�tMW'Cgb�F}ja�2s��9�t]͚��c�ʯ�[��4'i�AS�p�̝�����7]k�O�YԱ�s�=�62c�S|('~á2���kJ�E&s㝓 ��Q�'�Rzs#���Ͽ<�S dG&��'���@�F�O�PxA��Z���5��o�ܵk:t���I$��um���Id��uѣ���ޘc�v݆$B.����y6!��P�]��������0	6��Z+��J7s��B��\A����ޒ-'����zpO���r���w�>֦"�}:o�N
Y������	�����L!{a��Y�r^�ȗ��1[}���c�h3%����0�,L���j�ɘ�|�Z�%� V\P�����W���5I���߫C��6��3�]��}I�0�{=:�$ļ�$]˕���6Q��jc���9j��	�Ux�t�1����^z�R�q���)ex�KȦ&bt��H8ڼ2_{��� o'-�k!����։�r���˖E��}H��H���GD�S�C���fI�1^-[X��IK>T%�Y���2^.�-�F4�L :�[�d�_B��m����"�g6�����Nz�(�BH?�t0�[�È��-l��7t�n�X]k���c*���
0���_b�9�_B{�;��Cc l6|������fR�ma�����HĲ��hz���ܜ��|��,'�H�.-�����xt(�haaR��������]�M|JiՇ͆N6����o#�[��g����I�o|k��ޖ��)��s~�U�H�f�����#��`r�I�y���1V��H7��'Zb��\Gw�R�E J��]�v��Ԗ�g����̘gK�`�R�9pl��,�ҙ;tm�fy<�PJ�Cԉ�z[e���I�9�_�B�VE$��;� �0��8;.E�i��[�j�aƠ��eUm�#�XL���=���L\�E���1!��Z�mպb�'��`>����4砯�:u)�4��G��\m�����q	�G�[��z? �}'>Խ}#C��NO���6&�mm���V8n�b�a�̶�À�l`Fϴ�;zo�52^�g+F�r���\[�N�~r���7.�﫱���e�s�������I�a���_0�<� ���%��m�ie��d��t\f)XCၶ��|M���*�k�v�Z�P.���2ٝI��ukE{.Ԡ    kY�V�"Հ���!n��C?/�8c5�8�ڢ:gB�������k��D�ãæqu�N���ƪ�m��=��y��B��ʙ��ȑ!2��Xh��v�vmq9��(Gֳ��\YxeF�cD�Xl� hH&���&dd>���=��X\�><�����pؖ�s���s�$�<�S QWϯضU�L��rm[���W�J�I�S��{��+������Cǅ�����#�2,��@x���m˹����,�	wQ!*m呠��:r�����]��ˢ��Msy��3z�!K���g3G�>c�*;�Ń� �gȳW�?�9�_i�L,g4�����ru��c�A:���kB�ﱙ�R���H�	j��_�/�sl�mי�¤t�ۆ�hN�<�C��ϻu.�z�Hѻun�4�HD.J����ua4�҄ɓ����I��3a(	��\X�N�X���Dl�����/K�NaA<�E��N2�8){���1	q�Yb+�֚���m3�zЮ%�ڭ�Oΐ�@X���_"�ev���}��P���K\�]���O#�2�H��4�0��r㘑M̅�����L*�e���\UX�)ĩcW֖4⺬�u:G�͞���%<G��^T_��g��C�b`�tK0�\ ���fH�;�@�0w����%�̒�\�u!�}{8Y�3�1�����Nig��h.'�sԪ_�����|���ЛQ�J;�ځso� 31�yp�d�j��#�lư�cH���u�- ב�u��)�jƋ;����@�QnC�9'�(���\��BK�����z����P#|���i�d�,��p���H���m��$1�O.���*��w�I����}�;�Y�^�ߣm��+HNÑ�W7f��
gGz.�:���Q�.@� ���&�U
�D���}傯x7Dj+@�2�hr)|�>)&z���_D4VT�a�@'��]aE���P>IG���R(�៹"$��i?����7{v�!h�b��O(}�����O5�+3O��n��i%��8>Jw���2��̐��H����J��;���qB�����V*vI��+KM�zן��_�H�ͷz�ƕ�l���|�����U��_imF)tu�(���Ij�i�b6��Bݕu�z�'ڋ�QL�[��4��.8p,B�J{��Q���Z/��_c��8�d�����^q|a���5��|�H�݀$��$�"	������~AJ-Z�DrUs7%���z���@F��E�`j�� �LG��uۯ�ɫB�*ئE��ua�j�av0�%��B1���ӫP�#�5�?c5U��!��q��]���!�PK#��_)�c{9��j��\͑�H�1���軲�+p���e��{�Ո�a���ÎY����\#�^�W�e6	�ް���t ��R��);/n�
���ꛕ�E}m�V`ŋ��ܫS-<�����������"�1��Z,�p~�o4Vqc;���|7^,���L3\5�ih>Z1�Z��G

�?� P-��;���~a���ZFs@ڧ&�ׯ�u�tU-�}g֗��vcˆ�+`��a�oz�ݖe� �[�F�r���`Z��6��EQ�cKe�`��c\-�/�a����l&u�\e�oν�ؾW���
WI���zP;�<+����j�c��{�r���~�"��н����O�$S
͡��T+Chsm�Y4�1�ַ�T��g��W�@�1��5F�b�m�z57~#�D����a��q��'�����|$'S�k\��pR9b㦡��R����xe�Mt�P_���^� ���+V�Ϗ���N����4Ы��e�r�=v<�n,�P����Ct�W�a�Sy�]iժ�W@O�QL��������,d�p��|�*��"�T�u���On�=r�9c��S&���E��Sk��m�J*^D��Բ���z�c�#E�R|2e�3|�Ux/h��"h�d�
��ݽy�v���A�&�ս�>�NDQ�����U�ӫ/~���D�Q��=G:��8��Pd���u	Z�N���@��h2�c֖�����By�9�.��k'�<�+p�-�d�:��V��>��������2�')�����#-��\�F^�|�U�6����͢,��$~jE�)�B��A��!�9������2�v$���ݞ9�z.KNtba��]H��|Qf �eY�H9��A���.����}@�u}�jd�ŷP�
m�dۭqVU?�,\�ٶ�|eZ=��7���:YO�2Q���歈��qq�3�k����S���.�i�!='�A���`�l�CG"��#Kk�d���m�>����3F]x�H��c�!5���D�Ű1ǚӢl+�Tdu��M�)�.�m� }�����My����������O٤G1kt�6X��z�<�jy���8���d�W+JY�U�������T�o��Vݜ����',��	ϱ�2�;����O�b�O^k:�MO?�l�Nf-#�c��ݮ����C5�rbʍ�>-�]�9?&�7rɦ�S�F�c=�;��1'~d7�����*J�;�<��,��+
����v	Y���V%��EV�aB�z��Ǚd<�v�X�d߇�}j���тz�ǋ-��	h"�K�/��1#�ޗݑ4���۱M���mܲ��%k�l�5gy����� �G���-��������ぎ�Y:�ht�%�F�J�ڑ&��6�ZT�׿�O>x�F������-Va����Z��+�17`�sS��?���价�ZN��+��H�㲚T ═�b�X_�M�����u,(8�����	�,��^�x��
�^l���A�V���77�"k'�t�s֠�*��'���J���+ﶨw�^-����E���q�O���*c���-+�������bb�O�_�?�G�j��᝕n��p��p"m<��C��k���}j��IMAw�QS�mCǀ�BSy��./�e�ԩ�;U��(�� %2 ��T�<����'�b�r�Ȳ��,w���l���o�a����:bŤ���N#-[O��4���U�S����\>��r�{��f=h�O{�ɽ�¥X��*.������=�?���^���{u@��<+��[�\�僣���;Q�����?�s4���r���e�(4������d������i+/�Ί�ө�R�cM2=jS�,���"v�!i��%AH�Yh���l�O�����h���tHT�?Kӵ�G�u��|�4�~aÞ��l�15��M9�1�d�Ol��pb�	�˯���=���'�B�4T�0��r�T9�y$�QG�a2ʨ�ʸa#j�Ԧ�)3�J(ݲ6�E����$�:cM�\+p�v�-����d4o��>ؕ��@*H���Κ����f����T�������	��б�bѤ�'���R�NΊZ�6�Ot�
1Id:��8��:z�c4æ�W?�g!K�;D��n�TLQ�~�Jy6j�K��Wn��k��b1Ϲzϕa��q�N����~�}秖���xGcy
DȰ���?[��na.]�k�ه_���5mJڢX�nXQ�2u��:} ��#	���~��TLN���:
��SD�4|��Q�fۡ�Ҋ�f���v��4f�����O��3�P9
�L�_*�\��e�J-�)Ϫ�{�tZ�����4~'��s�a�|����89���1ј��Cd���:ͦ"C�Bn�U�Ӧ�D�*�3�N[�s�"{uY�PV��H���כ�T���b�bml�i������<߰�#��1�����"�GS<\������i{��ӼH"@�p��u7ڥ��~5�h�Fh��\�
�eȓ�*�Iz]R�UO�:d�p =��=�R��ݯ��z�O�_h��ߙ�Ր��`�+��7�)�̇�l��kP�Ʈt��{�m�sr�6����QffJo���ʂ���&�Rݏ��OeW0E^r}|��e�(��1,8(��<Z�?w��p�##_Vp�.`���Z_�&'�a�`X���#=�y^�� �51��L|S1dA\E�d-v>r�1������AnXŒiǩ�;    #�����R����3U*&.� �)4��vH�o��Ox���ml�ѐ�I��z���m�D��έ:{�X�LN��趚f��b^î@4>�\��j"���L����a:4gyu�����
JԤ�����}l�Y?���u#NŎ��g�4�g]�L�F��:j��V��Q�Sn:�(�hyҗ`^��N��RS�J���L!�;����\�g�]��Ră�Z�j<� �؅�z������}P��Q�tӆ�>�ߩ�j����?VL2�/���i+f=�u�z�0����aO�WD;�%�R�ԝ#�:� ?Z��z�_�ݸK��l�Z��}ќ6pU�:�dG:���^������_bKe��.�.v�����|�����'��.���؎�������,fHg���JK��`A��7���*WW���� ������i�m`ۜ�E`�=�
�|�ELb�J���ĶO_�!�œ��Q�`��[�>���H׋��&����Ed�z:W����TL����iUK�M�����޲qf�+�T�[m�xu�l��zmGJD�cDO;ҁ�ctO���w����	%c�u�o\o��O�3�� ��EQF���IbTB�UVAW����~:b:
�9C�X#-�.��~�?b�Q#ҦJ�+��ۿl����;䛞�|s��0d"/��;��M7�>����1�C��H+������B�S_1�����|����9bW[8�.��I[�Kw�p�Oר���b�\��ЁJvA�nh��B�J�^?�[=���@�O�b��,�'��ӼdS6��7�s9uD��pR�����[> ��gΰ?���	��������?Z��� ��w�;����]���6Y$�M���n������j<DҘ촪��{Zݰ�[���F�O�p]@t�܌k�Z�;�,x]<Ĕ#�c�ƾ�#��rj?x�$XZ�A��Nʊ�xFF"s�c7ˋ����v�@��Wa��^z�)�Ҁ���C�.��{ن<h���=�x0��/��-�n���s��Hc�-S�HF�lu��!x�<����ޒ0�8�]LW�PJ�<�IT��K�@h��#�4 ����b:����Q!ʚ�jJG�H�o#�Z�E��,@�Uf�8F^L�-�Hy�����^�NT[�]�M]ԓb9��J�K�x����N�U�hwHC��4��s�k��2T��!�jE�ix��rR(CϑS
/��X��$oEǖ�1k��)�^�g�0B�ș H������*���U?���3���O�� ܅xC%H鳰w�.���}��6{��X�C�Kr�LQT���!���Cx{l_�	��غ�Z���K>��
(�����5Z�(�0Tf֍X�=[8�2$A�0���,�*���^�:C�p>���p /�E�J�5i�+����	K�l;,$V�Ss�׵ ;6�G2�h��o�Q՘=ז��;7Y%f0�*GI��M�'ݥ�����rQ>�eC=G��	�S�[�Cflpi(NM+:&m��2�P�<���n�99_�1�(�S�����"x�=d1�1y�Y-�j��0���[��bF��|�Ocs�`��4<��s��w���ݧ�����{y#d�xC%�;A�0���2��"�+6Eu.RM��3��!D�����C�V~����j6�'�$vN��Xg����>���w�L�'$X����Ig/�n�2�iYC���(���Zr���(���'��dИQE��l�L�`>�E#e�%ŦJ��˂��9�TV��37�A\���X���+S%Z�P�J����<<yC%=�6����u�/_�� .���d�z�X�)�Qq�7���bG*Yu ŝ��>�A��F�F(�6ύ����{����4�k��4��itb���4*�1��j���K� -O�/@�[�>���b)�%��#�hŀ<6w�o~޷�K�&<R49�h�(,�B��p�N�WX������9�t[���-�����:��ĿY�j��*0J��}��و�wS���s�A$�>��@�Z6����ʁ�氕�}�pS ��mG�8�����+V�[��87	�{����P��g��b���a�g��p#�_��m��d�K�8�] da2F��������.r��q�C�����jv�]>D��(r_TVx���O���2(�dP&I���B��}l�&���Q�.k�d�?+f��g5٦#�����w����eC}ۈ�sP�C�Z��1��I�)*��Z(Bm���J&o�Fu�Qr?�8��Vr?�U��̩%h �*7�.�����������J1��"9�@� ?��lP����b����v6fdA:u(�α�2>��>�u���O�ֵ�P��R�*�b��F,��ګ���"2�/�*qrOS��jD�0C�z')���NC�W��rZ�,��C����[Ѭ����:`R�y�r��S@j���o���G�(����kxO)����B��9�yZ&؝���O�ݥ�O��;��ߨ`��z�)�A�ԆJ0U���;�x0]�w2��b'3�b��,�܎�[ӗ����l%&�M}>�'�Y������Eݾt����d=:�[L�!�^���^	��K;�p�{4j���C���I�8��f��zF���$����������E�М� ~��c'ѱG/K���@�A/34]ɢ9���1���'sK܊��e�����x� �d.k���Z*˰J	��b#�k��d��@?��,H� Et�����)A=��DX۵bA`�����r;������vH�L�R�`Q7P�dے�F�D$�]i�������s�+96f-��JP�������� M�05,��[��ȣ�'� �rV2�l\��k������)���wl�3�Y�`�MT�p�rw�/Xzw��4�E��4��{�>FC3aq-���"��ݓaS�-/)&�F��:-�4A۔�i��í�x9���<Υzs����ͥ�S��rLb�)1d��SPu<6��4V^�YM�M����m�uTZ�4j�&[FnJ�����*)��(̡�^&�7�R�G��*� ��|)��{�(�۰������5E��ڧ��&���s8�H� f��)�Q.��鯣t�<5�(���J1���-��l�G:ب�{���;c�	��ѦJg�m۳:jᯥ�E�K�̯���#�X��8So@����R�qO�-c����-�6|d���� [�D�ʚO���~}L���o��U�>}jό��R͔�ypYӍ�/���E�(a���joo'Ť�!O�፱T����!
�P�-.A�ɬ^e�ȱB�n����P)�[��_�Bm &��p��"��+�G��|�$>�̤���E�X���v/�&�߯%�d�3�����y���J1�Ӹ{G��U��f�#MW/ŜO#��*V^�+�8�ܣ4���c��v�#`��*��N�7��j�/�GB��*��ף�*�U���Э�iw �bb�*䱩2b�H��}���I�Lv�/Z���߮���lwc=����B�z�Q���%�^1���ۓSv����"�=��[�;~3�>�_8�c��ZF��'�����t̿5e�z��<<�,
�і��U���gD%	K{JT��f}ٛ��+���]�~f�$�"ɷ0���A���ٹ��OO�q�J@�4���JfxI�q�L��1=���A���g��p:���3��h�I�Գ0���><Ov����*���V�{6}T�!45�Nc���ƫgb�'A�0M�Hј���u�y&��g9��;T@J7!<v����X���C���3�Z�Y�3CD'EԢW9�C'�"�1�|aA����BY�H�;��C�9)��'d�
k�`/|�i/��e��������`l#d�ˑ$�Eحgɮ�Я|*Z%n֕������jQ���O���u��i�𶉊��F&n�z�à�htk�ˁ 1�!�H��^G���J��Z'.c�6q!.����c�d����JK���E�i�����fd���W�)X���Te&O�g��q�Ru�F=�bk��+@�	�    ����T�"�k_@,%�׷<Qu�2��_ׯ���zi��< J�[|lý�P���ߦ�[�X��[�#mɀ��h>g���(`%J���&�q7�>\:2�t��{SZv5�EQgZ6���I1�8p��1�C�H>W�r��A�P��Em��w���,ض���z��ò&���I�v��VH/�`��B�Oz���j�����̂\٪���̵f�n�w���>�[��Ү�vR�KGO�hq�\�#i���8x�tС��gS��Ֆ*	O%����S9����5�U��~r8������<�b�
cp�T�����h�_���:�_Z�E�)?Ɩ�XT�xB���?	qQxFs��A�\`�lH^H����)��{Z�����G�F�z����jV��O�/����N��a��|d�. Brww���*��s���}j?	6�B��>�ٟ'lK{��ޕ��{N0$`�EEPD��+���(E�?�����|eX>�wUy��8�F�*I��\��Z���������z�m����~Nk�l������̆��~�^�h�wͨ��T���iPu6���!+��iC�E$�0)���Qy���{T�����H�,�DL�\1Ӆ3����i�Գ�R�R�Q��7_�xg���7^�Օ�V�}�cI��G>yb������P�$��t�X�g���5��;��1@�hm@�{�b�Ӷ3t�[ڪ���˓�t�ܧ�9���8��d�`V�t�b9�=8nY�=�G�L4���T����pmJ��o3~���Λ�j���}�-�-<_��g��8h^�V!��G��
�8�Zr��o����E��ӫq�$s1��L��5H(��L�p��:�gJI�S�&�Wh�t��z;Y�n�o�X��.U>��{�^`��;d�yj'f:R:�{N���;86�9>�N����7Z���}m��k�&+��p� sQ��R`n�}6^vIh��ݔM4=�(�E@��ԋ~�R�DFyw鱊�ȆJhKn�
�5TRd~�,�&�n&97v&iűܟI�2-�p����sfA�jMU훇�h^��0?лM���W�%�2����=*|��{I،�oWc�/��F�	u�&*k�w�֫-=���/��~��V�ac*��b�j����%�����l׵�] (�+].\.�� *֟4���}��A �[P�C{��G�gMR2������E߾�ؤ?�����&�{�
�e����D��u�*���x�BY�F)�~���5�4Q���7���������.�[�G���)㚖��(�����;9wɽ*�V�N#	�Y8�i2�$p�m�we�@�p�����Y�QyW����eaB ��o�0�0O��C{�	6z�A'Xt=�O��]�w���v�O!�'H.���d1��J�\�&�bi~�_;O��*�*.�x��l;�����4;�gOi�$�B)<��!�@�m�-���RY��Zw
oǱ>4d
����-�iq�d�6�.9c��w���<H^��\�gp;\����0fcPo�u�(��ty�źSo����ұ��b��t��|;Tg�� �G�2�.��sV	��A��no�T�O�p��{;�<�����bG�{�����n��Y��b*J��Wz�"��$�vnao4�K�(��<;-%E!n+�<E���ׄ_��Ֆ���l�3��t�m0Z����R`ڽ���y����=w>����1=�>Mk��֏Z!VI4�~������	�L��ߴ9���� d�[�\�Qg�	M��!��ˏد���O��~����E�_��9j6"~�]�D��M���/D|��ɣ���Ҥ�V�݆m��°����Q�s��^�Jzy$�g� ����Ωm��-�{5�XM�V>�|�h��П������<Xz�#����֠�My9J��l���Ɠ�s6co��J�.DCu��Yx�c[���9|mO̚�w-?a�|�q��A�^.5
�Ȃ�������n3�my��K���sj�goP"��[0�ho��@Q�ne�$m�Yt�!T �L��P�o7n|�Z��~���q�N��y�����k�0�u�EpM��f:�U�������q���!�mH�Ր&�ų���pn�a�7�Y���� 3���U�Ώ��m\ŻFK�Q�XK����)�ƯL�G��~2@eD��tz�lܦ$T�(r�rs.6�nM���>�>Wr*�Bհ�|TXJy���l��ƦG�u|�e�I�t1q?m����|�L>17�¸n7���0�o���e��Xy�*U�0R�HU��&���˴x -tI|uv>VjO�{��jV��/�C/��yZ8�+�q`f��j�sV�r޲礭�E����p�-�-5�֠�����R��t/b�2���L� �%��C���I���(���~������uHsn��Z���_L��K�u�u��x�#�v�;�)���R3�4w��������b��շ�a�^��0Ww�����_��T,wR��w�&.e�bQ9���+��5Al��T�r�ʭYŇmw f����Qe�a.�Ȋ�]-`6l^�ь7���{�H(���-��csH��EQF��c�L0�(��+j��S?��{t�D�������*~�4ԯ��Cַ�4I*)1MRa/�Z��}���<�Յg!�%�u�f�=�q��3��ģ�R��4�6����@J�L繴ȩ�1���*Ͻ<�`I9Mg�����4��.��������0�ms87��+�{���	�y�_^=gcƢL^Q�V��k�%���d2�/�^3����]EE��ͬB;#�� �G��k{���9����,A��ѿ_VTl����;�O��n��D.\��8��x�i����ݹޓ)��*(dR]^�pR]����b2;z,���?w/t[��}�T��n�xCy)ٺQ:;Y���P���^���/�H�,+�+SO��d�&��6������YC%j�����[*�>��tri,���|�CǦ{ln�&�	��\��kΙ3�����ܯ�o	}xl�qI��=fpi�`�qy�y\E��f�16dh������4��Oܨ3�;$n4�3����92�GF��Km�m�������R�R��Vi��P�Ət\Բ� g�>�_�^��+�q�e�಄��e(\�5�[*0V�D�4��l��þX�?�Hq�$?���'�Sտ%1�E>]cC��x1��3��RV�۰L�}j���t�٧��>{�׭����UZ�;�~��Y�iyo7�6��ɕS���/�)�x���3`�����#�x��`��N[��Z1�n��n�N��ПZ�7��$^,k�������Ƒ�D �J��FOe��L[R��7x��Z�)�NZ�3%;��ls�X�d��7����V]h��':�Q�o�n�2!���M�����b�̖�A���Uȹ�y�n�]A;�4[fm <�س�Y1g�B�Jo��_d���b��3�Im]:���sq&8iY>VC��.V��mZx�X��3��XK�1ۺ�qva���Ϡ�Y��L�`����@�\e�Ļ��-�L�X�2�"{� �}���>�2���M�X�|��_4`��4/��!����t�)�C#�	�fd%��3n�����v%�%[�;�E��d��Ì?��}x!у"�(=�[�U��M+)��Y�Z�w��YĆJ �86�2�V}E����tV)�'���j/��8�F��m��a�✀Wp/�Iڳ��B����%[۷���A��fG�����ּ�r������y}����U�:;?EN78ؑȱ?�c�~ύK&����,��.�im|/�� ŕe� H0F�gr��=GM��G��4���d�BL���Э���uQ�9}C�nitA�`�yQ�m4��e���mH�=�!O��sO�_> ���[�����<�Ş�V;l�<�돻Q���W�y܇-�'���v��<�� W3&�H-��2)�K����yKe+�;?��=⳵�j�,���4��G�\�b�<g*�|�D�]��K}�e����O�/����3�TV�s�    ��,�3W������t�C=
o.�s{Ͽ܌���;�l�^�Xk؃5R`a ��w�$t��r[���wo2yn�b�Or2y��
t��\N�n:h��.�1���酊�����x1�3m�����sU����=i��̳��8-ؿ��<g��oa�ZL�'͈��B��C�L��>��5Ýi�;�_������{D�*�[^���a�O�ܢ���fHF�,�EIJi
���l�D��J7Ey�d;�g�W��h�P����I�f�ߧrj@,��V V�X��������ZfU��$���R��Ɠf����÷ӅZZ���m	29�)��0}A�E�����7T�G����̆��r޵�M����E������i����m���$3�h�ĭ���,4��~E���ZB�9)��tp��d�2��K�@����,�{���5󰐞n[�j1e�F��Dt=v9����ͮEF4J���_ј�:��i�?P6 �ۈ��_j�`��&[�(��1�����UZ��^S3��>�k�k"�[�˹3�������FL�D	�1œ��_0�T���>�5-�S���;Q�����R1�P��p1��R1�j#�^�юT�Y�IHC&d*�}6x�ko�v�he ��Z~�V�	W��D�j�I�QS2��D�,*�J^�_��1����ܷ�%��t2�z��b~�]�%��
k���2�Y��L���Y^C*���m�5>¶ES�N\��Ƭ׺�|EC���g����W<�:���ӑ{�i���PG.����V�l��%���*e�ZԊY��AI�Y�����@x��?�]10z�@����D���/���*����v������x<�_Ǩ�!��.		���v��^)4b,��m�/���1�*�����6n���!��Rw�K��K����}s�,Ŷw�st5����Xaж��Ip66�V{l,`eb���k�4�"۵�RL���c�[*��/��(��ZY0��o����qn�b�kZ�lo�9��;��2[<7��N�Fv&P��9� ��,W���y��C��7�I<�~y$G�d(Z�!����2J�oa�:��;YМݝd*G�M6Q�g�$Yt޲�����2��G�6q�������~��r�R��"6m׎9H��������Q�v���A�iOC�N �� �UdsY���L=Zp=s���~a�
} I�Xڲ"���Z1��6�������g'������ȑn��Wn=�i�մ�6����g���b�;��;�˸������a{M2�ꁉ���N���3�%��[����gk�����|j�k��C{�W{�����;��; >N#
VA%<<ߢ�Q]O��3�o�� Pq����\�Z�m�I������s{��V����-=�T��2y���9jC?��=�O-=��Q���@oM�χ����_� ���^w[*+�O�I�X��rX�Vbt�П\E��֣}+�~���]'���5Ve�y�=:ېHN�F��/	��S������n\�
�O*#7Fì<+���	���I/��n��X#ź���/N�M�R��r���������<h�]�l��
)�Z���8����گ���,d��;��2�B�9W|Vb>�!�r�<��By1r*��Y�}�G?/��{M��:!V`�>�%~�T:�k�3��uB�����K`Ͷ�Q|��-�ċU	~���;^ڂv3�6g_�V��C�/��%�u�5_�Pם�)��gGT���4bR?�Q�;����5]��v]m���"m�U����Z�JL޷
0 +�v��ԃ���JX>'�P� ��e�O����FW���`��x�ȭ}��9����#lb��W]��V�j5����������������H����U�n����=�^�`�8��g�ц.���V6[���۸�H��mm�b^;�}����R/��{v�Jl�� }?���{���Ռ�Y�-F\y`jTVfI��Y�1��}��9� �J�gA;���Sd%62����4T��5��|�@>�?d�W:�]�0#�y%V�ۓ>b��1�=��2m�w�ܺ.wd����1\�Fq��Z����1�T� �AOS�#�{�HC��9
{���z5G��3C1DM�}�4c��gFg8N��{��Yg�z��E;VE�h�)o�P������=G*B$���F$'�낡��섅\���+��O�_�o6u��y'��&�	��vd��f��4�?j��h������3�!5Trp�����-��eA����ڏ�*���>g��N|:���&mGv�
��ʕ{y��x{ޛ���E;�R��i�5G�F�4�۷�3��Y��"�R��l��Z߫C�C;m���b��p��<��{����ޟ�2B��X���[�X�N[��
Uw�ƾxC%�H\ς�2��5�$Wq=kj�Q�b�%���믢�	tFt�}�!���4sq��>�����Z�O~SVs��@Ic�H�3H�J���%Xqc�v,���?Y+02�y��Б�59��{]�GF��afo�����"��գ��5]�;A���l-��ޒ�l�79AV�Z��������}��fӊe����@G,P��^�{V�
e֧���9�Q�;&�h��+��;���w�Č4�s���
���@.}�S�>'87"����n�Z�mhĻ=�@���b��v�,�o"~IV
��43U�����m)�nmۨ2�:H�i
S�F�0������a���,^�� �����L1I�V:�,7�zXfت��ɥT�k��sV�9� xM����C�9/
2���P����@�0CVb�E��ːM����*I��R%�v/�r����A��?Rg�Xéb�ՉiLs�Hi�r�L���Y.�"�>��-�C|�嶦��o�g~�g>u�n_��~� ��*��*j	�ףt�u_�cW�zVݐSW!t5�\W�Ĵ��1�̻k�ِ�W�m���1I�(����<y����s�+�0�9#?2t����p���*@���^^��4#c�c�$ԕX��Տ��9����Z�66	~j?r�d��Q�
�-G5&��<�3Ϫ�ڣ)�L)9���,�&��[Wea���j���z�S�tKN������(ٽB(,@D�C�	d�#��:*�>�_�I	�G<�q iw�z�Iـh[�d�ϮJl��_��S]��
W[���Wb��P�{��^�o���gCWb�&z�O�Eλ�O��ةg���O�'�+n0� �.���?Aٚ�+����~-���ψ�n���L�`��{�P�4"$��l��?�w[Q5ݭ��$P2/�����L�"0�S������Q.���9b�;��{��jc��HB0gmW0;{0ú�cKe�@�&��cKe��?������n�F=�l���]����U�m�J�<Ɏ��:j�r�f�&�T�ɰS�6l9Gd{����JF�I�`�����F^i�hP� 0�+��*���5�\uX�_eC�?�?��ʽ�L�$��ZД?Z��0)[�/�F�uxj��>�
8W�_����	M�.�1�������)Ț���)����Ց�wȒ���><)Q�h�|� DI�;�Ss�ĸZ~+I�ƹ�f�<�J�:J���L���ț�O�/��T�?̜>����0s�B,�=v������8��\�����jPy�n�/R�u��s6�yH4�Ӷ�4͘&lݓ���
6k}����2���[_�>W��~��*F���1�!�9M�Аr�e�J��?�Xg`��aoƪD:-6�?��΂y~�5�wǗ��	)��:�T�Ho�#�M�h�$wn��	�	������r�v[�r����$i̢�G����^4QW5���
\Y�SD0{��n��+p9@��ӏ�#P9`�$�OW�
�$�ΊؽЙJ���ju/ѿ*;I��$qd�m�Y��{�~˧	u�8wȘGD޸��$6���:�HmݰJ�=�r��-���S�m�TG�QJ@-�CV�@���5�/�b��/%��<�ta(���:� Dr���j�f �9W1$��}���-��cX���\1ϱe�I��f��    ��}׌T���A��v�4�+��Ϭa3
�gIԱ������k\ۊ	(�H�0�l�n�,L1^�����ij��٭���)2��J$#�p*f�	�#x��^���`s�e��!!%���P��Q�3�v�/���=~���B�����~X7�^�[�?�Bp��� �qBpzO��LX��$\��Ȩb\F!na�6.�8?�����>MP��)�D�ɪ��/�0��lzf&�HMP��&��!m���(_i��a����w�c �%����E��?��=Sc���g�#�UR��5���?qO������d	=rUV&v_�뒉c~�&1X��yO��2�|��3�e�?({�f#���S����4�F���6���@wѸȆ��e[���?7�[��~_�R�ܻo_��Bx3o��K,m���e\�'����F�q��tF�~o2`�� $Dj�1��l>O J�[�K�9˞z�	�gև&t8���ІZ�%u�r6��ut"������&�Ѳ>;en�������\���}N|M<������o�a"��X3F0�k$VS�S,'��o��~/r���<�æ!a	9#�C��g�XG�Y��t_0���f�C�
�q���m�P���W'A��Ȍ�l���Y����Mo���0���7����9���ݪh�*����ՅB4���[�����H�����k�$k�g�d��l![~�-^}�ǝ�m@n����P���Y��1Ps�t���3�XZ�*QF���&O��4?����EB�(�*���:d�ޕdcp,��"�:D�-n�Z�Zo�b`~&b�$%	FN������7K.�u�u�d�l�k���s����eB7��m�_|��,��A�"�l��mp���r�؝��}N��;#�;�	ȸQ��O��y.-�U��z��� O_��/�+�I�dHD�q�D=�2]�ǖ	��C�]i��m�!�5I�M *QG��Q�1+	"q#'�F`ӻ�!�x3���n���:���'q�����j���+�NJR���/5�œ��k��d���Ǖ�ѪVb�?�â,����h�oBD�r�M���GR��Vcf9���c+����������7�5��J��)e�H��2;JHQ  ,�>��k_D�yf�e��!��N�t/ŬiM[Q@��A�K�e��0�Z!rw��ps�0�<	7(ND��Zz<�F+R�/ɩ��)�2����	D�z��i���Ӷ�^����u�9�I�xu���齸�U�N��9J���}�݋s���s8�T��9R��̨h��a����*�C�/F/-6G�����l�y�/N 8��0��|�ڕ%�b0�chmB��~���t ����1��Q�-�*�\iko�&�����f��̸^NJn�
��O��-��kv�uO��C�p}��ip#m�?� }��p8�'y�N9cO���>MP��10�����p
;�;u���&�m��ͥFD^}���]���J�ޫ�st��i�]F�Kɦ�Z�/���/S1�?�`��$�y���Yǿ�vTR�G��۠<i�/�3��1|rlEҝ�{㐲���p�I���Ӕ���R3���m�|��e�|��:gX.��1/j�o=s�}c�4��r-gZ�����>J�.4&d��T��H�Rv�|���Lh�%m�"J�P��}�`iS8.F�09��Ƭ��.!�sz	m9+Q��*��W8�I߲�֭ٵ+vS���eoH�ɿ s�g�$cd��$�l'�Gk�(m�:�L8g��_�4��B��$I�8o��$'�E�oFD�Ք�AW�����S:k/S1�Gl'��	V��n�S����O�l]6�l��t'�.v��'O	'����p;�Ի��?\'��Up#]'�!)c�"Q	�ͅ���T�}n����X9W#GL'1W�TŲ���y�h��e���{�]�y~0;r]�6~������E�$��8eF�&��	V|�|X;o�h�._�_��E���u���ݍ��/6�$�L$E2�c���Q��G��4C+I*N Iv1N�D�$�e������� CxUQK�Y��ԫ�7L���g�	cJ�IFTh�#�ͯ�X�~�6����1�5y���8E�a���pl#�;�i%��<c>�p��#�N�GqcL���#�֩�#X�l��5n}F����Հ���ZT4�S�cưL �f��V��E���숄�b�+�:5��e��ve��%�1fS߬j���۪�����ѝ���#k��<ݱ<�䘴m�,�����b8c<�XtK�]J�\O�4d�&kt�]$��C~�<Rw\�!�*=�Y"pp.�,��OZ��
�Ċ)�)�I�SP���g�θ.��(�+'=��^����ݎsA�Ƴ� �6>u5 �o�h�QQ�Y��v�*o�������-��=�;�gz�1M�w|�4,�b��ݑ��+�&B����_��Jmh��s���⣃y_�mx^�W��V��4��*h����0$�c-��9mHC�7VS���?����hG���RwIL��L`*Y!Ӫ��³��M�F��O��I�?����]	��b��h�5<Kwo4OI��5R�1xb>p��"�]��Vͽ�*��H��Lna�q�exל7p����&^��j/���k/�*��V��cbxk��zO��>';�1S���x�-�c3{�CfQ�!�cK0�R	���x��p�C��HyL�-�]��5$�?w��0d�o������Đ�V�_b��4�f��1��x�B���㯷��{Gɛ',�����b�X�!�w{��^���xk�R~Aӯ}�i�ybog�[��8y���C�,A'y�e�����&^#�2ⰴ]JVF���L�5Np�r(�Xk�0?��*b�%g@�p��|C�h�-�}�(,�'������J!-e�q@�P�\���K� &~�|<(���zx%pgJ��GZ X�&	�	3��9(�H�:�h_�p��s���&G�=��@@fl�Yȸ
�QB%"� ���I���z�2�Z�RG05�ڎ��BL�/t�JC�
U�o�y�O�2}�Z��O��p�{�iH)M�C����z{3�Z���q��n$1�2���q�N4�/�4�`�WQI�Y1�,�R��O�(����),,#	�+���b����F�6�
�.�&�c��S�\%/˩���%L�~�֌�ipr��P�@R�Awc�������/m��uG�q�<{�|>@gֽ�_Q4D��L4Ƶ�NiD�Ĕ��pҾI�{��7�?�*�����K�%[��L����(�o��?�=�k�q�8Mw�Ω@|�<��H����(XU3�	����E9��J�IFDYc�>3.�V�;�j�>�T}wv�'#ۥ�~?undX�0(��
�57G�5��/�v��Y{0�)Ê�ة��!�X����������9�X3MA?�q��#j�W�K�AcZ��q�(c�&.)e��S�Æ��|=���n�Ca�Ų`)�%��a�R������]BG<Nx�ɳ��Z��C���1��Z*�,�s��2i���$��xl7�٘�?�{���X8 W��K�o�p�C�˳��V�5�0Rx�UD>c����x1���D����
��(�WYM�Nl��"�xR���T��
��C��S��*V�?���`�5����O[&\�w���	4��>l�=���g�=�2�Չ!V
�k����7�ˢ%=;
��JC�����,sV��)Y:���.����q�Td�V�֌҂:?��T��T�@ʒ��ݳ�x}�����+�i�d3Db5)�T���	��@m�� ��?Ϳ�5�� �YٸKo�.�g�@��\��c���UFK�����|x�L�Ȕ�"��٠�P�eX1���h�,�,���GZ��d�VJ����$�'���Q���ݤ6��	Λ�?5 ��{�-.B�0	)y	d`@.�ω�&ȉ��e�Շ������L�pS�(�4m�����_�rj$ʢl�&wP�rõ��ǜv_�쑘3�"�/�P2�� G  ���o_[�_"��d�|��V�C����6��#�ո�"�I2��VӃ�Ȑ�=�c���n���|32����T�Oh��a���W���"y������${a�q����Y0x���16�%Wc|���T���a�rTG$���T�Y1OM%gf�x�Z��v�S/��A;�ޅ:��M7�Z�[�06�dm�5�!�]µ�R�LTf%�	��D�Cu�V�R3���YZ�5�\}�v�:�*�,Mn�T4�4��ZQ�^�ꋕZ��c��9W�䵑&���{����X0
E�`%�Z�0�m�4��S�ݸ����[teYYH_��|V�����o� M�|���NCJ� R�a�7t�$Q���R�J���
��Ĥ���,rt���[&�{���zXfZ��P
��ml�r��Tn�^����f�c˄+b���*K�;�7��cQL�v�Q�$���>�8�9�ie����	�zkiX�?{�D`�����N4�R,�u��5��& oϮބ5��ι����4�)�@���t�,��ޒ��
D�*��[�+�p�#cW����e9;zr^������i࿰Q����P�D�
�m@Iu8�?Yȣ�N��������6"fXJ����W���s���+�_?y��2�!J��O��5�N�[�����?c�7�Y����b����M��&@B�V"go����M�����8Жn\��1���������k������������H"gO!PM!ж0" w���?c��m��: +&���L�@��wn�/�=��${���'�����Řh�MA��a]6|���Y��xVAo������W��S���3%o��Ճ���5&�[����k��fh�U������b˄C��CRm0cu`z�.�0�Q��<g�Ϻ��3���X���9פ�M�$��bS�$Jy?z~/�t]=9�]�EN�����ϯ)-��Jb_�ċW� � {{���w��F�W�uĸ
�q���"6og�=��6PU�|$÷ɜ$W_�$�\Խ�GP��ź�a�|���pvݪ�2g��!�p�Q�U	O
��c�2�t�����"��^������F�Z&���u����2���آp��|V���*�fb��tI���K��WU�C������~ʤ]���X�i�>�ʒ8���ΐ��&��=�=q���0O�{��2��n�G߇6�+}h�g;{�K���V7�[Yj���)jDu꠩1�%���+��*Ʀ�_r
�Vd�H����^��U�
Xݸ$��(Y��p��{�Ά��2���dW��t�q���{�,"���yk\��w_��\0�es6e9Q��F=���Q�q1K���j6s6��6�y��Z~}R��o�d]>|JR�������5��э����[Q�����7/=�ڢ6I��+�uӧ���\����y���v��r�_�����*������+]R-��K�%ڀ*����cݷ��,v���L&�5�ǈ=��n�����p�ϻ$k1��pV|Z��kכ$����*������b�f���e|F(XS��f(��=,�B�0�a��C	f'WK|�Lؘug���\�m��ӺWǡi�!��'��[wR.C�%J5�n� b���F�	���8�t�k<��k9�d��lF��5�[���lL�M��:�$�$Z����B���j�����l���7L4�����{ד'k}�"�I�I�|�����WOs��T���S�{���<��.�]�P����n;�
��;z蚦{�O�1I�ˌ����:�WˉýuI�)hN�.q7�ˋo^C��wAOJRw4M<X0Tez�-���f�G���|��Ƀ�7��A��0*v�q�����x}}����*s��0��M\t<������Z�,���eB(��_�z`�os{i����^���${	(ΘAg����`�<��@�a���!Wy!��JC<�Ժ�]��ҝ����b���#���Y����zeg��CʈA2�{�@��3
�Ҫ�*X�i�>�U��0�z�J�r��c�_�" �k���aԻ�ؘ�����5[�`�)������0�꽼���מ�ɱ��P�Z޽��v���'�h2SZ�©j9�C�k�ƻ����A��~�@gpƟt��wgQ��]�:8�g�����P{�^��&���!˾��)+�gw�9�<�oR����q^ۿ���m���ƔB�qh��Fc�ZFe?�&�^��������]f�՞ɛ[�C�����#�qd����T+�t��@� 6T�X�	U&B�|�M{l�tt�#���ZۂÒ�<I�����v/��~7���dW?��B׌׭�߂
x��f��a"L��8���ݼ�$�A��M�b��nO��zh��
�T�\��Gd��=(z|#�������]ߜ^����xo1,2��<�4�*����.�s5k��97��L�[�6�����\��7��3q.�ڷ�p��^�\%I>L�*2b��Ux'Z�03�<J����B�v�F�(=Jf�|J����X��֟9z���Nk(�������/�=�`���E�|y�O�!ݶ��a��� ��H�e߭g:��w�|��Lmw���?����+H��-%�'|"���ڶ�,ؾ� fl����J̟ܤ:�x��hQ��E��GWL��ݳ���*���O(!2vXYٞ�uwkq��C�YC�4gͯS�;�N�	��ߘk���$���b��(�����*(�ԟN��f7m��n���NDAʷ+-�t�h|/��ٛ*��ڮ���TW�������� 3?��            x������ � �            x������ � �            x������ � �           x�]O1n�0��W����8F�*$�]�DH8�!�Kt���c�=ݎ�;�\sS��.T���yҧ������==�`o�����<p�2OR�-f�pĦ��q��$�l��W��CK��c��-kDժ��V�jj��"�M�� 6�e���hgV@|!p{t1'J��*�tL���m��U�ѳތՉR�,�O��^Y;K�"�3zI��'iQ��O���|��\RU�DY�@�1�|�1Bh0h���<��\U̩@�����{�            x������ � �      #      x������ � �      '      x������ � �      )   1   x�3�400Ѓb]�Ĕ\NC#cNM�(P��3���b���� �	�     