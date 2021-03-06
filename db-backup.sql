PGDMP     0                     y           dbld9dpsmup4uq     12.6 (Ubuntu 12.6-1.pgdg16.04+1)    12.2 ?    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    2539983    dbld9dpsmup4uq    DATABASE     ?   CREATE DATABASE dbld9dpsmup4uq WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE dbld9dpsmup4uq;
                wfzikjzsdzkeob    false            -           0    0    DATABASE dbld9dpsmup4uq    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE dbld9dpsmup4uq FROM PUBLIC;
                   wfzikjzsdzkeob    false    4140            .           0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO wfzikjzsdzkeob;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   wfzikjzsdzkeob    false    3            /           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO wfzikjzsdzkeob;
                   postgres    false    775            ?            1259    2540022    Answer    TABLE     _   CREATE TABLE public."Answer" (
    id integer NOT NULL,
    question character varying(250)
);
    DROP TABLE public."Answer";
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540025    answer_message    TABLE     h   CREATE TABLE public.answer_message (
    answer_id integer NOT NULL,
    message_id integer NOT NULL
);
 "   DROP TABLE public.answer_message;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540028    answers    TABLE     \   CREATE TABLE public.answers (
    id integer NOT NULL,
    answer character varying(250)
);
    DROP TABLE public.answers;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540031    answer_serial    SEQUENCE     ?   CREATE SEQUENCE public.answer_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.answer_serial;
       public          wfzikjzsdzkeob    false    204            0           0    0    answer_serial    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.answer_serial OWNED BY public.answers.id;
          public          wfzikjzsdzkeob    false    205            ?            1259    2540033    answers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answers_id_seq;
       public          wfzikjzsdzkeob    false    204            1           0    0    answers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;
          public          wfzikjzsdzkeob    false    206            ?            1259    3034657 
   categories    TABLE     ?   CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying(100),
    color_class character varying(20)
);
    DROP TABLE public.categories;
       public         heap    wfzikjzsdzkeob    false            ?            1259    3034655    categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          wfzikjzsdzkeob    false    244            2           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          wfzikjzsdzkeob    false    243            ?            1259    2540035    contexts    TABLE     :   CREATE TABLE public.contexts (
    id integer NOT NULL
);
    DROP TABLE public.contexts;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540038    contexts_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contexts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contexts_id_seq;
       public          wfzikjzsdzkeob    false    207            3           0    0    contexts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contexts_id_seq OWNED BY public.contexts.id;
          public          wfzikjzsdzkeob    false    208            ?            1259    2540040    course_description    TABLE     D   CREATE TABLE public.course_description (
    id integer NOT NULL
);
 &   DROP TABLE public.course_description;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540043    course_description_categories    TABLE     t   CREATE TABLE public.course_description_categories (
    id integer NOT NULL,
    category character varying(250)
);
 1   DROP TABLE public.course_description_categories;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540046 $   course_description_categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_description_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.course_description_categories_id_seq;
       public          wfzikjzsdzkeob    false    210            4           0    0 $   course_description_categories_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.course_description_categories_id_seq OWNED BY public.course_description_categories.id;
          public          wfzikjzsdzkeob    false    211            ?            1259    2540048    course_description_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.course_description_id_seq;
       public          wfzikjzsdzkeob    false    209            5           0    0    course_description_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.course_description_id_seq OWNED BY public.course_description.id;
          public          wfzikjzsdzkeob    false    212            ?            1259    2540050    course_description_levels    TABLE     ?   CREATE TABLE public.course_description_levels (
    id integer NOT NULL,
    description character varying(10000),
    level integer DEFAULT 3 NOT NULL,
    category integer,
    description_id integer DEFAULT 1
);
 -   DROP TABLE public.course_description_levels;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540057    course_descriptions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_descriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.course_descriptions_id_seq;
       public          wfzikjzsdzkeob    false    213            6           0    0    course_descriptions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.course_descriptions_id_seq OWNED BY public.course_description_levels.id;
          public          wfzikjzsdzkeob    false    214            ?            1259    2540059    course_level_questions    TABLE     ?   CREATE TABLE public.course_level_questions (
    quiz_level_id integer NOT NULL,
    question_id integer NOT NULL,
    "order" integer
);
 *   DROP TABLE public.course_level_questions;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540062    course_quiz_levels    TABLE     ?   CREATE TABLE public.course_quiz_levels (
    id integer NOT NULL,
    level integer DEFAULT 3 NOT NULL,
    quiz_id integer DEFAULT 1
);
 &   DROP TABLE public.course_quiz_levels;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540066    course_levels_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_levels_id_seq;
       public          wfzikjzsdzkeob    false    216            7           0    0    course_levels_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.course_levels_id_seq OWNED BY public.course_quiz_levels.id;
          public          wfzikjzsdzkeob    false    217            ?            1259    2540068    course_possible_answers    TABLE     ?   CREATE TABLE public.course_possible_answers (
    id integer NOT NULL,
    answer character varying(250),
    explanation character varying(1000)
);
 +   DROP TABLE public.course_possible_answers;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540071    course_possible_answers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_possible_answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.course_possible_answers_id_seq;
       public          wfzikjzsdzkeob    false    218            8           0    0    course_possible_answers_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.course_possible_answers_id_seq OWNED BY public.course_possible_answers.id;
          public          wfzikjzsdzkeob    false    219            ?            1259    2540073     course_question_possible_answers    TABLE     ?   CREATE TABLE public.course_question_possible_answers (
    question_id integer NOT NULL,
    possible_answer_id integer NOT NULL,
    "order" integer
);
 4   DROP TABLE public.course_question_possible_answers;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540076    course_questions    TABLE     |   CREATE TABLE public.course_questions (
    id integer NOT NULL,
    question character varying(255),
    correct integer
);
 $   DROP TABLE public.course_questions;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540079    course_questions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.course_questions_id_seq;
       public          wfzikjzsdzkeob    false    202            9           0    0    course_questions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.course_questions_id_seq OWNED BY public."Answer".id;
          public          wfzikjzsdzkeob    false    222            ?            1259    2540081    course_questions_id_seq1    SEQUENCE     ?   CREATE SEQUENCE public.course_questions_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.course_questions_id_seq1;
       public          wfzikjzsdzkeob    false    221            :           0    0    course_questions_id_seq1    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.course_questions_id_seq1 OWNED BY public.course_questions.id;
          public          wfzikjzsdzkeob    false    223            ?            1259    2540083    course_quiz    TABLE     =   CREATE TABLE public.course_quiz (
    id integer NOT NULL
);
    DROP TABLE public.course_quiz;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540086    course_quiz_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.course_quiz_id_seq;
       public          wfzikjzsdzkeob    false    224            ;           0    0    course_quiz_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.course_quiz_id_seq OWNED BY public.course_quiz.id;
          public          wfzikjzsdzkeob    false    225            ?            1259    2540088    course_sections    TABLE     ?   CREATE TABLE public.course_sections (
    id integer NOT NULL,
    section_name character varying(250),
    quiz_id integer,
    description_id integer,
    parent_id integer
);
 #   DROP TABLE public.course_sections;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540091    course_sections_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.course_sections_id_seq;
       public          wfzikjzsdzkeob    false    226            <           0    0    course_sections_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.course_sections_id_seq OWNED BY public.course_sections.id;
          public          wfzikjzsdzkeob    false    227            ?            1259    2540093    courses    TABLE     ?   CREATE TABLE public.courses (
    id integer NOT NULL,
    title character varying(250),
    description character varying(10000),
    category integer
);
    DROP TABLE public.courses;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540099    course_serial    SEQUENCE     ?   CREATE SEQUENCE public.course_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.course_serial;
       public          wfzikjzsdzkeob    false    228            =           0    0    course_serial    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.course_serial OWNED BY public.courses.id;
          public          wfzikjzsdzkeob    false    229            ?            1259    2540101    courses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          wfzikjzsdzkeob    false    228            >           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          wfzikjzsdzkeob    false    230            ?            1259    2540103    courses_sections    TABLE        CREATE TABLE public.courses_sections (
    course_id integer NOT NULL,
    section_id integer NOT NULL,
    "order" integer
);
 $   DROP TABLE public.courses_sections;
       public         heap    wfzikjzsdzkeob    false            ?            1259    7988167    levels    TABLE     K   CREATE TABLE public.levels (
    id integer NOT NULL,
    level integer
);
    DROP TABLE public.levels;
       public         heap    wfzikjzsdzkeob    false            ?            1259    7988165    levels_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.levels_id_seq;
       public          wfzikjzsdzkeob    false    251            ?           0    0    levels_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.levels_id_seq OWNED BY public.levels.id;
          public          wfzikjzsdzkeob    false    250            ?            1259    2540106    message_context    TABLE     j   CREATE TABLE public.message_context (
    context_id integer NOT NULL,
    message_id integer NOT NULL
);
 #   DROP TABLE public.message_context;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540109    messages    TABLE     ?   CREATE TABLE public.messages (
    id integer NOT NULL,
    user_id integer,
    course_id integer,
    "time" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    message character varying(10000),
    type_id integer
);
    DROP TABLE public.messages;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540116    message_serial    SEQUENCE     ?   CREATE SEQUENCE public.message_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.message_serial;
       public          wfzikjzsdzkeob    false    233            @           0    0    message_serial    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.message_serial OWNED BY public.messages.id;
          public          wfzikjzsdzkeob    false    234            ?            1259    2540118    messages_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          wfzikjzsdzkeob    false    233            A           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          wfzikjzsdzkeob    false    235            ?            1259    2540120    sessions    TABLE     !  CREATE TABLE public.sessions (
    id integer NOT NULL,
    course_id integer,
    section_id integer,
    level integer,
    question character varying(1000),
    answer character varying(1000),
    "time" timestamp without time zone,
    context_id integer,
    session_group integer
);
    DROP TABLE public.sessions;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540126    sessions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          wfzikjzsdzkeob    false    236            B           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          wfzikjzsdzkeob    false    237            ?            1259    3034745    subcategories    TABLE     w   CREATE TABLE public.subcategories (
    id integer NOT NULL,
    title character varying(255),
    category integer
);
 !   DROP TABLE public.subcategories;
       public         heap    wfzikjzsdzkeob    false            ?            1259    3034743    subcategories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public          wfzikjzsdzkeob    false    246            C           0    0    subcategories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategories_id_seq OWNED BY public.subcategories.id;
          public          wfzikjzsdzkeob    false    245            ?            1259    2540128    users    TABLE     7   CREATE TABLE public.users (
    id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540131    user_serial    SEQUENCE     ?   CREATE SEQUENCE public.user_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_serial;
       public          wfzikjzsdzkeob    false    238            D           0    0    user_serial    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_serial OWNED BY public.users.id;
          public          wfzikjzsdzkeob    false    239            ?            1259    2540133 	   user_type    TABLE     \   CREATE TABLE public.user_type (
    id integer NOT NULL,
    type character varying(100)
);
    DROP TABLE public.user_type;
       public         heap    wfzikjzsdzkeob    false            ?            1259    2540136    user_types_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_types_id_seq;
       public          wfzikjzsdzkeob    false    240            E           0    0    user_types_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.user_types_id_seq OWNED BY public.user_type.id;
          public          wfzikjzsdzkeob    false    241            ?            1259    7988042    users_course_status    TABLE     ?   CREATE TABLE public.users_course_status (
    user_id integer NOT NULL,
    course_id integer NOT NULL,
    level integer NOT NULL,
    status integer,
    CONSTRAINT ck_users_course_status_status_range CHECK (((status >= 0) AND (status <= 100)))
);
 '   DROP TABLE public.users_course_status;
       public         heap    wfzikjzsdzkeob    false            ?            1259    7988040 !   users_course_status_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_course_status_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.users_course_status_course_id_seq;
       public          wfzikjzsdzkeob    false    249            F           0    0 !   users_course_status_course_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.users_course_status_course_id_seq OWNED BY public.users_course_status.course_id;
          public          wfzikjzsdzkeob    false    248            ?            1259    7988038    users_course_status_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_course_status_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.users_course_status_user_id_seq;
       public          wfzikjzsdzkeob    false    249            G           0    0    users_course_status_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.users_course_status_user_id_seq OWNED BY public.users_course_status.user_id;
          public          wfzikjzsdzkeob    false    247            ?            1259    2540138    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          wfzikjzsdzkeob    false    238            H           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          wfzikjzsdzkeob    false    242                       2604    2540140 	   Answer id    DEFAULT     r   ALTER TABLE ONLY public."Answer" ALTER COLUMN id SET DEFAULT nextval('public.course_questions_id_seq'::regclass);
 :   ALTER TABLE public."Answer" ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    222    202                       2604    2540141 
   answers id    DEFAULT     g   ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answer_serial'::regclass);
 9   ALTER TABLE public.answers ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    205    204            !           2604    3034660    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    244    243    244                       2604    2540142    contexts id    DEFAULT     j   ALTER TABLE ONLY public.contexts ALTER COLUMN id SET DEFAULT nextval('public.contexts_id_seq'::regclass);
 :   ALTER TABLE public.contexts ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    208    207                       2604    2540143    course_description id    DEFAULT     ~   ALTER TABLE ONLY public.course_description ALTER COLUMN id SET DEFAULT nextval('public.course_description_id_seq'::regclass);
 D   ALTER TABLE public.course_description ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    212    209                       2604    2540144     course_description_categories id    DEFAULT     ?   ALTER TABLE ONLY public.course_description_categories ALTER COLUMN id SET DEFAULT nextval('public.course_description_categories_id_seq'::regclass);
 O   ALTER TABLE public.course_description_categories ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    211    210                       2604    2540145    course_description_levels id    DEFAULT     ?   ALTER TABLE ONLY public.course_description_levels ALTER COLUMN id SET DEFAULT nextval('public.course_descriptions_id_seq'::regclass);
 K   ALTER TABLE public.course_description_levels ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    214    213                       2604    2540146    course_possible_answers id    DEFAULT     ?   ALTER TABLE ONLY public.course_possible_answers ALTER COLUMN id SET DEFAULT nextval('public.course_possible_answers_id_seq'::regclass);
 I   ALTER TABLE public.course_possible_answers ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    219    218                       2604    2540147    course_questions id    DEFAULT     {   ALTER TABLE ONLY public.course_questions ALTER COLUMN id SET DEFAULT nextval('public.course_questions_id_seq1'::regclass);
 B   ALTER TABLE public.course_questions ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    223    221                       2604    2540148    course_quiz id    DEFAULT     p   ALTER TABLE ONLY public.course_quiz ALTER COLUMN id SET DEFAULT nextval('public.course_quiz_id_seq'::regclass);
 =   ALTER TABLE public.course_quiz ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    225    224                       2604    2540149    course_quiz_levels id    DEFAULT     y   ALTER TABLE ONLY public.course_quiz_levels ALTER COLUMN id SET DEFAULT nextval('public.course_levels_id_seq'::regclass);
 D   ALTER TABLE public.course_quiz_levels ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    217    216                       2604    2540150    course_sections id    DEFAULT     x   ALTER TABLE ONLY public.course_sections ALTER COLUMN id SET DEFAULT nextval('public.course_sections_id_seq'::regclass);
 A   ALTER TABLE public.course_sections ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    227    226                       2604    2540151 
   courses id    DEFAULT     g   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.course_serial'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    229    228            &           2604    7988170 	   levels id    DEFAULT     f   ALTER TABLE ONLY public.levels ALTER COLUMN id SET DEFAULT nextval('public.levels_id_seq'::regclass);
 8   ALTER TABLE public.levels ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    251    250    251                       2604    2540152    messages id    DEFAULT     i   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.message_serial'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    234    233                       2604    2540153    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    237    236            "           2604    3034748    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    245    246    246                        2604    2540154    user_type id    DEFAULT     m   ALTER TABLE ONLY public.user_type ALTER COLUMN id SET DEFAULT nextval('public.user_types_id_seq'::regclass);
 ;   ALTER TABLE public.user_type ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    241    240                       2604    2540155    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_serial'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    239    238            #           2604    7988045    users_course_status user_id    DEFAULT     ?   ALTER TABLE ONLY public.users_course_status ALTER COLUMN user_id SET DEFAULT nextval('public.users_course_status_user_id_seq'::regclass);
 J   ALTER TABLE public.users_course_status ALTER COLUMN user_id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    249    247    249            $           2604    7988046    users_course_status course_id    DEFAULT     ?   ALTER TABLE ONLY public.users_course_status ALTER COLUMN course_id SET DEFAULT nextval('public.users_course_status_course_id_seq'::regclass);
 L   ALTER TABLE public.users_course_status ALTER COLUMN course_id DROP DEFAULT;
       public          wfzikjzsdzkeob    false    249    248    249            ?          0    2540022    Answer 
   TABLE DATA           0   COPY public."Answer" (id, question) FROM stdin;
    public          wfzikjzsdzkeob    false    202   ??       ?          0    2540025    answer_message 
   TABLE DATA           ?   COPY public.answer_message (answer_id, message_id) FROM stdin;
    public          wfzikjzsdzkeob    false    203   3?       ?          0    2540028    answers 
   TABLE DATA           -   COPY public.answers (id, answer) FROM stdin;
    public          wfzikjzsdzkeob    false    204   P?                 0    3034657 
   categories 
   TABLE DATA           <   COPY public.categories (id, title, color_class) FROM stdin;
    public          wfzikjzsdzkeob    false    244   u?       ?          0    2540035    contexts 
   TABLE DATA           &   COPY public.contexts (id) FROM stdin;
    public          wfzikjzsdzkeob    false    207   ??       ?          0    2540040    course_description 
   TABLE DATA           0   COPY public.course_description (id) FROM stdin;
    public          wfzikjzsdzkeob    false    209   ??       ?          0    2540043    course_description_categories 
   TABLE DATA           E   COPY public.course_description_categories (id, category) FROM stdin;
    public          wfzikjzsdzkeob    false    210   ;?                  0    2540050    course_description_levels 
   TABLE DATA           e   COPY public.course_description_levels (id, description, level, category, description_id) FROM stdin;
    public          wfzikjzsdzkeob    false    213   u?                 0    2540059    course_level_questions 
   TABLE DATA           U   COPY public.course_level_questions (quiz_level_id, question_id, "order") FROM stdin;
    public          wfzikjzsdzkeob    false    215                   0    2540068    course_possible_answers 
   TABLE DATA           J   COPY public.course_possible_answers (id, answer, explanation) FROM stdin;
    public          wfzikjzsdzkeob    false    218   X                0    2540073     course_question_possible_answers 
   TABLE DATA           d   COPY public.course_question_possible_answers (question_id, possible_answer_id, "order") FROM stdin;
    public          wfzikjzsdzkeob    false    220   Q                0    2540076    course_questions 
   TABLE DATA           A   COPY public.course_questions (id, question, correct) FROM stdin;
    public          wfzikjzsdzkeob    false    221   ?                0    2540083    course_quiz 
   TABLE DATA           )   COPY public.course_quiz (id) FROM stdin;
    public          wfzikjzsdzkeob    false    224   h                0    2540062    course_quiz_levels 
   TABLE DATA           @   COPY public.course_quiz_levels (id, level, quiz_id) FROM stdin;
    public          wfzikjzsdzkeob    false    216   ?                0    2540088    course_sections 
   TABLE DATA           _   COPY public.course_sections (id, section_name, quiz_id, description_id, parent_id) FROM stdin;
    public          wfzikjzsdzkeob    false    226   ?                0    2540093    courses 
   TABLE DATA           C   COPY public.courses (id, title, description, category) FROM stdin;
    public          wfzikjzsdzkeob    false    228   ?                0    2540103    courses_sections 
   TABLE DATA           J   COPY public.courses_sections (course_id, section_id, "order") FROM stdin;
    public          wfzikjzsdzkeob    false    231   ?      &          0    7988167    levels 
   TABLE DATA           +   COPY public.levels (id, level) FROM stdin;
    public          wfzikjzsdzkeob    false    251   \                0    2540106    message_context 
   TABLE DATA           A   COPY public.message_context (context_id, message_id) FROM stdin;
    public          wfzikjzsdzkeob    false    232   ?                0    2540109    messages 
   TABLE DATA           T   COPY public.messages (id, user_id, course_id, "time", message, type_id) FROM stdin;
    public          wfzikjzsdzkeob    false    233   ?                0    2540120    sessions 
   TABLE DATA           y   COPY public.sessions (id, course_id, section_id, level, question, answer, "time", context_id, session_group) FROM stdin;
    public          wfzikjzsdzkeob    false    236   I      !          0    3034745    subcategories 
   TABLE DATA           <   COPY public.subcategories (id, title, category) FROM stdin;
    public          wfzikjzsdzkeob    false    246   >                0    2540133 	   user_type 
   TABLE DATA           -   COPY public.user_type (id, type) FROM stdin;
    public          wfzikjzsdzkeob    false    240   ?                0    2540128    users 
   TABLE DATA           #   COPY public.users (id) FROM stdin;
    public          wfzikjzsdzkeob    false    238   ?      $          0    7988042    users_course_status 
   TABLE DATA           P   COPY public.users_course_status (user_id, course_id, level, status) FROM stdin;
    public          wfzikjzsdzkeob    false    249          I           0    0    answer_serial    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.answer_serial', 3, true);
          public          wfzikjzsdzkeob    false    205            J           0    0    answers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answers_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    206            K           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 4, true);
          public          wfzikjzsdzkeob    false    243            L           0    0    contexts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contexts_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    208            M           0    0 $   course_description_categories_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.course_description_categories_id_seq', 3, true);
          public          wfzikjzsdzkeob    false    211            N           0    0    course_description_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.course_description_id_seq', 49, true);
          public          wfzikjzsdzkeob    false    212            O           0    0    course_descriptions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.course_descriptions_id_seq', 158, true);
          public          wfzikjzsdzkeob    false    214            P           0    0    course_levels_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.course_levels_id_seq', 101, true);
          public          wfzikjzsdzkeob    false    217            Q           0    0    course_possible_answers_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.course_possible_answers_id_seq', 118, true);
          public          wfzikjzsdzkeob    false    219            R           0    0    course_questions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.course_questions_id_seq', 4, true);
          public          wfzikjzsdzkeob    false    222            S           0    0    course_questions_id_seq1    SEQUENCE SET     G   SELECT pg_catalog.setval('public.course_questions_id_seq1', 74, true);
          public          wfzikjzsdzkeob    false    223            T           0    0    course_quiz_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.course_quiz_id_seq', 21, true);
          public          wfzikjzsdzkeob    false    225            U           0    0    course_sections_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_sections_id_seq', 157, true);
          public          wfzikjzsdzkeob    false    227            V           0    0    course_serial    SEQUENCE SET     <   SELECT pg_catalog.setval('public.course_serial', 48, true);
          public          wfzikjzsdzkeob    false    229            W           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    230            X           0    0    levels_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.levels_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    250            Y           0    0    message_serial    SEQUENCE SET     =   SELECT pg_catalog.setval('public.message_serial', 10, true);
          public          wfzikjzsdzkeob    false    234            Z           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    235            [           0    0    sessions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sessions_id_seq', 2317, true);
          public          wfzikjzsdzkeob    false    237            \           0    0    subcategories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subcategories_id_seq', 9, true);
          public          wfzikjzsdzkeob    false    245            ]           0    0    user_serial    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_serial', 1, false);
          public          wfzikjzsdzkeob    false    239            ^           0    0    user_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_types_id_seq', 2, true);
          public          wfzikjzsdzkeob    false    241            _           0    0 !   users_course_status_course_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.users_course_status_course_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    248            `           0    0    users_course_status_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.users_course_status_user_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    247            a           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          wfzikjzsdzkeob    false    242            *           2606    2540157 "   answer_message answer_message_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.answer_message
    ADD CONSTRAINT answer_message_pkey PRIMARY KEY (answer_id, message_id);
 L   ALTER TABLE ONLY public.answer_message DROP CONSTRAINT answer_message_pkey;
       public            wfzikjzsdzkeob    false    203    203            ,           2606    2540159    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            wfzikjzsdzkeob    false    204            T           2606    3034742    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            wfzikjzsdzkeob    false    244            .           2606    2540161    contexts contexts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contexts
    ADD CONSTRAINT contexts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contexts DROP CONSTRAINT contexts_pkey;
       public            wfzikjzsdzkeob    false    207            2           2606    2540163 @   course_description_categories course_description_categories_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.course_description_categories
    ADD CONSTRAINT course_description_categories_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.course_description_categories DROP CONSTRAINT course_description_categories_pkey;
       public            wfzikjzsdzkeob    false    210            0           2606    2540165 *   course_description course_description_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.course_description
    ADD CONSTRAINT course_description_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.course_description DROP CONSTRAINT course_description_pkey;
       public            wfzikjzsdzkeob    false    209            4           2606    2540167 2   course_description_levels course_descriptions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.course_description_levels
    ADD CONSTRAINT course_descriptions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.course_description_levels DROP CONSTRAINT course_descriptions_pkey;
       public            wfzikjzsdzkeob    false    213            6           2606    2540169 2   course_level_questions course_level_questions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.course_level_questions
    ADD CONSTRAINT course_level_questions_pkey PRIMARY KEY (quiz_level_id, question_id);
 \   ALTER TABLE ONLY public.course_level_questions DROP CONSTRAINT course_level_questions_pkey;
       public            wfzikjzsdzkeob    false    215    215            8           2606    2540171 %   course_quiz_levels course_levels_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.course_quiz_levels
    ADD CONSTRAINT course_levels_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.course_quiz_levels DROP CONSTRAINT course_levels_pkey;
       public            wfzikjzsdzkeob    false    216            :           2606    2540173 4   course_possible_answers course_possible_answers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.course_possible_answers
    ADD CONSTRAINT course_possible_answers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.course_possible_answers DROP CONSTRAINT course_possible_answers_pkey;
       public            wfzikjzsdzkeob    false    218            <           2606    2540175 F   course_question_possible_answers course_question_possible_answers_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.course_question_possible_answers
    ADD CONSTRAINT course_question_possible_answers_pkey PRIMARY KEY (question_id, possible_answer_id);
 p   ALTER TABLE ONLY public.course_question_possible_answers DROP CONSTRAINT course_question_possible_answers_pkey;
       public            wfzikjzsdzkeob    false    220    220            (           2606    2540177    Answer course_questions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Answer"
    ADD CONSTRAINT course_questions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Answer" DROP CONSTRAINT course_questions_pkey;
       public            wfzikjzsdzkeob    false    202            >           2606    2540179 '   course_questions course_questions_pkey1 
   CONSTRAINT     e   ALTER TABLE ONLY public.course_questions
    ADD CONSTRAINT course_questions_pkey1 PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.course_questions DROP CONSTRAINT course_questions_pkey1;
       public            wfzikjzsdzkeob    false    221            @           2606    2540181    course_quiz course_quiz_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.course_quiz
    ADD CONSTRAINT course_quiz_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.course_quiz DROP CONSTRAINT course_quiz_pkey;
       public            wfzikjzsdzkeob    false    224            B           2606    2540183 $   course_sections course_sections_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.course_sections
    ADD CONSTRAINT course_sections_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.course_sections DROP CONSTRAINT course_sections_pkey;
       public            wfzikjzsdzkeob    false    226            D           2606    2540185    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            wfzikjzsdzkeob    false    228            F           2606    2540187 &   courses_sections courses_sections_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.courses_sections
    ADD CONSTRAINT courses_sections_pkey PRIMARY KEY (course_id, section_id);
 P   ALTER TABLE ONLY public.courses_sections DROP CONSTRAINT courses_sections_pkey;
       public            wfzikjzsdzkeob    false    231    231            Z           2606    7988172    levels levels_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.levels
    ADD CONSTRAINT levels_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.levels DROP CONSTRAINT levels_pkey;
       public            wfzikjzsdzkeob    false    251            J           2606    2540189 %   message_context message_contexts_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.message_context
    ADD CONSTRAINT message_contexts_pkey PRIMARY KEY (context_id, message_id);
 O   ALTER TABLE ONLY public.message_context DROP CONSTRAINT message_contexts_pkey;
       public            wfzikjzsdzkeob    false    232    232            L           2606    2540191    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            wfzikjzsdzkeob    false    233            N           2606    2540193    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            wfzikjzsdzkeob    false    236            V           2606    3034750     subcategories subcategories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public            wfzikjzsdzkeob    false    246            H           2606    14947238    courses_sections unique_order 
   CONSTRAINT     f   ALTER TABLE ONLY public.courses_sections
    ADD CONSTRAINT unique_order UNIQUE (course_id, "order");
 G   ALTER TABLE ONLY public.courses_sections DROP CONSTRAINT unique_order;
       public            wfzikjzsdzkeob    false    231    231            R           2606    2540195    user_type user_types_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.user_type
    ADD CONSTRAINT user_types_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.user_type DROP CONSTRAINT user_types_pkey;
       public            wfzikjzsdzkeob    false    240            X           2606    7988048 ,   users_course_status users_course_status_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_course_status
    ADD CONSTRAINT users_course_status_pkey PRIMARY KEY (user_id, course_id);
 V   ALTER TABLE ONLY public.users_course_status DROP CONSTRAINT users_course_status_pkey;
       public            wfzikjzsdzkeob    false    249    249            P           2606    2540197    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            wfzikjzsdzkeob    false    238            [           2606    2540198 .   answer_message answers_messages_answer_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.answer_message
    ADD CONSTRAINT answers_messages_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.answers(id);
 X   ALTER TABLE ONLY public.answer_message DROP CONSTRAINT answers_messages_answer_id_fkey;
       public          wfzikjzsdzkeob    false    204    203    3884            \           2606    2540203 /   answer_message answers_messages_message_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.answer_message
    ADD CONSTRAINT answers_messages_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.messages(id);
 Y   ALTER TABLE ONLY public.answer_message DROP CONSTRAINT answers_messages_message_id_fkey;
       public          wfzikjzsdzkeob    false    233    203    3916            _           2606    7988183 >   course_description_levels course_description_levels_level_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_description_levels
    ADD CONSTRAINT course_description_levels_level_fkey FOREIGN KEY (level) REFERENCES public.levels(id);
 h   ALTER TABLE ONLY public.course_description_levels DROP CONSTRAINT course_description_levels_level_fkey;
       public          wfzikjzsdzkeob    false    213    3930    251            ]           2606    2540208 ;   course_description_levels course_descriptions_category_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_description_levels
    ADD CONSTRAINT course_descriptions_category_fkey FOREIGN KEY (category) REFERENCES public.course_description_categories(id);
 e   ALTER TABLE ONLY public.course_description_levels DROP CONSTRAINT course_descriptions_category_fkey;
       public          wfzikjzsdzkeob    false    210    3890    213            `           2606    2540213 >   course_level_questions course_level_questions_question_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_level_questions
    ADD CONSTRAINT course_level_questions_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.course_questions(id);
 h   ALTER TABLE ONLY public.course_level_questions DROP CONSTRAINT course_level_questions_question_id_fkey;
       public          wfzikjzsdzkeob    false    215    221    3902            a           2606    2540218 @   course_level_questions course_level_questions_quiz_level_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_level_questions
    ADD CONSTRAINT course_level_questions_quiz_level_id_fkey FOREIGN KEY (quiz_level_id) REFERENCES public.course_quiz_levels(id);
 j   ALTER TABLE ONLY public.course_level_questions DROP CONSTRAINT course_level_questions_quiz_level_id_fkey;
       public          wfzikjzsdzkeob    false    3896    215    216            d           2606    2540223 Y   course_question_possible_answers course_question_possible_answers_possible_answer_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_question_possible_answers
    ADD CONSTRAINT course_question_possible_answers_possible_answer_id_fkey FOREIGN KEY (possible_answer_id) REFERENCES public.course_possible_answers(id);
 ?   ALTER TABLE ONLY public.course_question_possible_answers DROP CONSTRAINT course_question_possible_answers_possible_answer_id_fkey;
       public          wfzikjzsdzkeob    false    3898    220    218            e           2606    2540228 R   course_question_possible_answers course_question_possible_answers_question_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_question_possible_answers
    ADD CONSTRAINT course_question_possible_answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.course_questions(id);
 |   ALTER TABLE ONLY public.course_question_possible_answers DROP CONSTRAINT course_question_possible_answers_question_id_fkey;
       public          wfzikjzsdzkeob    false    221    220    3902            c           2606    7988188 0   course_quiz_levels course_quiz_levels_level_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_quiz_levels
    ADD CONSTRAINT course_quiz_levels_level_fkey FOREIGN KEY (level) REFERENCES public.levels(id);
 Z   ALTER TABLE ONLY public.course_quiz_levels DROP CONSTRAINT course_quiz_levels_level_fkey;
       public          wfzikjzsdzkeob    false    216    3930    251            h           2606    14558466 .   course_sections course_sections_parent_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_sections
    ADD CONSTRAINT course_sections_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.course_sections(id);
 X   ALTER TABLE ONLY public.course_sections DROP CONSTRAINT course_sections_parent_id_fkey;
       public          wfzikjzsdzkeob    false    226    226    3906            i           2606    7984005    courses courses_category_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_category_fkey FOREIGN KEY (category) REFERENCES public.categories(id);
 G   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_category_fkey;
       public          wfzikjzsdzkeob    false    3924    228    244            j           2606    2540233 0   courses_sections courses_sections_course_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.courses_sections
    ADD CONSTRAINT courses_sections_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);
 Z   ALTER TABLE ONLY public.courses_sections DROP CONSTRAINT courses_sections_course_id_fkey;
       public          wfzikjzsdzkeob    false    228    231    3908            k           2606    2540238 1   courses_sections courses_sections_section_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.courses_sections
    ADD CONSTRAINT courses_sections_section_id_fkey FOREIGN KEY (section_id) REFERENCES public.course_sections(id);
 [   ALTER TABLE ONLY public.courses_sections DROP CONSTRAINT courses_sections_section_id_fkey;
       public          wfzikjzsdzkeob    false    3906    226    231            f           2606    2540243 !   course_sections fk_description_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_sections
    ADD CONSTRAINT fk_description_id FOREIGN KEY (description_id) REFERENCES public.course_description(id);
 K   ALTER TABLE ONLY public.course_sections DROP CONSTRAINT fk_description_id;
       public          wfzikjzsdzkeob    false    3888    226    209            ^           2606    2540248 +   course_description_levels fk_description_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_description_levels
    ADD CONSTRAINT fk_description_id FOREIGN KEY (description_id) REFERENCES public.course_description(id);
 U   ALTER TABLE ONLY public.course_description_levels DROP CONSTRAINT fk_description_id;
       public          wfzikjzsdzkeob    false    3888    213    209            g           2606    2540253    course_sections fk_quiz_id    FK CONSTRAINT        ALTER TABLE ONLY public.course_sections
    ADD CONSTRAINT fk_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.course_quiz(id);
 D   ALTER TABLE ONLY public.course_sections DROP CONSTRAINT fk_quiz_id;
       public          wfzikjzsdzkeob    false    226    224    3904            b           2606    2540258    course_quiz_levels fk_quiz_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_quiz_levels
    ADD CONSTRAINT fk_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.course_quiz(id);
 G   ALTER TABLE ONLY public.course_quiz_levels DROP CONSTRAINT fk_quiz_id;
       public          wfzikjzsdzkeob    false    216    224    3904            l           2606    2540263 0   message_context message_contexts_context_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.message_context
    ADD CONSTRAINT message_contexts_context_id_fkey FOREIGN KEY (context_id) REFERENCES public.contexts(id);
 Z   ALTER TABLE ONLY public.message_context DROP CONSTRAINT message_contexts_context_id_fkey;
       public          wfzikjzsdzkeob    false    207    3886    232            m           2606    2540268 0   message_context message_contexts_message_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.message_context
    ADD CONSTRAINT message_contexts_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.messages(id);
 Z   ALTER TABLE ONLY public.message_context DROP CONSTRAINT message_contexts_message_id_fkey;
       public          wfzikjzsdzkeob    false    232    233    3916            n           2606    2540273     messages messages_course_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);
 J   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_course_id_fkey;
       public          wfzikjzsdzkeob    false    233    228    3908            o           2606    2540278    messages messages_type_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.user_type(id);
 H   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_type_id_fkey;
       public          wfzikjzsdzkeob    false    233    3922    240            p           2606    2540283    messages messages_user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_user_id_fkey;
       public          wfzikjzsdzkeob    false    3920    238    233            q           2606    2540288     sessions sessions_course_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);
 J   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_course_id_fkey;
       public          wfzikjzsdzkeob    false    3908    236    228            r           2606    7988178    sessions sessions_level_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_level_fkey FOREIGN KEY (level) REFERENCES public.levels(id);
 F   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_level_fkey;
       public          wfzikjzsdzkeob    false    251    236    3930            s           2606    3034751 )   subcategories subcategories_category_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_category_fkey FOREIGN KEY (category) REFERENCES public.categories(id);
 S   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_category_fkey;
       public          wfzikjzsdzkeob    false    246    3924    244            u           2606    7988054 6   users_course_status users_course_status_course_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_course_status
    ADD CONSTRAINT users_course_status_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);
 `   ALTER TABLE ONLY public.users_course_status DROP CONSTRAINT users_course_status_course_id_fkey;
       public          wfzikjzsdzkeob    false    249    3908    228            v           2606    7988173 2   users_course_status users_course_status_level_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_course_status
    ADD CONSTRAINT users_course_status_level_fkey FOREIGN KEY (level) REFERENCES public.levels(id);
 \   ALTER TABLE ONLY public.users_course_status DROP CONSTRAINT users_course_status_level_fkey;
       public          wfzikjzsdzkeob    false    251    249    3930            t           2606    7988049 4   users_course_status users_course_status_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_course_status
    ADD CONSTRAINT users_course_status_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 ^   ALTER TABLE ONLY public.users_course_status DROP CONSTRAINT users_course_status_user_id_fkey;
       public          wfzikjzsdzkeob    false    3920    249    238            ?   '   x?3?,M-.???S0?2Bp??L.c(?+F??? ??9      ?      x?????? ? ?      ?      x?3??H????????? ?         M   x????0???
*@?(????KvJ??,?g??KY?????-40G?6?Yd????N?\#??)?O?YD~??a      ?      x?????? ? ?      ?   <   x????@??Ü?pIz??:?T??F?6.?x??CDLB????&C?jj??{??0      ?   *   x?3?L???I?,??2?L???IMO?2?,??/*?????? ?	?             x??=ێ?ƕ?3_Qy00?j1??M?bĐv?Ml?WOΰ??j6{@?;??e??ه}??????O?%{Ω;/=3? kG??ѐ,Vչ_?Tq???x΂??????*?l?+?6I?R^???C?Y???,?Y?l??ȳU??Uy???eŪ???,y^q??*??<???{?vY&???????&[z|Sy?Ƌ??<?%?fE*o??w?g??/q?????4?-???????t???????N`????ơYWu?W??dWyv??`???-	]??3?M?̂??Zﱋ????.J??:?f??????CVn8??7?^?D?"?0!????o?|?>~(ཛ?OD?j??&?z?`%)?I`?M?z}}?*?x????1???%??????&???1????????l??	Cl???%K?c??????/??OQ????f_??	?T??A?ęY??h|\8w?g?1B??????n_V??ؾ?vşC??X=??xx????,??nK!????Ǣ? :j?[!?O?s([#k?%??
&υ????m?M	s?{Мcs???K`g??B0?ũpps2?8??c/A>?5?7??!?wJ???{!#Ax?8??fD4?c/?e<??F?? ????杘??"???bfķ7<7?
"???????&M?N_??}??4????&&?"?[??r=?T
]?A??Ț?'?7?@?ԤE.????nE???q?"m?j??"?D????D?@?LՈ?c??hr?4,Ē<??H???@?kT+r??~j????ŗ6?^??<???8,???)??????J(?Y)??P???????ve-???Z??!?X_??m^??????@K?Y?1??]?dqk?Fg|?=/???2?s6??=b㊣?*1l???Y???????!?rf????{=i?ڱ??&9?^Rh?5/?3J??_?Q??B?<?K5??? $+??,??X???
B????UR*_G??T?~?.??J?p<4?W|}?H?.???2? ??| uR);?Q?(U???1I*|?)4??f/)??T?^?2o??
$OkftQ:?=?َ????r?2b4yI/???j??3?}?I??!pj<B??&??? ?[6?Ab˂?T\?Im???I?e??6??l?N4E#?rj+?:??]?8???#????????_V?쐥??̐Dd?@\JB%*<??????#b?+p?ʪ?????ށ?kh???*?$h??J??n[P???3fTTl[wz:b???4????c?}X??Y?A?[??@M4S!?x??M????pK?A{?D33?3C?T?????σh*???)?*?N????z?2???Q?d?N>?9E>??`Թn??EA?K?0?z_	?#?\?me+r???c?]??E?D^???o!LqЁԥǘpOPDּ??c,]??dU?БO????? z??t+g???L?!???,?3s?=q?LSwͧ#KE88??]^??A??O줲 ?C???Ќ??&?@??R	f?V?????ln?ET,,?????`J7l&{?T??)&j?????B????p??@?Y????=??B?$<z??3?	??.??i?k*?5?|I ??oБ7?%0CpI?TJ|5?!Z(?C?C??d?vT?t?M -tL?P7Ǜ??y@q??oD?!?O?΃80+V2}t????	/?^ ???qE?g?MV?㩐?Z?Mʎp?K?$a_eP??>?f??? ???/ѩ???Nݴ??????R??}????g????@?yJ^?2??Q~??????ǤQ|?uEե?Q%`w?6?,?M?l???#l)?,7@?ɐgd2Lp?????:?j?]?1?-??C???7?#???䈛䐱yE????????Q ??؜????Ј???Ukp@?G^Rl\??xw?)ǂ? ?]r?????%??~O+_p?Rѐ?X?B??N??5P?>????M??w;R(4 ?i??p??s?)??/f??N??? 2P?SvY-???y??#P?#<Opqv7+????v??)?????ާDє??8~|G?????S??V?h?dxu/?j?RJ?2??\w???_2??bɈ?=??r
jWJr??????։?K?͟????Q0?ooU???FUn??j?{?[?*T?(?ᄒ-Q?׾???@?s?K?[?%FVԞ?}h??lꛮ????D?=#Y?uX;j>????DOh?b??Q??ۈ???R?6?;?vn\???6?N??$??K?2-?f네?J?$?P???xb?"?&?.*I??p?S??H???3??H?Ti?K?[????p???5???Yr???LY??7"ڌ?=L?4?Q??1?P?Q?]C?T%uE????7??S?E<?6R????2=#{???oQ????
%?K?f(?I???h퐳\??.???ԙ?.bJ?P:
?~???I?Z???~??^?L???ם?H?߾???h.?n??P???/??pb?????ǰcUi??$j?V0??-?`@\??}p?,**?u@2?M?????@Nc?i?r?.~???O???l<Ì?tm??,&n>:??6??\?%W?V\??O???\Kb???!?H????̛???-???-??T"l?Ƀ8L?崄ܶ5fgh?4 ??߭??V?.Qwѡ?O8R?GH?3???Q??\Ԫsʯ?????bȧ??????*8???D?T_@??Z5?H??.??;v?'i%??â?R?}o17?T???/?^跞F?7????x>k??3??s;?:$????P%?C??k?.?;???\ ??[I?."?b?ǋ-?vz?????T??x2ŧ?ěv5??? S?A???B2??|?^??(??k?.?A???Lcbl:a?W???\?㐏??/M?G??.?)j?
?t	??̥???_??A???K?K4W?Br??Ia?s?? ?????5???c???d?̱ˤ? J???z??J???`??P?1jA5nH????J??5?.T?GR(?Pvޫ? "??e?????J?솪??<?p4drs??? ????gl?y?؟?D??BY?lc?]??G9?p??dǧ?7?SE.r??\?\:h?_?ƌ?ƌ?G?sX!??V?"?B???i(&???b?????8????v????F?p#q䔊??!?T?΁=*i?JYQ????g?4Ymns???=0???L??-??Z?l?????	?C?????|_F@];K?D?cT?2?z֡??5?qn"??0T?Q6?,?8??V?h?Nc_V?CNI??!I{????LxBuk???jOj????݋`:?N?????%??J	???-?ԃ??<?߬??ȋ?H?Q\???|1q\??f6c???ހ??gJ?v???-(j:K*U7?v?]h?HYv???R?޳-???ܖ???i????m)???m)}??=~ڸ3Y?lK?????,dEj!+???`w???o??m?0?????g5??(>*?HP??,N??2)r??N?,??U??U? s3JΨdrjYm?^S?l?w?wL??5ŭH??;????t]?e?Y7????@?G?2.9\??wKQ?U???E?A???Y???}q???3?C?????*0?C????J-???u4?g?_?J?$O???4R?\???T1????#@7{??m?????2f???T:008iHc?u?5???1?????,??`+?,?f????f?_SU?X??f?y5ڵ:?D????_qru???x%W??ͻ}.K?0,/n?yk??t??
n?y??+쒦 ?)R??j?4?%m???A{"#?UU?}?"/???? ??,??.??x??2̈́?B??	??rg?Y??#;h~ ??;v'?@???C???J?z??????8?"??D??P??(?Ug?/??<H? ɿpI??$?'$yp?????H;c???w?~@?3?z?IaL#?B??Z?tE`g?L?V.e????1[,????T???=N??d.?U??n/??\0 5??`???#@?????$?c????(?H,??x??D?t?c1RK????0?? ?  ?,?d?Q?\??R?(?????͎'?	XEX???`P??l??l?OcN?x[?.??6?S??ک?n???4:??B=?qfc;?????????YC??F!?c??\?c?G?&~?lb???^?????d?,?8?w?WA?^jL??????-?GC⚀?'??ד?!揞?|4q??/?ݩ8???=???3h??]?M?I#|σ ???9h?AcsИ-?(?9?=xe?f?^?????q??w#?n???z?ԃ?4???[?:Ҿ????n1?$O:6oZ?nu?H??Oł*??*???L?뼵5??~+L?l)-Fu??a??C??Ɖ?=k?????,w??O??z??n?_U-?R?׶?f?VNo"X???SQ??ꄄ~-?x?-?6?y??)???[?O?s ??ay?s??O?Fr?????tw}?Ʌ9h T?2???u,9;p??i`ӧ??ԁK?+?ځ????cӷ??????6Gx#?T?^<??*-?B?????D??m??=???P?&????b?e?9?JP?O{????)?K??8\???S?*????1??c?E??"C,?L???Oc?wZ0?Q?EK5???? ??g?t???3??xN?6?	8y???dyf?{f?=??vaajmr?z/?7?кT?hpr??w=??n?'e?6 ??+rE?^???
??2c???f?Q?m-??Q'd???????Fl(?S?,W??}??Y?\??s??	W|uKLc?v?????s~?=??ޓeUdt?GGq???ʖW?s&8U$>?+X^0?LpYw#˛?f?!!??+?_+?X:?\????ӖE?Wb??<v??)??:G?c?f??V?????,N??-eԓs?2!?'n??CX????Ⱥ?z??=?????#@????-j?K??o??"ހ~ņ????????,????????ܹ??j??{?F?%W?MԲ??
?S:???w?N??#?8???O?#????????6??A??uP??z}?z?zg?u?z???^?:??Ǫ?H????N??SWç?????zЧ?B???p?????m???ۂ???`?h?<??g??b??ĉm???`?i?#e???;<?b??????P?E?X??Y>{f?4??????1ۆ!?U}?6T??&?n?@?_3?#???y??X????T,.
x?tzXT"?7iMQ?fg??I?/???|?4?:[?)t????.]?qt???Q(f`?K?L???[?W??7F?'??#????~?wʃw??p????\?=?ZT???Zǀ]?;????;?????~L????=?	?????[??U?U??????????HQ?VQ?????????òc?o?`?S?	???:??U???e+??$L?d&hOl?iF?Z?8??E??@;???Z??????xU???U?G3??T?*o?-??@\??f(u?EYvw?ey0?? ?}?H??>??????ˁ?S???Ǳ!&]??E?w?xٱ???p??:???G?6?Z??3y???kZ٫Ǥ??	???@"??~:?????'X????&C??h7???b??,???????Z`>1|??????? :_8?xt??_??-???+.\??"$???*???r????x/ď??=?ѧ?4ȓf?z????1;??         )   x?340?47?4?21L8??,?8MM?@??ȏ???? s
?         ?  x?ݕ?n?@E????VA4??-?EU?????53??j~???;??k??R?j?J?1?{???\C?E?c݋?KTe-???c[?N???\?????Y?N???Y?4m+`w?ϻ?r???fG?v?? ???Qi??c?3???5???J#???a?`??.???n~??7??#ڠ?D;??6'?2?rX???T??&0?bgܕh?_?̣??Xzʳ=???G??_bP2???Zy?Q?????Z???2B??>pv?X??`?#???W	r0M???L:?C?zn?	?@?p?h?C??????????rz????????|?r.?aMY?fь???;\?=;?:q'?}??4΋Ha%???)???/??=ɉi?ޛ??ӳ_x???7?r??*?c]v;??#??-??s????~?l3F!??????mp?ot???ad%!????<??gd??SJ?q????]K??+z?꯿ؔ??'?R?~?|K?8?K?y         Q   x?5???@B?XL&??l/鿎?;9?@??7T??X?6??l????``opn??Bu'????ݠ?U??^"??V>         ?   x???A?0D??????+??M	?ڴ???$H??????Aw?3??L?-N?I ?4a G	a???3???G?4i2?S{wk)V??!b$M??<???x,??ݎ[8??֪>./?HD???L?3E~,G??K??s??&?0|ARH???m#???jq?!??x?            x?32?????? ?            x?340?4?42??4?4?1z\\\ %'         ?  x??S;n?@?????)?	 ?? A? i???X&?\
KFE?3???2;CJ?'????g?1?GOM?9?o?|??|?ȡ?????k?gJk??e?????
?X+???LU?՞>RK0?a?_??P??G??????vCș?o	??? ?ŅL?bַ?)&2??????????2ܮ?W????#?????PktљR?x<???(!??'?6?V9j:??W?[v?|%?B??+B:?i+>???~Z+??e?B ??1F/0?h??b????g5:?:????V։?2?d???
;0?i?:[&??r?0????u?y^	^#???-{??Ʒ??@=Z>[%??????????#?a?B|?6????F?8?y??????&??d?t? ??֜?v?F????58]?f.~??u-e???????T?)E@W,??????wя?p9??aK4֛.˲??>}Ȳ??rG?         9   x?3?t*:?#;???Ӑ?Ă3 ?$5??(5=/3/?3B+䦦(?e?
?b???? 9?v         w   x?%??? ߢ??H?!????8#^b?x9?A?&t2q?yRD???iN,???'?9??E???lp??????Km?^???@??ǯ??l?ٜtK??dsT#[[???????/!?      &      x?3?4?2?4?2?4?????? A            x?????? ? ?         ?   x?m?=?0@?99E/P˿?㋰?0Tꈠܞ2F???.t?ȸb???I?nVn??x/?g?*?y?љʾ}?c?^ۉ??#??	?6?Ͱ'???ͱ(?cS?ϱ???8f8??x?}????(<`fJ"`3o??C???W         ?  x????N?F???)?ްdן?Y?Di?$??H???Ec??N?2?ux??????2$Р????????SU???L?$?l????N?????O???9>ݓ2S??`??ػC????A?????떇b?U???[ѻjY?+???Ax??9?h?hC*gbl???i?r?n????ܥͤ??n??Z?U?\s_?_?\-?,?L.????'??Uӈ?J?vc/?v?B??ˉˮ?I?X\???wS?s?ժ?[1??Z?i|????????m????d?6T?]??+?6???v?????7C5????=|p4tٵ?nGw????jcc?H??p?(?)3\&??#ib0??P?X?+n\&9?57?????I?qˍ??_ȹ/?L??>????@?8?@??????8????????8?0  ???H?$G?<? ?8???Iő$$Hj?$y ARs$?	??#IH??I?@???H?$5G?<? ?9???I͑$Hj?$y?@Rs$???#I(?4I?@???H?
$G?<P i8???IÑ$H?$y?A?p$???#Ih?4I?@???H?$-G?<? i9???I?ʝ???u?k?%?ٻ?V>?Z?îei???x?m??u2z??????????-??^?M?ڋn???u?"g/5?FY?^?R??,g/5?F???h?Y'纀?Ǡs??:1?????l?A?????p?_]??6???????-E?????Y9AG???q?5????<u#n\;?>&$??u$}E?}I_S_A?F?7Ԗ??#?[?j???s
??H?????4?>I,?8??p? 2?>???"R~i}??o)???X䷈?_Zw,?[D?/?;?-"???????K??E~?H??u?"?e??Һc??2R~i?ɑ?2R~i?ɑ?Ru?9}w????k.???G??Y???[?]?a??n??4[?o?֏f?2?uq}S-Q??~?u-\???
r??X??o?{????w4??W:?5?s7n?R??6???4J?V??J?G?^?ۻ????_???v??j?)???U?A_???i^?E??J?#?t?
???U??i?+MЏ???H;]?????D???????x????I{j??H5???j?D%??[?z!x????N/????6~R.?.?????ɝV-??}I??????!]?[x???.??^v?Y2?????lNOO????K???v{?Z??툡???H??d????!<???W???!,?;{??u????M??t???????      !   j   x?=?K?0D???T?S?wacR?)& q{??ӛ???????e??
???w%؄Sx?g??N??#q????i??U?!^\4u?ϩ??P???`?iEI틈N??&0            x?3?,-N-?2?L?/?????? -?6            x?3?????? Z ?      $      x?3?4?4?47?2?4? ??b???? $G?     