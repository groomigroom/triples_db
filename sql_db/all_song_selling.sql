create table all_song_selling
(
  title varchar(50),
  album varchar(50),
  판매_억단위 int
);

insert into all_song_selling
values
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
("Dreaming (by 유연, 유빈, 다현, 시온)", "Dreaming (by 유연, 유빈, 다현, 시온) (Inst.)", 45),

alter table all_song_selling
add column so_id int auto_increment primary key;

insert into all_song_selling(so_id)
values
(null);
