create table all_song_album_one
(
  track int,
  title varchar(50),
  album varchar(50)
);


insert into all_song_album_one
values
(20, "Cry Baby (Inst.)", "4study4work4inst Vol.1"),
(21, "Speed Love (Inst.)", "4study4work4inst Vol.1"),
(22, "Invincible (Inst.)", "4study4work4inst Vol.1"),
(23, "Rhodanthe (Inst.)", "4study4work4inst Vol.1");



update all_song_album_one
set track = track + 2;

select *
from all_song_album_one;
/*
+-------+--------------------+------------------------+
| track | title              | album                  |
+-------+--------------------+------------------------+
|    22 | Cry Baby (Inst.)   | 4study4work4inst Vol.1 |
|    23 | Speed Love (Inst.) | 4study4work4inst Vol.1 |
|    24 | Invincible (Inst.) | 4study4work4inst Vol.1 |
|    25 | Rhodanthe (Inst.)  | 4study4work4inst Vol.1 |
+-------+--------------------+------------------------+
*/
