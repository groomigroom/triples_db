create table triples_members
(
    s_id integer primary key,
    name_bar varchar(50),
    nation varchar(50),
    birthy year
);

insert into triples_members
values
(1, "윤서연", "대한민국", 2003),
(2, "정혜린", "대한민국", 2007),
(3, "이지우", "대한민국", 2005),
(4, "김채연", "대한민국", 2004),
(5, "김유연", "대한민국", 2001),
(6, "김수민", "대한민국", 2007),
(7, "김나경", "대한민국", 2002),
(8, "공유빈", "대한민국", 2005),
(9, "카에데", "일본", 2005),
(10, "서다현", "대한민국", 2003),
(11, "코토네", "일본", 2004),
(12, "곽연지", "대한민국", 2008),
(13, "니엔", "대만", 2003),
(14, "박소현", "대한민국", 2002),
(15, "신위", "중국", 2002),
(16, "마유", "일본", 2002),
(17, "린", "일본", 2006),
(18, "주빈", "대한민국", 2009),
(19, "정하연", "대한민국", 2007),
(20, "박시온", "대한민국", 2006),
(21, "김채원", "대한민국", 2007),
(22, "설린", "태국", 2006),
(23, "서아", "대한민국", 2010),
(24, "지연", "대한민국", 2004);

create table 부서
(
    s_id integer primary key,
    b_id integer,
    b_name varchar(50),
    from_date date,
    to_date date
);

insert into 부서
values
(1, 1, "윤서연", "2023-05-04", "2100-12-31"),
(2, 1, "정혜린", "2022-10-28", "2100-12-31"),
(3, 1, "이지우", "2023-05-04", "2100-12-31"),
(4, 1, "김채연", "2023-05-04", "2100-12-31"),
(5, 1, "김유연", "2022-10-28", "2100-12-31"),
(6, 1, "김수민", "2023-05-04", "2100-12-31"),
(7, 1, "김나경", "2022-10-28", "2100-12-31"),
(8, 1, "공유빈", "2022-10-28", "2100-12-31"),
(9, 2, "카에데", "2023-08-17", "2100-12-31"),
(10, 2, "서다현", "2023-08-17", "2100-12-31"),
(11, 2, "코토네", "2023-10-11", "2100-12-31"),
(12, 2, "곽연지", "2023-10-11", "2100-12-31"),
(13, 2, "니엔", "2023-08-17", "2100-12-31"),
(14, 2, "박소현", "2023-08-17", "2100-12-31"),
(15, 2, "신위", "2023-08-17", "2100-12-31"),
(16, 2, "마유", "2023-10-11", "2100-12-31"),
(17, 3, "린", "2023-12-23", "2100-12-31"),
(18, 3, "주빈", "2023-12-23", "2100-12-31"),
(19, 3, "정하연", "2023-12-23", "2100-12-31"),
(20, 3, "박시온", "2023-12-23", "2100-12-31"),
(21, 3, "김채원", "2024-06-21", "2100-12-31"),
(22, 3, "설린", "2024-06-21", "2100-12-31"),
(23, 3, "서아", "2024-06-21", "2100-12-31"),
(24, 3, "지연", "2024-06-21", "2100-12-31");

-- 1. 테이블 생성 (direc_time 타입을 TIME으로 변경)
create table 부서1
(
    b_sebu integer,
    s_id integer primary key,
    seq_no integer,
    start_year integer,
    lyric_rank integer,
    song_name varchar(50),
    song_release datetime,
    song_amt double,
    song_rate double, -- 평가 점수
    showing_num int,
    showing_count integer,
    listening_num int,
    screen_num integer,
    listen_country varchar(50),
    countries varchar(50),
    composition float,
    song_type varchar(50),
    genre varchar(50),
    direc_time TIME -- INTEGER에서 TIME으로 수정
);

-- 2. 데이터 삽입 (5, 6, 7번 데이터의 누락된 컬럼 자리에 NULL 추가)
insert into 부서1
values
(1, 1, 22, 2023, 2, "Sad Girls Schemin", "2026-06-01", 3.33, 33.333, 28, 22, 41, 22, "korea", "korea", 0.5, "절제된 곡", "dance", "00:02:42"),
(1, 2, 27, 2022, 2, "Peer", "2026-05-30", 2.23, 21.432, 24, 27, 32, 12, "usa", "korea", 0.2, "감성적인 곡", "dance", "00:01:01"),
(1, 3, 23, 2023, 5, "Baby Flower", "2026-05-29", 4.55, 44.224, 42, 44, 55, 55, "korea", "korea", 0.4, "강렬한 곡", "rock", "00:03:08"),
(1, 4, 26, 2023, 4, "Type of Girl", "2026-05-28", 5.57, 45.443, 17, 15, 42, 43, "england", "korea", 0.6, "발랄한 곡", "dance", "00:03:09"),
-- 5번: screen_num 자리에 NULL, listen_country 앞 자리에 NULL 추가
(1, 5, 25, 2022, 3, "Sleek", "2026-05-27", 6.78, 33.223, 62, 22, 15, NULL, "sweden", "korea", 0.2, "절제된 곡", "dance", "00:02:31"),
-- 6번: screen_num 자리에 NULL, listen_country 앞 자리에 NULL 추가
(1, 6, 32, 2023, 7, "I Like That", "2026-05-26", 5.56, 22.323, 12, 16, 16, NULL, "swiss", "korea", 0.7, "절제된 곡", "dance", "00:02:16"),
-- 7번: screen_num 자리에 NULL, listen_country 앞 자리에 NULL 추가
(1, 7, 33, 2022, 5, "Me Myself Mode", "2026-05-25", 3.43, 45.565, 14, 15, 18, NULL, "england", "korea", 0.25, "발랄한 곡", "dance", "00:02:19"),
(1, 8, 43, 2022, 6, "Tokimetique", "2026-05-24", 1.11, 66.565, 27, 26, 22, 10, "korea", "korea", 0.3, "은근히 신나는 곡", "dance", "00:02:45");


select c.s_id, a.name_bar, b.from_date, c.seq_no
from triples_members a,
부서 b,
부서1 c
where a.s_id = b.s_id and
b.s_id =c.s_id;

/*
+------+-----------+------------+--------+
| s_id | name_bar  | from_date  | seq_no |
+------+-----------+------------+--------+
|    1 | 윤서연    | 2023-05-04 |     22 |
|    2 | 정혜린    | 2022-10-28 |     27 |
|    3 | 이지우    | 2023-05-04 |     23 |
|    4 | 김채연    | 2023-05-04 |     26 |
|    5 | 김유연    | 2022-10-28 |     25 |
|    6 | 김수민    | 2023-05-04 |     32 |
|    7 | 김나경    | 2022-10-28 |     33 |
|    8 | 공유빈    | 2022-10-28 |     43 |
+------+-----------+------------+--------+
*/

------------------------------------------------------------------------------------



-- 1. 앨범 테이블 생성 (처음부터 auto_increment 적용)
create table all_song_album
(
  so_id int not null auto_increment primary key,
  track int,
  title varchar(50),
  album varchar(50)
);

insert into all_song_album (track, title, album) values
(1, "Baby Flower Japanese Version", "Baby Flower Japanese Version"),
(1, "Sad Girls Schemin", "love_and_pop_pt1"),
(2, "Peer", "love_and_pop_pt1"),
(3, "Baby Flower", "love_and_pop_pt1"),
(4, "Type of Girl", "love_and_pop_pt1"),
(5, "Sleek", "love_and_pop_pt1"),
(6, "I Like That", "love_and_pop_pt1"),
(7, "Me Myself Mode", "love_and_pop_pt1"),
(1, "Tokimetique", "Tokimetique"),
(2, "Tokimetique -Shin Sakiura Remix-", "Tokimetique"),
(3, "Tokimetique TV Edit", "Tokimetique"),
(1, "깨어 (Are You Alive) (Inst.)", "4study4work4inst_Vol.3"),
(2, "추리소설 (Detective Soseol) (Inst.)", "4study4work4inst_Vol.3"),
(3, "어제 우리 불꽃놀이 (Firework Diary) (Inst.)", "4study4work4inst_Vol.3"),
(4, "Love Child (Inst.)", "4study4work4inst_Vol.3"),
(5, "Persona (Inst.)", "4study4work4inst_Vol.3"),
(6, "Too Hot (Inst.)", "4study4work4inst_Vol.3"),
(7, "Diablo (Inst.)", "4study4work4inst_Vol.3"),
(8, "Friend Zone (Inst.)", "4study4work4inst_Vol.3"),
(9, "Love2Love (Inst.)", "4study4work4inst_Vol.3"),
(10, "Fly Up (Inst.)", "4study4work4inst_Vol.3"),
(11, "Cameo Love (Inst.)", "4study4work4inst_Vol.3"),
(12, "Bubble Gum Girl (Inst.)", "4study4work4inst_Vol.3"),
(13, "Q&A (Inst.)", "4study4work4inst_Vol.3"),
(14, "Christmas Alone (Inst.)", "4study4work4inst_Vol.3"),
(1, "Magic Shine New Zone", "msnz_Beyond_Beauty"),
(2, "Fly Up", "msnz_Beyond_Beauty"),
(3, "Cameo Love", "msnz_Beyond_Beauty"),
(4, "Bubble Gum Girl", "msnz_Beyond_Beauty"),
(5, "Q&A", "msnz_Beyond_Beauty"),
(6, "Christmas Alone", "msnz_Beyond_Beauty"),
(1, "Password", "tripleS_hatch!_SecretHimitsuBimil"),
(2, "Headphones", "tripleS_hatch!_SecretHimitsuBimil"),
(3, "Tokimetique", "tripleS_hatch!_SecretHimitsuBimil"),
(4, "TOKYO", "tripleS_hatch!_SecretHimitsuBimil"),
(5, "Oshare", "tripleS_hatch!_SecretHimitsuBimil"),
(6, "Untitled", "tripleS_hatch!_SecretHimitsuBimil"),
(7, "### (hatch! Version)", "tripleS_hatch!_SecretHimitsuBimil"),
(1, "Password", "tripleS hatch! <Password>"),
(1, "Pink Power", "Pink Power(잔망루피, tripleS (트리플에스))"),
(1, "@% (Alpha Percent)", "<ASSEMBLE25>"),
(2, "깨어 (Are You Alive)", "<ASSEMBLE25>"),
(3, "추리소설 (Detective Soseol)", "<ASSEMBLE25>"),
(4, "어제 우리 불꽃놀이 (Firework Diary)", "<ASSEMBLE25>"),
(5, "Love Child", "<ASSEMBLE25>"),
(6, "Persona", "<ASSEMBLE25>"),
(7, "Too Hot", "<ASSEMBLE25>"),
(8, "Diablo", "<ASSEMBLE25>"),
(9, "Friend Zone", "<ASSEMBLE25>"),
(10, "Love2Love", "<ASSEMBLE25>"),
(1, "Girls Never Die (Japanese Version)", "Girls Never Die (Japanese Version)"),
(1, "Rising (Japanese Version)", "Rising (Japanese Version)"),
(4, "PainDrop (by 서연, 지우, 유빈, 소현)", "선의의 경쟁 OST"),
(1, "PainDrop (by 서연, 지우, 유빈, 소현)", "선의의경쟁 OST Part.4"),
(2, "PainDrop (by 서연, 지우, 유빈, 소현) (Inst)", "선의의경쟁 OST Part.4"),
(1, "Girls Never Die (Inst.)", "4study4work4inst Vol.2"),
(2, "가시권 (Heart Raider) (Inst.)", "4study4work4inst Vol.2"),
(3, "Midnight Flower (Inst.)", "4study4work4inst Vol.2"),
(4, "White Soul Sneakers (Inst.)", "4study4work4inst Vol.2"),
(5, "치유 (Chiyu) (Inst.)", "4study4work4inst Vol.2"),
(6, "24 (Inst.)", "4study4work4inst Vol.2"),
(7, "이면의 이면 (Beyond the Beyond) (Inst.)", "4study4work4inst Vol.2"),
(8, "Non Scale (Inst.)", "4study4work4inst Vol.2"),
(9, "Dimension (Inst.)", "4study4work4inst Vol.2"),
(10, "내적 댄스 (Inner Dance) (Inst.)", "4study4work4inst Vol.2"),
(11, "Hit the Floor (Inst.)", "4study4work4inst Vol.2"),
(12, "Choom (Inst.)", "4study4work4inst Vol.2"),
(13, "Éclair (Inst.)", "4study4work4inst Vol.2"),
(14, "연애소설 (Love Soseol) (Inst.)", "4study4work4inst Vol.2"),
(15, "Atmosphere (VV Ver.) (Inst.)", "4study4work4inst Vol.2"),
(16, "12 Rings (Inst.)", "4study4work4inst Vol.2"),
(17, "Vision (Inst.)", "4study4work4inst Vol.2"),
(18, "Bionic Power (Inst.)", "4study4work4inst Vol.2"),
(1, "Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (골 때리는 그녀들 X tripleS (트리플에스))"),
(2, "Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)"),
(1, "Untitled", "tripleS hatch! <Untitled>"),
(2, "### (hatch! Version)", "tripleS hatch! <Untitled>"),
(3, "###", "tripleS hatch! <Untitled>"),
(1, "Untitled", "tripleS hatch! <Untitled>"),
(1, "Polaroid (by 나경, 마유, 시온, 채원)", "Polaroid"),
(2, "Polaroid (by 나경, 마유, 시온, 채원) (Inst.)", "Polaroid"),
(1, "Visual Virtue", "Visionary Vision <Performante>"),
(2, "Hit the Floor", "Visionary Vision <Performante>"),
(3, "Choom", "Visionary Vision <Performante>"),
(4, "Éclair", "Visionary Vision <Performante>"),
(5, "연애소설 (Love Soseol)", "Visionary Vision <Performante>"),
(6, "Atmosphere (VV Ver.)", "Visionary Vision <Performante>"),
(7, "12 Rings", "Visionary Vision <Performante>"),
(8, "Vision", "Visionary Vision <Performante>"),
(9, "Bionic Power", "Visionary Vision <Performante>"),
(10, "Visionary Vision", "Visionary Vision <Performante>"),
(1, "###", "<###>"),
(1, "내적 댄스 (Inner Dance)", "Glow <Inner Dance>"),
(1, "S", "〈ASSEMBLE24〉"),
(2, "Girls Never Die", "〈ASSEMBLE24〉"),
(3, "가시권 (Heart Raider)", "〈ASSEMBLE24〉"),
(4, "Midnight Flower", "〈ASSEMBLE24〉"),
(5, "White Soul Sneakers", "〈ASSEMBLE24〉"),
(6, "치유 (Chiyu)", "〈ASSEMBLE24〉"),
(7, "24", "〈ASSEMBLE24〉"),
(8, "이면의 이면 (Beyond the Beyond)", "〈ASSEMBLE24〉"),
(9, "Non Scale", "〈ASSEMBLE24〉"),
(10, "Dimension", "〈ASSEMBLE24〉");


-- 2. 판매 테이블 생성 (처음부터 auto_increment 적용)
create table all_song_selling
(
  so_id int not null auto_increment primary key,
  title varchar(50),
  album varchar(50),
  판매_억단위 int
);

insert into all_song_selling (title, album, 판매_억단위) values
("Baby Flower Japanese Version", "Baby Flower Japanese Version", 111),
("Sad Girls Schemin", "love_and_pop_pt1", 11),
("Peer", "love_and_pop_pt1", 22),
("Baby Flower", "love_and_pop_pt1", 95),
("Type of Girl", "love_and_pop_pt1", 12),
("Sleek", "love_and_pop_pt1", 66),
("I Like That", "love_and_pop_pt1", 44),
("Me Myself Mode", "love_and_pop_pt1", 77),
("Tokimetique", "Tokimetique", 33),
("Tokimetique -Shin Sakiura Remix-", "Tokimetique", 22),
("Tokimetique TV Edit", "Tokimetique", 44),
("깨어 (Are You Alive) (Inst.)", "4study4work4inst_Vol.3", 44),
("추리소설 (Detective Soseol) (Inst.)", "4study4work4inst_Vol.3", 33),
("어제 우리 불꽃놀이 (Firework Diary) (Inst.)", "4study4work4inst_Vol.3", 11),
("Love Child (Inst.)", "4study4work4inst_Vol.3", 55),
("Persona (Inst.)", "4study4work4inst_Vol.3", 7),
("Too Hot (Inst.)", "4study4work4inst_Vol.3", 99),
("Diablo (Inst.)", "4study4work4inst_Vol.3", 11),
("Friend Zone (Inst.)", "4study4work4inst_Vol.3", 12),
("Love2Love (Inst.)", "4study4work4inst_Vol.3", 122),
("Fly Up (Inst.)", "4study4work4inst_Vol.3", 200),
("Cameo Love (Inst.)", "4study4work4inst_Vol.3", 55),
("Bubble Gum Girl (Inst.)", "4study4work4inst_Vol.3", 244),
("Q&A (Inst.)", "4study4work4inst_Vol.3", 456),
("Christmas Alone (Inst.)", "4study4work4inst_Vol.3", 600),
("Magic Shine New Zone", "msnz_Beyond_Beauty", 66),
("Fly Up", "msnz_Beyond_Beauty", 255),
("Cameo Love", "msnz_Beyond_Beauty", 1225),
("Bubble Gum Girl", "msnz_Beyond_Beauty", 1200),
("Q&A", "msnz_Beyond_Beauty", 4000),
("Christmas Alone", "msnz_Beyond_Beauty", 3900),
("Password", "tripleS_hatch!_SecretHimitsuBimil", 1244),
("Headphones", "tripleS_hatch!_SecretHimitsuBimil", 256),
("Tokimetique", "tripleS_hatch!_SecretHimitsuBimil", 44),
("TOKYO", "tripleS_hatch!_SecretHimitsuBimil", 55),
("Oshare", "tripleS_hatch!_SecretHimitsuBimil", 755),
("Untitled", "tripleS_hatch!_SecretHimitsuBimil", 245),
("### (hatch! Version)", "tripleS_hatch!_SecretHimitsuBimil", 555),
("Password", "tripleS hatch! <Password>", 755),
("Pink Power", "Pink Power(잔망루피, tripleS (트리플에스))", 14),
("@% (Alpha Percent)", "<ASSEMBLE25>", 55),
("깨어 (Are You Alive)", "<ASSEMBLE25>", 2244),
("추리소설 (Detective Soseol)", "<ASSEMBLE25>", 1255),
("어제 우리 불꽃놀이 (Firework Diary)", "<ASSEMBLE25>", 456),
("Love Child", "<ASSEMBLE25>", 665),
("Persona", "<ASSEMBLE25>", 476),
("Too Hot", "<ASSEMBLE25>", 1100),
("Diablo", "<ASSEMBLE25>", 245),
("Friend Zone", "<ASSEMBLE25>", 665),
("Love2Love", "<ASSEMBLE25>", 600),
("Girls Never Die (Japanese Version)", "Girls Never Die (Japanese Version)", 1222),
("Rising (Japanese Version)", "Rising (Japanese Version)", 5554),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (골 때리는 그녀들 X tripleS (트리플에스))", 222),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)", 45);


-- 3. 데이터 확인 및 앨범별 판매량 평균 구하기 (조인 후 Group By 적용)
select b.album, avg(a.판매_억단위) as 평균_판매량
from all_song_selling a
join all_song_album b on a.so_id = b.so_id
group by b.album;

/*
출력값
+-----------------------------------------------------+------------------+
| album                                               | 평균_판매량      |
+-----------------------------------------------------+------------------+
| Baby Flower Japanese Version                        |         111.0000 |
| love_and_pop_pt1                                    |          46.7143 |
| Tokimetique                                         |          33.0000 |
| 4study4work4inst_Vol.3                              |         139.2143 |
| msnz_Beyond_Beauty                                  |        1774.3333 |
| tripleS_hatch!_SecretHimitsuBimil                   |         450.5714 |
| tripleS hatch! <Password>                           |         755.0000 |
| Pink Power(잔망루피, tripleS (트리플에스))          |          14.0000 |
| <ASSEMBLE25>                                        |         776.1000 |
| Girls Never Die (Japanese Version)                  |        1222.0000 |
| Rising (Japanese Version)                           |        5554.0000 |
| 선의의 경쟁 OST                                     |         222.0000 |
| 선의의경쟁 OST Part.4                               |          45.0000 |
+-----------------------------------------------------+------------------+
*/

------------------------------

create table all_song_selling
(
  so_id int not null auto_increment primary key,
  title varchar(50),
  album varchar(50),
  판매_억단위 int
);

insert into all_song_selling (title, album, 판매_억단위) values
("Baby Flower Japanese Version", "Baby Flower Japanese Version", 111),
("Sad Girls Schemin", "love_and_pop_pt1", 11),
("Peer", "love_and_pop_pt1", 22),
("Baby Flower", "love_and_pop_pt1", 95),
("Type of Girl", "love_and_pop_pt1", 12),
("Sleek", "love_and_pop_pt1", 66),
("I Like That", "love_and_pop_pt1", 44),
("Me Myself Mode", "love_and_pop_pt1", 77),
("Tokimetique", "Tokimetique", 33),
("Tokimetique -Shin Sakiura Remix-", "Tokimetique", 22),
("Tokimetique TV Edit", "Tokimetique", 44),
("깨어 (Are You Alive) (Inst.)", "4study4work4inst_Vol.3", 44),
("추리소설 (Detective Soseol) (Inst.)", "4study4work4inst_Vol.3", 33),
("어제 우리 불꽃놀이 (Firework Diary) (Inst.)", "4study4work4inst_Vol.3", 11),
("Love Child (Inst.)", "4study4work4inst_Vol.3", 55),
("Persona (Inst.)", "4study4work4inst_Vol.3", 7),
("Too Hot (Inst.)", "4study4work4inst_Vol.3", 99),
("Diablo (Inst.)", "4study4work4inst_Vol.3", 11),
("Friend Zone (Inst.)", "4study4work4inst_Vol.3", 12),
("Love2Love (Inst.)", "4study4work4inst_Vol.3", 122),
("Fly Up (Inst.)", "4study4work4inst_Vol.3", 200),
("Cameo Love (Inst.)", "4study4work4inst_Vol.3", 55),
("Bubble Gum Girl (Inst.)", "4study4work4inst_Vol.3", 244),
("Q&A (Inst.)", "4study4work4inst_Vol.3", 456),
("Christmas Alone (Inst.)", "4study4work4inst_Vol.3", 600),
("Magic Shine New Zone", "msnz_Beyond_Beauty", 66),
("Fly Up", "msnz_Beyond_Beauty", 255),
("Cameo Love", "msnz_Beyond_Beauty", 1225),
("Bubble Gum Girl", "msnz_Beyond_Beauty", 1200),
("Q&A", "msnz_Beyond_Beauty", 4000),
("Christmas Alone", "msnz_Beyond_Beauty", 3900),
("Password", "tripleS_hatch!_SecretHimitsuBimil", 1244),
("Headphones", "tripleS_hatch!_SecretHimitsuBimil", 256),
("Tokimetique", "tripleS_hatch!_SecretHimitsuBimil", 44),
("TOKYO", "tripleS_hatch!_SecretHimitsuBimil", 55),
("Oshare", "tripleS_hatch!_SecretHimitsuBimil", 755),
("Untitled", "tripleS_hatch!_SecretHimitsuBimil", 245),
("### (hatch! Version)", "tripleS_hatch!_SecretHimitsuBimil", 555),
("Password", "tripleS hatch! <Password>", 755),
("Pink Power", "Pink Power(잔망루피, tripleS (트리플에스))", 14),
("@% (Alpha Percent)", "<ASSEMBLE25>", 55),
("깨어 (Are You Alive)", "<ASSEMBLE25>", 2244),
("추리소설 (Detective Soseol)", "<ASSEMBLE25>", 1255),
("어제 우리 불꽃놀이 (Firework Diary)", "<ASSEMBLE25>", 456),
("Love Child", "<ASSEMBLE25>", 665),
("Persona", "<ASSEMBLE25>", 476),
("Too Hot", "<ASSEMBLE25>", 1100),
("Diablo", "<ASSEMBLE25>", 245),
("Friend Zone", "<ASSEMBLE25>", 665),
("Love2Love", "<ASSEMBLE25>", 600),
("Girls Never Die (Japanese Version)", "Girls Never Die (Japanese Version)", 1222),
("Rising (Japanese Version)", "Rising (Japanese Version)", 5554),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (골 때리는 그녀들 X tripleS (트리플에스))", 222),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)", 45);

select title, album, 판매_억단위 - (select avg(판매_억단위) from all_song_selling) as "평균_판매_금액과의 차이"
from all_song_selling; 

/*
출력값
+-----------------------------------------------------+----------------------------------------------------------------+-----------------------------------+
| title                                               | album                                                          | 평균_판매_금액과의 차이           |
+-----------------------------------------------------+----------------------------------------------------------------+-----------------------------------+
| Baby Flower Japanese Version                        | Baby Flower Japanese Version                                   |                         -478.9815 |
| Sad Girls Schemin                                   | love_and_pop_pt1                                               |                         -578.9815 |
| Peer                                                | love_and_pop_pt1                                               |                         -567.9815 |
| Baby Flower                                         | love_and_pop_pt1                                               |                         -494.9815 |
| Type of Girl                                        | love_and_pop_pt1                                               |                         -577.9815 |
| Sleek                                               | love_and_pop_pt1                                               |                         -523.9815 |
| I Like That                                         | love_and_pop_pt1                                               |                         -545.9815 |
| Me Myself Mode                                      | love_and_pop_pt1                                               |                         -512.9815 |
| Tokimetique                                         | Tokimetique                                                    |                         -556.9815 |
| Tokimetique -Shin Sakiura Remix-                    | Tokimetique                                                    |                         -567.9815 |
| Tokimetique TV Edit                                 | Tokimetique                                                    |                         -545.9815 |
| 깨어 (Are You Alive) (Inst.)                        | 4study4work4inst_Vol.3                                         |                         -545.9815 |
| 추리소설 (Detective Soseol) (Inst.)                 | 4study4work4inst_Vol.3                                         |                         -556.9815 |
| 어제 우리 불꽃놀이 (Firework Diary) (Inst.)         | 4study4work4inst_Vol.3                                         |                         -578.9815 |
| Love Child (Inst.)                                  | 4study4work4inst_Vol.3                                         |                         -534.9815 |
| Persona (Inst.)                                     | 4study4work4inst_Vol.3                                         |                         -582.9815 |
| Too Hot (Inst.)                                     | 4study4work4inst_Vol.3                                         |                         -490.9815 |
| Diablo (Inst.)                                      | 4study4work4inst_Vol.3                                         |                         -578.9815 |
| Friend Zone (Inst.)                                 | 4study4work4inst_Vol.3                                         |                         -577.9815 |
| Love2Love (Inst.)                                   | 4study4work4inst_Vol.3                                         |                         -467.9815 |
| Fly Up (Inst.)                                      | 4study4work4inst_Vol.3                                         |                         -389.9815 |
| Cameo Love (Inst.)                                  | 4study4work4inst_Vol.3                                         |                         -534.9815 |
| Bubble Gum Girl (Inst.)                             | 4study4work4inst_Vol.3                                         |                         -345.9815 |
| Q&A (Inst.)                                         | 4study4work4inst_Vol.3                                         |                         -133.9815 |
| Christmas Alone (Inst.)                             | 4study4work4inst_Vol.3                                         |                           10.0185 |
| Magic Shine New Zone                                | msnz_Beyond_Beauty                                             |                         -523.9815 |
| Fly Up                                              | msnz_Beyond_Beauty                                             |                         -334.9815 |
| Cameo Love                                          | msnz_Beyond_Beauty                                             |                          635.0185 |
| Bubble Gum Girl                                     | msnz_Beyond_Beauty                                             |                          610.0185 |
| Q&A                                                 | msnz_Beyond_Beauty                                             |                         3410.0185 |
| Christmas Alone                                     | msnz_Beyond_Beauty                                             |                         3310.0185 |
| Password                                            | tripleS_hatch!_SecretHimitsuBimil                              |                          654.0185 |
| Headphones                                          | tripleS_hatch!_SecretHimitsuBimil                              |                         -333.9815 |
| Tokimetique                                         | tripleS_hatch!_SecretHimitsuBimil                              |                         -545.9815 |
| TOKYO                                               | tripleS_hatch!_SecretHimitsuBimil                              |                         -534.9815 |
| Oshare                                              | tripleS_hatch!_SecretHimitsuBimil                              |                          165.0185 |
| Untitled                                            | tripleS_hatch!_SecretHimitsuBimil                              |                         -344.9815 |
| ### (hatch! Version)                                | tripleS_hatch!_SecretHimitsuBimil                              |                          -34.9815 |
| Password                                            | tripleS hatch! <Password>                                      |                          165.0185 |
| Pink Power                                          | Pink Power(잔망루피, tripleS (트리플에스))                     |                         -575.9815 |
| @% (Alpha Percent)                                  | <ASSEMBLE25>                                                   |                         -534.9815 |
| 깨어 (Are You Alive)                                | <ASSEMBLE25>                                                   |                         1654.0185 |
| 추리소설 (Detective Soseol)                         | <ASSEMBLE25>                                                   |                          665.0185 |
| 어제 우리 불꽃놀이 (Firework Diary)                 | <ASSEMBLE25>                                                   |                         -133.9815 |
| Love Child                                          | <ASSEMBLE25>                                                   |                           75.0185 |
| Persona                                             | <ASSEMBLE25>                                                   |                         -113.9815 |
| Too Hot                                             | <ASSEMBLE25>                                                   |                          510.0185 |
| Diablo                                              | <ASSEMBLE25>                                                   |                         -344.9815 |
| Friend Zone                                         | <ASSEMBLE25>                                                   |                           75.0185 |
| Love2Love                                           | <ASSEMBLE25>                                                   |                           10.0185 |
| Girls Never Die (Japanese Version)                  | Girls Never Die (Japanese Version)                             |                          632.0185 |
| Rising (Japanese Version)                           | Rising (Japanese Version)                                      |                         4964.0185 |
| Dreaming (by 유연, 유빈, 다현, 시온)                | Dreaming (골 때리는 그녀들 X tripleS (트리플에스))             |                         -367.9815 |
| Dreaming (by 유연, 유빈, 다현, 시온)                | Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)                   |                         -544.9815 |
+-----------------------------------------------------+----------------------------------------------------------------+-----------------------------------+
*/

------------------------------

create table all_song_selling
(
  so_id int not null auto_increment primary key,
  title varchar(50),
  album varchar(50),
  판매_억단위 int
);

insert into all_song_selling (title, album, 판매_억단위) values
("Baby Flower Japanese Version", "Baby Flower Japanese Version", 111),
("Sad Girls Schemin", "love_and_pop_pt1", 11),
("Peer", "love_and_pop_pt1", 22),
("Baby Flower", "love_and_pop_pt1", 95),
("Type of Girl", "love_and_pop_pt1", 12),
("Sleek", "love_and_pop_pt1", 66),
("I Like That", "love_and_pop_pt1", 44),
("Me Myself Mode", "love_and_pop_pt1", 77),
("Tokimetique", "Tokimetique", 33),
("Tokimetique -Shin Sakiura Remix-", "Tokimetique", 22),
("Tokimetique TV Edit", "Tokimetique", 44),
("깨어 (Are You Alive) (Inst.)", "4study4work4inst_Vol.3", 44),
("추리소설 (Detective Soseol) (Inst.)", "4study4work4inst_Vol.3", 33),
("어제 우리 불꽃놀이 (Firework Diary) (Inst.)", "4study4work4inst_Vol.3", 11),
("Love Child (Inst.)", "4study4work4inst_Vol.3", 55),
("Persona (Inst.)", "4study4work4inst_Vol.3", 7),
("Too Hot (Inst.)", "4study4work4inst_Vol.3", 99),
("Diablo (Inst.)", "4study4work4inst_Vol.3", 11),
("Friend Zone (Inst.)", "4study4work4inst_Vol.3", 12),
("Love2Love (Inst.)", "4study4work4inst_Vol.3", 122),
("Fly Up (Inst.)", "4study4work4inst_Vol.3", 200),
("Cameo Love (Inst.)", "4study4work4inst_Vol.3", 55),
("Bubble Gum Girl (Inst.)", "4study4work4inst_Vol.3", 244),
("Q&A (Inst.)", "4study4work4inst_Vol.3", 456),
("Christmas Alone (Inst.)", "4study4work4inst_Vol.3", 600),
("Magic Shine New Zone", "msnz_Beyond_Beauty", 66),
("Fly Up", "msnz_Beyond_Beauty", 255),
("Cameo Love", "msnz_Beyond_Beauty", 1225),
("Bubble Gum Girl", "msnz_Beyond_Beauty", 1200),
("Q&A", "msnz_Beyond_Beauty", 4000),
("Christmas Alone", "msnz_Beyond_Beauty", 3900),
("Password", "tripleS_hatch!_SecretHimitsuBimil", 1244),
("Headphones", "tripleS_hatch!_SecretHimitsuBimil", 256),
("Tokimetique", "tripleS_hatch!_SecretHimitsuBimil", 44),
("TOKYO", "tripleS_hatch!_SecretHimitsuBimil", 55),
("Oshare", "tripleS_hatch!_SecretHimitsuBimil", 755),
("Untitled", "tripleS_hatch!_SecretHimitsuBimil", 245),
("### (hatch! Version)", "tripleS_hatch!_SecretHimitsuBimil", 555),
("Password", "tripleS hatch! <Password>", 755),
("Pink Power", "Pink Power(잔망루피, tripleS (트리플에스))", 14),
("@% (Alpha Percent)", "<ASSEMBLE25>", 55),
("깨어 (Are You Alive)", "<ASSEMBLE25>", 2244),
("추리소설 (Detective Soseol)", "<ASSEMBLE25>", 1255),
("어제 우리 불꽃놀이 (Firework Diary)", "<ASSEMBLE25>", 456),
("Love Child", "<ASSEMBLE25>", 665),
("Persona", "<ASSEMBLE25>", 476),
("Too Hot", "<ASSEMBLE25>", 1100),
("Diablo", "<ASSEMBLE25>", 245),
("Friend Zone", "<ASSEMBLE25>", 665),
("Love2Love", "<ASSEMBLE25>", 600),
("Girls Never Die (Japanese Version)", "Girls Never Die (Japanese Version)", 1222),
("Rising (Japanese Version)", "Rising (Japanese Version)", 5554),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (골 때리는 그녀들 X tripleS (트리플에스))", 222),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)", 45);

select avg(al_sum.full_sum) avg_sum
from (select album, sum(판매_억단위) as full_sum
from all_song_selling
group by album) al_sum; 

/*
출력값
+-----------+
| avg_sum   |
+-----------+
| 2450.6923 |
+-----------+
*/

------------------------------

create table all_song_selling
(
  so_id int not null auto_increment primary key,
  title varchar(50),
  album varchar(50),
  판매_억단위 int
);

insert into all_song_selling (title, album, 판매_억단위) values
("Baby Flower Japanese Version", "Baby Flower Japanese Version", 111),
("Sad Girls Schemin", "love_and_pop_pt1", 11),
("Peer", "love_and_pop_pt1", 22),
("Baby Flower", "love_and_pop_pt1", 95),
("Type of Girl", "love_and_pop_pt1", 12),
("Sleek", "love_and_pop_pt1", 66),
("I Like That", "love_and_pop_pt1", 44),
("Me Myself Mode", "love_and_pop_pt1", 77),
("Tokimetique", "Tokimetique", 33),
("Tokimetique -Shin Sakiura Remix-", "Tokimetique", 22),
("Tokimetique TV Edit", "Tokimetique", 44),
("깨어 (Are You Alive) (Inst.)", "4study4work4inst_Vol.3", 44),
("추리소설 (Detective Soseol) (Inst.)", "4study4work4inst_Vol.3", 33),
("어제 우리 불꽃놀이 (Firework Diary) (Inst.)", "4study4work4inst_Vol.3", 11),
("Love Child (Inst.)", "4study4work4inst_Vol.3", 55),
("Persona (Inst.)", "4study4work4inst_Vol.3", 7),
("Too Hot (Inst.)", "4study4work4inst_Vol.3", 99),
("Diablo (Inst.)", "4study4work4inst_Vol.3", 11),
("Friend Zone (Inst.)", "4study4work4inst_Vol.3", 12),
("Love2Love (Inst.)", "4study4work4inst_Vol.3", 122),
("Fly Up (Inst.)", "4study4work4inst_Vol.3", 200),
("Cameo Love (Inst.)", "4study4work4inst_Vol.3", 55),
("Bubble Gum Girl (Inst.)", "4study4work4inst_Vol.3", 244),
("Q&A (Inst.)", "4study4work4inst_Vol.3", 456),
("Christmas Alone (Inst.)", "4study4work4inst_Vol.3", 600),
("Magic Shine New Zone", "msnz_Beyond_Beauty", 66),
("Fly Up", "msnz_Beyond_Beauty", 255),
("Cameo Love", "msnz_Beyond_Beauty", 1225),
("Bubble Gum Girl", "msnz_Beyond_Beauty", 1200),
("Q&A", "msnz_Beyond_Beauty", 4000),
("Christmas Alone", "msnz_Beyond_Beauty", 3900),
("Password", "tripleS_hatch!_SecretHimitsuBimil", 1244),
("Headphones", "tripleS_hatch!_SecretHimitsuBimil", 256),
("Tokimetique", "tripleS_hatch!_SecretHimitsuBimil", 44),
("TOKYO", "tripleS_hatch!_SecretHimitsuBimil", 55),
("Oshare", "tripleS_hatch!_SecretHimitsuBimil", 755),
("Untitled", "tripleS_hatch!_SecretHimitsuBimil", 245),
("### (hatch! Version)", "tripleS_hatch!_SecretHimitsuBimil", 555),
("Password", "tripleS hatch! <Password>", 755),
("Pink Power", "Pink Power(잔망루피, tripleS (트리플에스))", 14),
("@% (Alpha Percent)", "<ASSEMBLE25>", 55),
("깨어 (Are You Alive)", "<ASSEMBLE25>", 2244),
("추리소설 (Detective Soseol)", "<ASSEMBLE25>", 1255),
("어제 우리 불꽃놀이 (Firework Diary)", "<ASSEMBLE25>", 456),
("Love Child", "<ASSEMBLE25>", 665),
("Persona", "<ASSEMBLE25>", 476),
("Too Hot", "<ASSEMBLE25>", 1100),
("Diablo", "<ASSEMBLE25>", 245),
("Friend Zone", "<ASSEMBLE25>", 665),
("Love2Love", "<ASSEMBLE25>", 600),
("Girls Never Die (Japanese Version)", "Girls Never Die (Japanese Version)", 1222),
("Rising (Japanese Version)", "Rising (Japanese Version)", 5554),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (골 때리는 그녀들 X tripleS (트리플에스))", 222),
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)", 45);

select *
from all_song_selling
where 판매_억단위 > (
select avg(판매_억단위)
from all_song_selling
); 

/*
출력값
+-------+------------------------------------+------------------------------------+------------------+
| so_id | title                              | album                              | 판매_억단위      |
+-------+------------------------------------+------------------------------------+------------------+
|    25 | Christmas Alone (Inst.)            | 4study4work4inst_Vol.3             |              600 |
|    28 | Cameo Love                         | msnz_Beyond_Beauty                 |             1225 |
|    29 | Bubble Gum Girl                    | msnz_Beyond_Beauty                 |             1200 |
|    30 | Q&A                                | msnz_Beyond_Beauty                 |             4000 |
|    31 | Christmas Alone                    | msnz_Beyond_Beauty                 |             3900 |
|    32 | Password                           | tripleS_hatch!_SecretHimitsuBimil  |             1244 |
|    36 | Oshare                             | tripleS_hatch!_SecretHimitsuBimil  |              755 |
|    39 | Password                           | tripleS hatch! <Password>          |              755 |
|    42 | 깨어 (Are You Alive)               | <ASSEMBLE25>                       |             2244 |
|    43 | 추리소설 (Detective Soseol)        | <ASSEMBLE25>                       |             1255 |
|    45 | Love Child                         | <ASSEMBLE25>                       |              665 |
|    47 | Too Hot                            | <ASSEMBLE25>                       |             1100 |
|    49 | Friend Zone                        | <ASSEMBLE25>                       |              665 |
|    50 | Love2Love                          | <ASSEMBLE25>                       |              600 |
|    51 | Girls Never Die (Japanese Version) | Girls Never Die (Japanese Version) |             1222 |
|    52 | Rising (Japanese Version)          | Rising (Japanese Version)          |             5554 |
+-------+------------------------------------+------------------------------------+------------------+
*/

---------------------

SELECT YEAR(a.release_date), a.ranks, a.movie_name,
       ROUND(a.sale_amt / b.total_amt * 100,2) percentage
  FROM box_office a
 INNER JOIN (SELECT YEAR(release_date) years, SUM(sale_amt) total_amt
               FROM box_office
              WHERE YEAR(release_date) >= 2015
              GROUP BY 1
             ) b
    ON YEAR(a.release_date) = b.years
 WHERE a.ranks <= 3
 ORDER BY 1, 2;

SELECT a.dept_no, a.dept_name,
       mng.emp_no, mng.first_name, mng.last_name
  FROM departments a, 
      ( SELECT b.dept_no, b.emp_no, c.first_name, c.last_name
          FROM dept_manager b, 
               employees c
         WHERE b.emp_no = c.emp_no
           AND SYSDATE() BETWEEN b.from_date AND b.to_date
           AND a.dept_no = b.dept_no
      ) mng
  ORDER BY 1;
-- from 절의 서브쿼리는 바깥쪽꺼인 a를 참고 못하는데, a를 이용해서, 에러뜸.


SELECT a.dept_no, a.dept_name,
       mng.emp_no, mng.first_name, mng.last_name
  FROM departments a, 
      LATERAL 
      ( SELECT b.dept_no, b.emp_no, c.first_name, c.last_name
          FROM dept_manager b, 
               employees c
         WHERE b.emp_no = c.emp_no
           AND SYSDATE() BETWEEN b.from_date AND b.to_date
           AND a.dept_no = b.dept_no
      ) mng
  ORDER BY 1;
-- 위에꺼가 안되서, 아래꺼에서 lateral 써줌.


SELECT a.dept_no, a.dept_name,
       mng.emp_no, mng.first_name, mng.last_name
  FROM departments a
 INNER JOIN LATERAL 
      ( SELECT b.dept_no, b.emp_no, c.first_name, c.last_name
          FROM dept_manager b, 
               employees c
         WHERE b.emp_no = c.emp_no
           AND SYSDATE() BETWEEN b.from_date AND b.to_date
           AND a.dept_no = b.dept_no
      ) mng
  ORDER BY 1;  
  

SELECT ranks, movie_name, sale_amt
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND sale_amt >= ( SELECT MAX(sale_amt)
                       FROM box_office
                      WHERE YEAR(release_date) = 2018
                   );

-- where절의 조건 서브쿼리


SELECT ranks, movie_name, sale_amt
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND sale_amt >= ( SELECT sale_amt
                       FROM box_office
                      WHERE YEAR(release_date) = 2018
                        AND ranks BETWEEN 1 AND 3
                   );
-- 에러 뜸, 서브쿼리가 1개 이상의 row를 return해서

SELECT ranks, movie_name, sale_amt
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND sale_amt >= ANY ( SELECT sale_amt
                           FROM box_office
                          WHERE YEAR(release_date) = 2018
                            AND ranks BETWEEN 1 AND 3
                       );

-- 이건 됨. any는 그 중에 아무거나.



SELECT ranks, movie_name, sale_amt
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND sale_amt >= ALL ( SELECT sale_amt
                           FROM box_office
                          WHERE YEAR(release_date) = 2018
                            AND ranks BETWEEN 1 AND 3
                       );
--all은 가장 큰 값으로


SELECT ranks, movie_name, director
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND movie_name IN ( SELECT movie_name
                       FROM box_office
                      WHERE YEAR(release_date) = 2018
                   );

SELECT ranks, movie_name, director
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND (movie_name, director) IN ( SELECT movie_name, director
                                     FROM box_office
                                    WHERE YEAR(release_date) = 2018
                                 );


-- 칼럼명이 겹칠 수도 있다......


SELECT ranks, movie_name, release_date, sale_amt, rep_country
  FROM box_office
 WHERE YEAR(RELEASE_DATE) = 2019
   AND ranks BETWEEN 1 AND 100
   AND rep_country NOT IN ( SELECT rep_country
                              FROM box_office
                             WHERE YEAR(release_date) = 2018
                               AND ranks BETWEEN 1 AND 100
                          );


SELECT ranks, movie_name, director
  FROM box_office a
 WHERE YEAR(RELEASE_DATE) = 2019
   AND EXISTS ( SELECT 1 -- 실제 있느냐 없느냐 ? 판단하는 거
                  FROM box_office b
                 WHERE YEAR(release_date) = 2018
                   AND a.movie_name = b.movie_name
              );

SELECT ranks, movie_name, release_date, sale_amt, rep_country
  FROM box_office a
 WHERE YEAR(RELEASE_DATE) = 2019
   AND ranks BETWEEN 1 AND 100
   AND NOT EXISTS ( SELECT 1
                      FROM box_office b
                     WHERE YEAR(release_date) = 2018
                       AND ranks BETWEEN 1 AND 100
                       AND a.rep_country = b.rep_country
                  );
