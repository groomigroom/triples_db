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

create table triples_start_unit
(
    s_id integer primary key,
    name_bar varchar(50),
    unit varchar(50)
);

insert into triples_start_unit
values
(1, "윤서연", "+(KR)ystal Eyes"),
(2, "정혜린", "Acid Angel from Asia"),
(3, "이지우", "+(KR)ystal Eyes"),
(4, "김채연", "+(KR)ystal Eyes"),
(5, "김유연", "Acid Angel from Asia"),
(6, "김수민", "+(KR)ystal Eyes"),
(7, "김나경", "Acid Angel from Asia"),
(8, "공유빈", "Acid Angel from Asia"),
(9, "카에데", "LOVElution"),
(10, "서다현", "LOVElution"),
(11, "코토네", "EVOLution"),
(12, "곽연지", "EVOLution"),
(13, "니엔", "LOVElution"),
(14, "박소현", "LOVElution"),
(15, "신위", "LOVElution"),
(16, "마유", "EVOLution"),
(17, "린", "NXT"),
(18, "주빈", "NXT"),
(19, "정하연", "NXT"),
(20, "박시온", "NXT"),
(21, "김채원", "Glow"),
(22, "설린", "Glow"),
(23, "서아", "Glow"),
(24, "지연", "Glow");

select right(name_bar, 2), nation, s_id
from triples_members
where s_id >= 3
order by s_id;

select nation, avg(birthy)
from triples_members
group by nation;

select avg(birthy)
from triples_members
where s_id >= 15;

select a.s_id, a.name_bar,
(select b.unit
from triples_start_unit b
where a.s_id = b.s_id) start_unit
from triples_members a;

-- 스칼라 서브쿼리부터 다시 보기
