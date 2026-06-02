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
(1, 1, 22, 2023, 2, "곡이름", "곡등록날짜", 3.33, 33.333, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 2, 27, 2022, 2, "곡이름", "곡등록날짜", 2.23, 21.432, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 3, 23, 데뷔년도(year)로, 5, "곡이름", "곡등록날짜", 4.55, 44.224, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 4, 26, 데뷔년도(year)로, 4, "곡이름", "곡등록날짜", 5.57, 45.443, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 5, 25, 데뷔년도(year)로, 3, "곡이름", "곡등록날짜", 6.78, 33.223, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 6, 32, 데뷔년도(year)로, 7, "곡이름", "곡등록날짜", 5.56, 22.323, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 7, 33, 데뷔년도(year)로, 5, "곡이름", "곡등록날짜", 3.43, 45.565, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로),
(1, 8, 43, 데뷔년도(year)로, 6, "곡이름", "곡등록날짜", 1.11, 66.565, 27, 28, 22, 41, 22, "korea", "korea", "작곡", "곡타입", "장르", 곡시간분으로);
