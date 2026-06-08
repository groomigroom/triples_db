create table all_song_album_one
(
  track int,
  title varchar(50),
  album varchar(50)
);


insert into all_song_album_one
values
(13, "Deja-Vu (Inst.)", "4study4work4inst Vol.1"),
(14, "Dimension (KRE Ver.) (Inst.)", "4study4work4inst Vol.1"),
(15, "Touch+ (Inst.)", "4study4work4inst Vol.1"),
(16, "Girls’ Capitalism (Inst.)", "4study4work4inst Vol.1"),
(17, "복합성 (Complexity) (Inst.)", "4study4work4inst Vol.1"),
(18, "Black Soul Dress (Inst.)", "4study4work4inst Vol.1"),
(19, "Seoul Sonyo Sound (Inst.)", "4study4work4inst Vol.1"),
(20, "Cry Baby (Inst.)", "4study4work4inst Vol.1"),
(21, "Speed Love (Inst.)", "4study4work4inst Vol.1"),
(22, "Invincible (Inst.)", "4study4work4inst Vol.1"),
(23, "Rhodanthe (Inst.)", "4study4work4inst Vol.1"),
(24, "Heavy Metal Wings (Inst.)", "4study4work4inst Vol.1"),
(25, "미열 37.5 (Inst.)", "4study4work4inst Vol.1"),
(26, "Moto Princess (Inst.)", "4study4work4inst Vol.1");


create table all_song_album_two
(
  track int,
  title varchar(50),
  album varchar(50)
);


insert into all_song_album_two
values
(20, "Cry Baby (Inst.)", "4study4work4inst Vol.1"),
(21, "Speed Love (Inst.)", "4study4work4inst Vol.1"),
(22, "Invincible (Inst.)", "4study4work4inst Vol.1"),
(23, "Rhodanthe (Inst.)", "4study4work4inst Vol.1"),
(24, "Heavy Metal Wings (Inst.)", "4study4work4inst Vol.1"),
(25, "미열 37.5 (Inst.)", "4study4work4inst Vol.1"),
(26, "Moto Princess (Inst.)", "4study4work4inst Vol.1"),
(27, "Oui (Inst.)", "4study4work4inst Vol.1"),
(28, "Enhanced Flower (Inst.)", "4study4work4inst Vol.1"),
(29, "Just Do It (Inst.)", "4study4work4inst Vol.1"),
(30, "Door (Inst.)", "4study4work4inst Vol.1"),
(31, "첫 이별 (Farewell My First) (Inst.)", "4study4work4inst Vol.1"),
(1, "Door", "Aria <Structure Of Sadness>"),
(2, "첫 이별 (Farewell My First)", "Aria <Structure Of Sadness>"),
(1, "Just Do It", "NXT <Just Do It>"),
(1, "＆#10209;", "EVOLution <⟡>"),
(2, "Invincible", "EVOLution <⟡>"),
(3, "Rhodanthe", "EVOLution <⟡>"),
(4, "Heavy Metal Wings", "EVOLution <⟡>"),
(5, "미열 37.5", "EVOLution <⟡>"),
(6, "Moto Princess", "EVOLution <⟡>"),
(7, "Oui", "EVOLution <⟡>"),
(8, "Enhanced Flower", "EVOLution <⟡>"),
(1, "&#8576;", "LOVElution <ↀ>"),
(2, "Girls’ Capitalism", "LOVElution <ↀ>"),
(3, "복합성 (Complexity)", "LOVElution <ↀ>"),
(4, "Black Soul Dress", "LOVElution <ↀ>"),
(5, "Seoul Sonyo Sound", "LOVElution <ↀ>");



select *
from all_song_album_one
union
select *
from all_song_album_two;
/*
+-------+----------------------------------------+-----------------------------+
| track | title                                  | album                       |
+-------+----------------------------------------+-----------------------------+
|    13 | Deja-Vu (Inst.)                        | 4study4work4inst Vol.1      |
|    14 | Dimension (KRE Ver.) (Inst.)           | 4study4work4inst Vol.1      |
|    15 | Touch+ (Inst.)                         | 4study4work4inst Vol.1      |
|    16 | Girls’ Capitalism (Inst.)              | 4study4work4inst Vol.1      |
|    17 | 복합성 (Complexity) (Inst.)            | 4study4work4inst Vol.1      |
|    18 | Black Soul Dress (Inst.)               | 4study4work4inst Vol.1      |
|    19 | Seoul Sonyo Sound (Inst.)              | 4study4work4inst Vol.1      |
|    20 | Cry Baby (Inst.)                       | 4study4work4inst Vol.1      |
|    21 | Speed Love (Inst.)                     | 4study4work4inst Vol.1      |
|    22 | Invincible (Inst.)                     | 4study4work4inst Vol.1      |
|    23 | Rhodanthe (Inst.)                      | 4study4work4inst Vol.1      |
|    24 | Heavy Metal Wings (Inst.)              | 4study4work4inst Vol.1      |
|    25 | 미열 37.5 (Inst.)                      | 4study4work4inst Vol.1      |
|    26 | Moto Princess (Inst.)                  | 4study4work4inst Vol.1      |
|    27 | Oui (Inst.)                            | 4study4work4inst Vol.1      |
|    28 | Enhanced Flower (Inst.)                | 4study4work4inst Vol.1      |
|    29 | Just Do It (Inst.)                     | 4study4work4inst Vol.1      |
|    30 | Door (Inst.)                           | 4study4work4inst Vol.1      |
|    31 | 첫 이별 (Farewell My First) (Inst.)    | 4study4work4inst Vol.1      |
|     1 | Door                                   | Aria <Structure Of Sadness> |
|     2 | 첫 이별 (Farewell My First)            | Aria <Structure Of Sadness> |
|     1 | Just Do It                             | NXT <Just Do It>            |
|     1 | ＆#10209;                              | EVOLution <⟡>               |
|     2 | Invincible                             | EVOLution <⟡>               |
|     3 | Rhodanthe                              | EVOLution <⟡>               |
|     4 | Heavy Metal Wings                      | EVOLution <⟡>               |
|     5 | 미열 37.5                              | EVOLution <⟡>               |
|     6 | Moto Princess                          | EVOLution <⟡>               |
|     7 | Oui                                    | EVOLution <⟡>               |
|     8 | Enhanced Flower                        | EVOLution <⟡>               |
|     1 | &#8576;                                | LOVElution <ↀ>              |
|     2 | Girls’ Capitalism                      | LOVElution <ↀ>              |
|     3 | 복합성 (Complexity)                    | LOVElution <ↀ>              |
|     4 | Black Soul Dress                       | LOVElution <ↀ>              |
|     5 | Seoul Sonyo Sound                      | LOVElution <ↀ>              |
+-------+----------------------------------------+-----------------------------+
*/
