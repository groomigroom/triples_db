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
    song_rate?? double,
    listening_num int,
    showing_num int,
    showing_count integer,
    listening_num int,
    screen_num integer,
    listen_country varchar(50),
    countries varchar(50),
    composition varchar(50),
    song_type varchar(50),
    genre varchar(50),
    direc_time integer
);

insert into 부서1
values
(1, 1, 22, 2023, 2, "Sad Girls Schemin", "2026-06-01", 3.33, 33.333, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 2, 27, 2022, 2, "Peer", "2026-05-30", 2.23, 21.432, 15, 24, 27, 32, 12, "usa", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 3, 23, 2023, 5, "Baby Flower", "2026-05-29", 4.55, 44.224, 23, 42, 44, 55, 55, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 4, 26, 2023, 4, "Type of Girl", "2026-05-28", 5.57, 45.443, 15, 17, 15, 42, 43, "england", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 5, 25, 2022, 3, "Sleek", "2026-05-27", 6.78, 33.223, 13, 32, 62, 22, 15, "sweden", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 6, 32, 2023, 7, "I Like That", "2026-05-26", 5.56, 22.323, 10, 17, 12, 16, 16, "swiss", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 7, 33, 2022, 5, "Me Myself Mode", "2026-05-25", 3.43, 45.565, 12, 14, 14, 15, 18, "england", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 8, 43, 2022, 6, "Tokimetique", "2026-05-24", 1.11, 66.565, 28, 27, 26, 22, 10, "korea", "korea", "작곡", "은근히 신나는 곡", "dance", "00:02:45");
