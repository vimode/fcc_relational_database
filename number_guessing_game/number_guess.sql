--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    game_score integer NOT NULL,
    username_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    username_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_username_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_username_id_seq OWNED BY public.usernames.username_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usernames username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN username_id SET DEFAULT nextval('public.usernames_username_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 1);
INSERT INTO public.games VALUES (2, 11, 1);
INSERT INTO public.games VALUES (3, 12, 3);
INSERT INTO public.games VALUES (4, 3, 1);
INSERT INTO public.games VALUES (5, 5, 1);
INSERT INTO public.games VALUES (6, 1, 1);
INSERT INTO public.games VALUES (7, 3, 3);
INSERT INTO public.games VALUES (8, 757, 14);
INSERT INTO public.games VALUES (9, 872, 16);
INSERT INTO public.games VALUES (10, 874, 14);
INSERT INTO public.games VALUES (11, 429, 14);
INSERT INTO public.games VALUES (12, 429, 14);
INSERT INTO public.games VALUES (13, 124, 14);
INSERT INTO public.games VALUES (14, 807, 21);
INSERT INTO public.games VALUES (15, 506, 23);
INSERT INTO public.games VALUES (16, 531, 21);
INSERT INTO public.games VALUES (17, 540, 21);
INSERT INTO public.games VALUES (18, 540, 21);
INSERT INTO public.games VALUES (19, 360, 21);
INSERT INTO public.games VALUES (20, 168, 29);
INSERT INTO public.games VALUES (21, 851, 30);
INSERT INTO public.games VALUES (22, 89, 29);
INSERT INTO public.games VALUES (23, 307, 29);
INSERT INTO public.games VALUES (24, 307, 29);
INSERT INTO public.games VALUES (25, 49, 29);
INSERT INTO public.games VALUES (26, 1, 1);
INSERT INTO public.games VALUES (27, 132, 31);
INSERT INTO public.games VALUES (28, 188, 32);
INSERT INTO public.games VALUES (29, 392, 31);
INSERT INTO public.games VALUES (30, 390, 31);
INSERT INTO public.games VALUES (31, 390, 31);
INSERT INTO public.games VALUES (32, 264, 31);
INSERT INTO public.games VALUES (33, 17, 1);
INSERT INTO public.games VALUES (34, 146, 33);
INSERT INTO public.games VALUES (35, 955, 34);
INSERT INTO public.games VALUES (36, 124, 33);
INSERT INTO public.games VALUES (37, 479, 33);
INSERT INTO public.games VALUES (38, 479, 33);
INSERT INTO public.games VALUES (39, 707, 33);
INSERT INTO public.games VALUES (40, 193, 35);
INSERT INTO public.games VALUES (41, 253, 36);
INSERT INTO public.games VALUES (42, 187, 35);
INSERT INTO public.games VALUES (43, 624, 35);
INSERT INTO public.games VALUES (44, 624, 35);
INSERT INTO public.games VALUES (45, 517, 35);
INSERT INTO public.games VALUES (46, 172, 37);
INSERT INTO public.games VALUES (47, 490, 38);
INSERT INTO public.games VALUES (48, 405, 37);
INSERT INTO public.games VALUES (49, 901, 37);
INSERT INTO public.games VALUES (50, 901, 37);
INSERT INTO public.games VALUES (51, 595, 37);
INSERT INTO public.games VALUES (52, 936, 39);
INSERT INTO public.games VALUES (53, 326, 40);
INSERT INTO public.games VALUES (54, 504, 39);
INSERT INTO public.games VALUES (55, 442, 39);
INSERT INTO public.games VALUES (56, 442, 39);
INSERT INTO public.games VALUES (57, 649, 39);
INSERT INTO public.games VALUES (58, 674, 41);
INSERT INTO public.games VALUES (59, 267, 42);
INSERT INTO public.games VALUES (60, 118, 41);
INSERT INTO public.games VALUES (61, 564, 41);
INSERT INTO public.games VALUES (62, 564, 41);
INSERT INTO public.games VALUES (63, 904, 41);
INSERT INTO public.games VALUES (64, 142, 43);
INSERT INTO public.games VALUES (65, 451, 44);
INSERT INTO public.games VALUES (66, 650, 43);
INSERT INTO public.games VALUES (67, 16, 43);
INSERT INTO public.games VALUES (68, 16, 43);
INSERT INTO public.games VALUES (69, 938, 43);
INSERT INTO public.games VALUES (70, 44, 45);
INSERT INTO public.games VALUES (71, 898, 46);
INSERT INTO public.games VALUES (72, 849, 45);
INSERT INTO public.games VALUES (73, 814, 45);
INSERT INTO public.games VALUES (74, 814, 45);
INSERT INTO public.games VALUES (75, 315, 45);
INSERT INTO public.games VALUES (76, 451, 47);
INSERT INTO public.games VALUES (77, 86, 48);
INSERT INTO public.games VALUES (78, 151, 47);
INSERT INTO public.games VALUES (79, 533, 47);
INSERT INTO public.games VALUES (80, 533, 47);
INSERT INTO public.games VALUES (81, 107, 47);
INSERT INTO public.games VALUES (82, 2, 49);
INSERT INTO public.games VALUES (83, 740, 50);
INSERT INTO public.games VALUES (84, 864, 49);
INSERT INTO public.games VALUES (85, 7, 49);
INSERT INTO public.games VALUES (86, 7, 49);
INSERT INTO public.games VALUES (87, 368, 49);
INSERT INTO public.games VALUES (88, 557, 51);
INSERT INTO public.games VALUES (89, 119, 52);
INSERT INTO public.games VALUES (90, 162, 51);
INSERT INTO public.games VALUES (91, 728, 51);
INSERT INTO public.games VALUES (92, 728, 51);
INSERT INTO public.games VALUES (93, 783, 51);
INSERT INTO public.games VALUES (94, 659, 53);
INSERT INTO public.games VALUES (95, 774, 54);
INSERT INTO public.games VALUES (96, 682, 53);
INSERT INTO public.games VALUES (97, 110, 53);
INSERT INTO public.games VALUES (98, 110, 53);
INSERT INTO public.games VALUES (99, 532, 53);
INSERT INTO public.games VALUES (100, 376, 55);
INSERT INTO public.games VALUES (101, 74, 56);
INSERT INTO public.games VALUES (102, 187, 55);
INSERT INTO public.games VALUES (103, 878, 55);
INSERT INTO public.games VALUES (104, 878, 55);
INSERT INTO public.games VALUES (105, 635, 55);
INSERT INTO public.games VALUES (106, 12, 1);
INSERT INTO public.games VALUES (107, 580, 57);
INSERT INTO public.games VALUES (108, 736, 58);
INSERT INTO public.games VALUES (109, 814, 57);
INSERT INTO public.games VALUES (110, 373, 57);
INSERT INTO public.games VALUES (111, 373, 57);
INSERT INTO public.games VALUES (112, 160, 57);
INSERT INTO public.games VALUES (113, 136, 60);
INSERT INTO public.games VALUES (114, 648, 61);
INSERT INTO public.games VALUES (115, 410, 60);
INSERT INTO public.games VALUES (116, 780, 60);
INSERT INTO public.games VALUES (117, 780, 60);
INSERT INTO public.games VALUES (118, 98, 60);
INSERT INTO public.games VALUES (119, 235, 62);
INSERT INTO public.games VALUES (120, 328, 63);
INSERT INTO public.games VALUES (121, 564, 62);
INSERT INTO public.games VALUES (122, 486, 62);
INSERT INTO public.games VALUES (123, 486, 62);
INSERT INTO public.games VALUES (124, 202, 62);
INSERT INTO public.games VALUES (125, 336, 64);
INSERT INTO public.games VALUES (126, 878, 65);
INSERT INTO public.games VALUES (127, 169, 64);
INSERT INTO public.games VALUES (128, 238, 64);
INSERT INTO public.games VALUES (129, 238, 64);
INSERT INTO public.games VALUES (130, 201, 64);
INSERT INTO public.games VALUES (131, 175, 66);
INSERT INTO public.games VALUES (132, 833, 67);
INSERT INTO public.games VALUES (133, 448, 66);
INSERT INTO public.games VALUES (134, 553, 66);
INSERT INTO public.games VALUES (135, 553, 66);
INSERT INTO public.games VALUES (136, 194, 66);
INSERT INTO public.games VALUES (137, 105, 68);
INSERT INTO public.games VALUES (138, 287, 69);
INSERT INTO public.games VALUES (139, 401, 68);
INSERT INTO public.games VALUES (140, 967, 68);
INSERT INTO public.games VALUES (141, 967, 68);
INSERT INTO public.games VALUES (142, 303, 68);
INSERT INTO public.games VALUES (143, 787, 70);
INSERT INTO public.games VALUES (144, 536, 71);
INSERT INTO public.games VALUES (145, 700, 70);
INSERT INTO public.games VALUES (146, 194, 70);
INSERT INTO public.games VALUES (147, 194, 70);
INSERT INTO public.games VALUES (148, 517, 70);
INSERT INTO public.games VALUES (149, 148, 72);
INSERT INTO public.games VALUES (150, 642, 73);
INSERT INTO public.games VALUES (151, 399, 72);
INSERT INTO public.games VALUES (152, 957, 72);
INSERT INTO public.games VALUES (153, 957, 72);
INSERT INTO public.games VALUES (154, 184, 72);
INSERT INTO public.games VALUES (155, 334, 74);
INSERT INTO public.games VALUES (156, 465, 75);
INSERT INTO public.games VALUES (157, 508, 74);
INSERT INTO public.games VALUES (158, 483, 74);
INSERT INTO public.games VALUES (159, 483, 74);
INSERT INTO public.games VALUES (160, 655, 74);
INSERT INTO public.games VALUES (161, 21, 76);
INSERT INTO public.games VALUES (162, 325, 77);
INSERT INTO public.games VALUES (163, 617, 76);
INSERT INTO public.games VALUES (164, 884, 76);
INSERT INTO public.games VALUES (165, 884, 76);
INSERT INTO public.games VALUES (166, 372, 76);
INSERT INTO public.games VALUES (167, 171, 78);
INSERT INTO public.games VALUES (168, 52, 79);
INSERT INTO public.games VALUES (169, 28, 78);
INSERT INTO public.games VALUES (170, 575, 78);
INSERT INTO public.games VALUES (171, 575, 78);
INSERT INTO public.games VALUES (172, 543, 78);
INSERT INTO public.games VALUES (173, 393, 80);
INSERT INTO public.games VALUES (174, 532, 81);
INSERT INTO public.games VALUES (175, 473, 80);
INSERT INTO public.games VALUES (176, 763, 80);
INSERT INTO public.games VALUES (177, 763, 80);
INSERT INTO public.games VALUES (178, 813, 80);
INSERT INTO public.games VALUES (179, 109, 82);
INSERT INTO public.games VALUES (180, 852, 83);
INSERT INTO public.games VALUES (181, 500, 82);
INSERT INTO public.games VALUES (182, 475, 82);
INSERT INTO public.games VALUES (183, 475, 82);
INSERT INTO public.games VALUES (184, 639, 82);
INSERT INTO public.games VALUES (185, 135, 84);
INSERT INTO public.games VALUES (186, 257, 85);
INSERT INTO public.games VALUES (187, 53, 84);
INSERT INTO public.games VALUES (188, 416, 84);
INSERT INTO public.games VALUES (189, 416, 84);
INSERT INTO public.games VALUES (190, 30, 84);
INSERT INTO public.games VALUES (191, 607, 86);
INSERT INTO public.games VALUES (192, 984, 87);
INSERT INTO public.games VALUES (193, 155, 86);
INSERT INTO public.games VALUES (194, 657, 86);
INSERT INTO public.games VALUES (195, 657, 86);
INSERT INTO public.games VALUES (196, 981, 86);
INSERT INTO public.games VALUES (197, 761, 88);
INSERT INTO public.games VALUES (198, 467, 89);
INSERT INTO public.games VALUES (199, 55, 88);
INSERT INTO public.games VALUES (200, 568, 88);
INSERT INTO public.games VALUES (201, 568, 88);
INSERT INTO public.games VALUES (202, 872, 88);
INSERT INTO public.games VALUES (203, 283, 90);
INSERT INTO public.games VALUES (204, 554, 91);
INSERT INTO public.games VALUES (205, 350, 90);
INSERT INTO public.games VALUES (206, 729, 90);
INSERT INTO public.games VALUES (207, 729, 90);
INSERT INTO public.games VALUES (208, 327, 90);
INSERT INTO public.games VALUES (209, 710, 92);
INSERT INTO public.games VALUES (210, 705, 93);
INSERT INTO public.games VALUES (211, 173, 92);
INSERT INTO public.games VALUES (212, 881, 92);
INSERT INTO public.games VALUES (213, 881, 92);
INSERT INTO public.games VALUES (214, 162, 92);
INSERT INTO public.games VALUES (215, 705, 94);
INSERT INTO public.games VALUES (216, 494, 95);
INSERT INTO public.games VALUES (217, 357, 94);
INSERT INTO public.games VALUES (218, 322, 94);
INSERT INTO public.games VALUES (219, 322, 94);
INSERT INTO public.games VALUES (220, 61, 94);
INSERT INTO public.games VALUES (221, 951, 96);
INSERT INTO public.games VALUES (222, 654, 97);
INSERT INTO public.games VALUES (223, 96, 96);
INSERT INTO public.games VALUES (224, 858, 96);
INSERT INTO public.games VALUES (225, 858, 96);
INSERT INTO public.games VALUES (226, 709, 96);
INSERT INTO public.games VALUES (227, 723, 98);
INSERT INTO public.games VALUES (228, 176, 99);
INSERT INTO public.games VALUES (229, 918, 98);
INSERT INTO public.games VALUES (230, 576, 98);
INSERT INTO public.games VALUES (231, 576, 98);
INSERT INTO public.games VALUES (232, 784, 98);
INSERT INTO public.games VALUES (233, 649, 100);
INSERT INTO public.games VALUES (234, 800, 101);
INSERT INTO public.games VALUES (235, 606, 100);
INSERT INTO public.games VALUES (236, 891, 100);
INSERT INTO public.games VALUES (237, 891, 100);
INSERT INTO public.games VALUES (238, 278, 100);
INSERT INTO public.games VALUES (239, 377, 102);
INSERT INTO public.games VALUES (240, 739, 103);
INSERT INTO public.games VALUES (241, 52, 102);
INSERT INTO public.games VALUES (242, 146, 102);
INSERT INTO public.games VALUES (243, 146, 102);
INSERT INTO public.games VALUES (244, 775, 102);
INSERT INTO public.games VALUES (245, 641, 104);
INSERT INTO public.games VALUES (246, 330, 105);
INSERT INTO public.games VALUES (247, 707, 104);
INSERT INTO public.games VALUES (248, 46, 104);
INSERT INTO public.games VALUES (249, 46, 104);
INSERT INTO public.games VALUES (250, 872, 104);
INSERT INTO public.games VALUES (251, 496, 106);
INSERT INTO public.games VALUES (252, 964, 107);
INSERT INTO public.games VALUES (253, 708, 106);
INSERT INTO public.games VALUES (254, 861, 106);
INSERT INTO public.games VALUES (255, 861, 106);
INSERT INTO public.games VALUES (256, 894, 106);
INSERT INTO public.games VALUES (257, 148, 108);
INSERT INTO public.games VALUES (258, 970, 109);
INSERT INTO public.games VALUES (259, 932, 108);
INSERT INTO public.games VALUES (260, 480, 108);
INSERT INTO public.games VALUES (261, 480, 108);
INSERT INTO public.games VALUES (262, 420, 108);
INSERT INTO public.games VALUES (263, 657, 110);
INSERT INTO public.games VALUES (264, 925, 111);
INSERT INTO public.games VALUES (265, 590, 110);
INSERT INTO public.games VALUES (266, 930, 110);
INSERT INTO public.games VALUES (267, 930, 110);
INSERT INTO public.games VALUES (268, 558, 110);
INSERT INTO public.games VALUES (269, 760, 112);
INSERT INTO public.games VALUES (270, 525, 113);
INSERT INTO public.games VALUES (271, 225, 112);
INSERT INTO public.games VALUES (272, 984, 112);
INSERT INTO public.games VALUES (273, 984, 112);
INSERT INTO public.games VALUES (274, 589, 112);
INSERT INTO public.games VALUES (275, 416, 114);
INSERT INTO public.games VALUES (276, 890, 115);
INSERT INTO public.games VALUES (277, 272, 114);
INSERT INTO public.games VALUES (278, 63, 114);
INSERT INTO public.games VALUES (279, 63, 114);
INSERT INTO public.games VALUES (280, 403, 114);
INSERT INTO public.games VALUES (281, 579, 117);
INSERT INTO public.games VALUES (282, 617, 116);
INSERT INTO public.games VALUES (283, 471, 116);
INSERT INTO public.games VALUES (284, 471, 116);
INSERT INTO public.games VALUES (285, 21, 116);
INSERT INTO public.games VALUES (286, 390, 118);
INSERT INTO public.games VALUES (287, 814, 119);
INSERT INTO public.games VALUES (288, 862, 118);
INSERT INTO public.games VALUES (289, 483, 118);
INSERT INTO public.games VALUES (290, 483, 118);
INSERT INTO public.games VALUES (291, 596, 118);
INSERT INTO public.games VALUES (292, 500, 1);
INSERT INTO public.games VALUES (293, 767, 120);
INSERT INTO public.games VALUES (294, 934, 121);
INSERT INTO public.games VALUES (295, 374, 120);
INSERT INTO public.games VALUES (296, 9, 120);
INSERT INTO public.games VALUES (297, 9, 120);
INSERT INTO public.games VALUES (298, 579, 120);
INSERT INTO public.games VALUES (299, 779, 122);
INSERT INTO public.games VALUES (300, 655, 123);
INSERT INTO public.games VALUES (301, 377, 122);
INSERT INTO public.games VALUES (302, 995, 122);
INSERT INTO public.games VALUES (303, 995, 122);
INSERT INTO public.games VALUES (304, 562, 122);
INSERT INTO public.games VALUES (305, 12, 1);
INSERT INTO public.games VALUES (306, 581, 124);
INSERT INTO public.games VALUES (307, 800, 125);
INSERT INTO public.games VALUES (308, 987, 124);
INSERT INTO public.games VALUES (309, 291, 124);
INSERT INTO public.games VALUES (310, 291, 124);
INSERT INTO public.games VALUES (311, 666, 124);
INSERT INTO public.games VALUES (312, 504, 126);
INSERT INTO public.games VALUES (313, 2, 127);
INSERT INTO public.games VALUES (314, 921, 126);
INSERT INTO public.games VALUES (315, 953, 126);
INSERT INTO public.games VALUES (316, 953, 126);
INSERT INTO public.games VALUES (317, 45, 126);
INSERT INTO public.games VALUES (318, 8, 1);
INSERT INTO public.games VALUES (319, 419, 128);
INSERT INTO public.games VALUES (320, 935, 128);
INSERT INTO public.games VALUES (321, 605, 129);
INSERT INTO public.games VALUES (322, 631, 129);
INSERT INTO public.games VALUES (323, 157, 128);
INSERT INTO public.games VALUES (324, 357, 128);
INSERT INTO public.games VALUES (325, 357, 128);
INSERT INTO public.games VALUES (326, 721, 128);
INSERT INTO public.games VALUES (327, 728, 130);
INSERT INTO public.games VALUES (328, 760, 130);
INSERT INTO public.games VALUES (329, 238, 131);
INSERT INTO public.games VALUES (330, 227, 131);
INSERT INTO public.games VALUES (331, 963, 130);
INSERT INTO public.games VALUES (332, 760, 130);
INSERT INTO public.games VALUES (333, 760, 130);
INSERT INTO public.games VALUES (334, 65, 130);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (1, 'Mike');
INSERT INTO public.usernames VALUES (3, 'John');
INSERT INTO public.usernames VALUES (4, 'user_1736243157899');
INSERT INTO public.usernames VALUES (5, 'user_1736243157898');
INSERT INTO public.usernames VALUES (6, 'user_1736243463052');
INSERT INTO public.usernames VALUES (7, 'user_1736243463051');
INSERT INTO public.usernames VALUES (8, '800');
INSERT INTO public.usernames VALUES (9, 'user_1736243932837');
INSERT INTO public.usernames VALUES (10, 'user_1736243932836');
INSERT INTO public.usernames VALUES (11, 'user_1736244372538');
INSERT INTO public.usernames VALUES (12, 'user_1736244372537');
INSERT INTO public.usernames VALUES (13, 'George');
INSERT INTO public.usernames VALUES (14, 'user_1736246505939');
INSERT INTO public.usernames VALUES (16, 'user_1736246505938');
INSERT INTO public.usernames VALUES (21, 'user_1736246584563');
INSERT INTO public.usernames VALUES (23, 'user_1736246584562');
INSERT INTO public.usernames VALUES (29, 'user_1736246645212');
INSERT INTO public.usernames VALUES (30, 'user_1736246645211');
INSERT INTO public.usernames VALUES (31, 'user_1736246653929');
INSERT INTO public.usernames VALUES (32, 'user_1736246653928');
INSERT INTO public.usernames VALUES (33, 'user_1736246710509');
INSERT INTO public.usernames VALUES (34, 'user_1736246710508');
INSERT INTO public.usernames VALUES (35, 'user_1736246725220');
INSERT INTO public.usernames VALUES (36, 'user_1736246725219');
INSERT INTO public.usernames VALUES (37, 'user_1736246743183');
INSERT INTO public.usernames VALUES (38, 'user_1736246743182');
INSERT INTO public.usernames VALUES (39, 'user_1736246773308');
INSERT INTO public.usernames VALUES (40, 'user_1736246773307');
INSERT INTO public.usernames VALUES (41, 'user_1736246841704');
INSERT INTO public.usernames VALUES (42, 'user_1736246841703');
INSERT INTO public.usernames VALUES (43, 'user_1736246861305');
INSERT INTO public.usernames VALUES (44, 'user_1736246861304');
INSERT INTO public.usernames VALUES (45, 'user_1736246866325');
INSERT INTO public.usernames VALUES (46, 'user_1736246866324');
INSERT INTO public.usernames VALUES (47, 'user_1736246879763');
INSERT INTO public.usernames VALUES (48, 'user_1736246879762');
INSERT INTO public.usernames VALUES (49, 'user_1736246887738');
INSERT INTO public.usernames VALUES (50, 'user_1736246887737');
INSERT INTO public.usernames VALUES (51, 'user_1736246904784');
INSERT INTO public.usernames VALUES (52, 'user_1736246904783');
INSERT INTO public.usernames VALUES (53, 'user_1736246968979');
INSERT INTO public.usernames VALUES (54, 'user_1736246968978');
INSERT INTO public.usernames VALUES (55, 'user_1736247117741');
INSERT INTO public.usernames VALUES (56, 'user_1736247117740');
INSERT INTO public.usernames VALUES (57, 'user_1736247176060');
INSERT INTO public.usernames VALUES (58, 'user_1736247176059');
INSERT INTO public.usernames VALUES (59, '');
INSERT INTO public.usernames VALUES (60, 'user_1736247229060');
INSERT INTO public.usernames VALUES (61, 'user_1736247229059');
INSERT INTO public.usernames VALUES (62, 'user_1736247379163');
INSERT INTO public.usernames VALUES (63, 'user_1736247379162');
INSERT INTO public.usernames VALUES (64, 'user_1736247399248');
INSERT INTO public.usernames VALUES (65, 'user_1736247399247');
INSERT INTO public.usernames VALUES (66, 'user_1736247600544');
INSERT INTO public.usernames VALUES (67, 'user_1736247600543');
INSERT INTO public.usernames VALUES (68, 'user_1736247785180');
INSERT INTO public.usernames VALUES (69, 'user_1736247785179');
INSERT INTO public.usernames VALUES (70, 'user_1736247824990');
INSERT INTO public.usernames VALUES (71, 'user_1736247824989');
INSERT INTO public.usernames VALUES (72, 'user_1736247928531');
INSERT INTO public.usernames VALUES (73, 'user_1736247928530');
INSERT INTO public.usernames VALUES (74, 'user_1736247931399');
INSERT INTO public.usernames VALUES (75, 'user_1736247931398');
INSERT INTO public.usernames VALUES (76, 'user_1736247934585');
INSERT INTO public.usernames VALUES (77, 'user_1736247934584');
INSERT INTO public.usernames VALUES (78, 'user_1736247937975');
INSERT INTO public.usernames VALUES (79, 'user_1736247937974');
INSERT INTO public.usernames VALUES (80, 'user_1736247940532');
INSERT INTO public.usernames VALUES (81, 'user_1736247940531');
INSERT INTO public.usernames VALUES (82, 'user_1736247947381');
INSERT INTO public.usernames VALUES (83, 'user_1736247947380');
INSERT INTO public.usernames VALUES (84, 'user_1736247950024');
INSERT INTO public.usernames VALUES (85, 'user_1736247950023');
INSERT INTO public.usernames VALUES (86, 'user_1736247979350');
INSERT INTO public.usernames VALUES (87, 'user_1736247979349');
INSERT INTO public.usernames VALUES (88, 'user_1736247982668');
INSERT INTO public.usernames VALUES (89, 'user_1736247982667');
INSERT INTO public.usernames VALUES (90, 'user_1736247985596');
INSERT INTO public.usernames VALUES (91, 'user_1736247985595');
INSERT INTO public.usernames VALUES (92, 'user_1736248012118');
INSERT INTO public.usernames VALUES (93, 'user_1736248012117');
INSERT INTO public.usernames VALUES (94, 'user_1736248058874');
INSERT INTO public.usernames VALUES (95, 'user_1736248058873');
INSERT INTO public.usernames VALUES (96, 'user_1736248115699');
INSERT INTO public.usernames VALUES (97, 'user_1736248115698');
INSERT INTO public.usernames VALUES (98, 'user_1736248163799');
INSERT INTO public.usernames VALUES (99, 'user_1736248163798');
INSERT INTO public.usernames VALUES (100, 'user_1736248168893');
INSERT INTO public.usernames VALUES (101, 'user_1736248168892');
INSERT INTO public.usernames VALUES (102, 'user_1736248183473');
INSERT INTO public.usernames VALUES (103, 'user_1736248183472');
INSERT INTO public.usernames VALUES (104, 'user_1736248188103');
INSERT INTO public.usernames VALUES (105, 'user_1736248188102');
INSERT INTO public.usernames VALUES (106, 'user_1736248190219');
INSERT INTO public.usernames VALUES (107, 'user_1736248190218');
INSERT INTO public.usernames VALUES (108, 'user_1736248193514');
INSERT INTO public.usernames VALUES (109, 'user_1736248193513');
INSERT INTO public.usernames VALUES (110, 'user_1736248429856');
INSERT INTO public.usernames VALUES (111, 'user_1736248429855');
INSERT INTO public.usernames VALUES (112, 'user_1736248442982');
INSERT INTO public.usernames VALUES (113, 'user_1736248442981');
INSERT INTO public.usernames VALUES (114, 'user_1736248524498');
INSERT INTO public.usernames VALUES (115, 'user_1736248524497');
INSERT INTO public.usernames VALUES (116, 'user_1736248585413');
INSERT INTO public.usernames VALUES (117, 'user_1736248585412');
INSERT INTO public.usernames VALUES (118, 'user_1736248654303');
INSERT INTO public.usernames VALUES (119, 'user_1736248654302');
INSERT INTO public.usernames VALUES (120, 'user_1736248692016');
INSERT INTO public.usernames VALUES (121, 'user_1736248692015');
INSERT INTO public.usernames VALUES (122, 'user_1736248698726');
INSERT INTO public.usernames VALUES (123, 'user_1736248698725');
INSERT INTO public.usernames VALUES (124, 'user_1736248919758');
INSERT INTO public.usernames VALUES (125, 'user_1736248919757');
INSERT INTO public.usernames VALUES (126, 'user_1736248955905');
INSERT INTO public.usernames VALUES (127, 'user_1736248955904');
INSERT INTO public.usernames VALUES (128, 'user_1736249325729');
INSERT INTO public.usernames VALUES (129, 'user_1736249325728');
INSERT INTO public.usernames VALUES (130, 'user_1736249358962');
INSERT INTO public.usernames VALUES (131, 'user_1736249358961');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 334, true);


--
-- Name: usernames_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_username_id_seq', 131, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (username_id);


--
-- Name: usernames usernames_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_username_key UNIQUE (username);


--
-- Name: games games_username_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_id_fkey FOREIGN KEY (username_id) REFERENCES public.usernames(username_id);


--
-- PostgreSQL database dump complete
--

