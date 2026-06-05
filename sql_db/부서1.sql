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

select *
from 부서1;
