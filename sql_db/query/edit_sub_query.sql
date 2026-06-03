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

/*
출력값
+--------------------+--------------+------+
| right(name_bar, 2) | nation       | s_id |
+--------------------+--------------+------+
| 지우               | 대한민국     |    3 |
| 채연               | 대한민국     |    4 |
| 유연               | 대한민국     |    5 |
| 수민               | 대한민국     |    6 |
| 나경               | 대한민국     |    7 |
| 유빈               | 대한민국     |    8 |
| 에데               | 일본         |    9 |
| 다현               | 대한민국     |   10 |
| 토네               | 일본         |   11 |
| 연지               | 대한민국     |   12 |
| 니엔               | 대만         |   13 |
| 소현               | 대한민국     |   14 |
| 신위               | 중국         |   15 |
| 마유               | 일본         |   16 |
| 린                 | 일본         |   17 |
| 주빈               | 대한민국     |   18 |
| 하연               | 대한민국     |   19 |
| 시온               | 대한민국     |   20 |
| 채원               | 대한민국     |   21 |
| 설린               | 태국         |   22 |
| 서아               | 대한민국     |   23 |
| 지연               | 대한민국     |   24 |
+--------------------+--------------+------+
*/

select nation, avg(birthy)
from triples_members
group by nation;

/*
출력값
+--------------+-------------+
| nation       | avg(birthy) |
+--------------+-------------+
| 대한민국     |   2005.2941 |
| 일본         |   2004.2500 |
| 대만         |   2003.0000 |
| 중국         |   2002.0000 |
| 태국         |   2006.0000 |
+--------------+-------------+
*/

select avg(birthy)
from triples_members
where s_id >= 15;

/*
출력값
+-------------+
| avg(birthy) |
+-------------+
|   2005.9000 |
+-------------+
*/

select a.s_id, a.name_bar,
(select b.unit
from triples_start_unit b
where a.s_id = b.s_id) start_unit
from triples_members a;

/*
출력값
+------+-----------+----------------------+
| s_id | name_bar  | start_unit           |
+------+-----------+----------------------+
|    1 | 윤서연    | +(KR)ystal Eyes      |
|    2 | 정혜린    | Acid Angel from Asia |
|    3 | 이지우    | +(KR)ystal Eyes      |
|    4 | 김채연    | +(KR)ystal Eyes      |
|    5 | 김유연    | Acid Angel from Asia |
|    6 | 김수민    | +(KR)ystal Eyes      |
|    7 | 김나경    | Acid Angel from Asia |
|    8 | 공유빈    | Acid Angel from Asia |
|    9 | 카에데    | LOVElution           |
|   10 | 서다현    | LOVElution           |
|   11 | 코토네    | EVOLution            |
|   12 | 곽연지    | EVOLution            |
|   13 | 니엔      | LOVElution           |
|   14 | 박소현    | LOVElution           |
|   15 | 신위      | LOVElution           |
|   16 | 마유      | EVOLution            |
|   17 | 린        | NXT                  |
|   18 | 주빈      | NXT                  |
|   19 | 정하연    | NXT                  |
|   20 | 박시온    | NXT                  |
|   21 | 김채원    | Glow                 |
|   22 | 설린      | Glow                 |
|   23 | 서아      | Glow                 |
|   24 | 지연      | Glow                 |
+------+-----------+----------------------+
*/

select a.s_id, a.name_bar, 
(select concat(b.name_bar, " / ", b.unit)
from triples_start_unit b
where a.s_id = b.s_id
)  unit_name
from triples_members a;

/*
출력값
+------+-----------+----------------------------------+
| s_id | name_bar  | unit_name                        |
+------+-----------+----------------------------------+
|    1 | 윤서연    | 윤서연 / +(KR)ystal Eyes         |
|    2 | 정혜린    | 정혜린 / Acid Angel from Asia    |
|    3 | 이지우    | 이지우 / +(KR)ystal Eyes         |
|    4 | 김채연    | 김채연 / +(KR)ystal Eyes         |
|    5 | 김유연    | 김유연 / Acid Angel from Asia    |
|    6 | 김수민    | 김수민 / +(KR)ystal Eyes         |
|    7 | 김나경    | 김나경 / Acid Angel from Asia    |
|    8 | 공유빈    | 공유빈 / Acid Angel from Asia    |
|    9 | 카에데    | 카에데 / LOVElution              |
|   10 | 서다현    | 서다현 / LOVElution              |
|   11 | 코토네    | 코토네 / EVOLution               |
|   12 | 곽연지    | 곽연지 / EVOLution               |
|   13 | 니엔      | 니엔 / LOVElution                |
|   14 | 박소현    | 박소현 / LOVElution              |
|   15 | 신위      | 신위 / LOVElution                |
|   16 | 마유      | 마유 / EVOLution                 |
|   17 | 린        | 린 / NXT                         |
|   18 | 주빈      | 주빈 / NXT                       |
|   19 | 정하연    | 정하연 / NXT                     |
|   20 | 박시온    | 박시온 / NXT                     |
|   21 | 김채원    | 김채원 / Glow                    |
|   22 | 설린      | 설린 / Glow                      |
|   23 | 서아      | 서아 / Glow                      |
|   24 | 지연      | 지연 / Glow                      |
+------+-----------+----------------------------------+
*/

--------------------########



스칼라 서브쿼리는 1행 1열이다.

SELECT a.dept_no, a.dept_name, b.emp_no
  FROM departments a
 INNER JOIN dept_manager b
    ON a.dept_no = b.dept_no
 WHERE SYSDATE() BETWEEN b.from_date AND b.to_date;



 SELECT a.dept_no, a.dept_name,
      ( SELECT b.emp_no
          FROM dept_manager b
         WHERE a.dept_no = b.dept_no
           AND SYSDATE() BETWEEN b.from_date AND b.to_date
      ) emp_no
  FROM departments a
 ORDER BY 1;


SELECT b.dept_no, b.emp_no, c.first_name, c.last_name
  FROM dept_manager b, 
       employees c
 WHERE b.emp_no = c.emp_no
   AND SYSDATE() BETWEEN b.from_date AND b.to_date;
-- 파생 테이블 from 다음에 나옴.




SELECT a.dept_no, a.dept_name,
       mng.emp_no, mng.first_name, mng.last_name
  FROM departments a, 
      ( SELECT b.dept_no, b.emp_no, c.first_name, c.last_name
          FROM dept_manager b, 
               employees c
         WHERE b.emp_no = c.emp_no
          AND SYSDATE() BETWEEN b.from_date AND b.to_date
      ) mng
 WHERE a.dept_no = mng.dept_no
 ORDER BY 1;


SELECT a.dept_no, a.dept_name,
       mng.emp_no, concat(mng.first_name, " ", mng.last_name)
  FROM departments a, 
      ( SELECT b.dept_no, b.emp_no, c.first_name, c.last_name
          FROM dept_manager b, 
               employees c
         WHERE b.emp_no = c.emp_no
          AND SYSDATE() BETWEEN b.from_date AND b.to_date
      ) mng
 WHERE a.dept_no = mng.dept_no
 ORDER BY 1;
-- 복잡한 쿼리 같은 경우에는 이렇게 쓰는게 더 효율적일 수 있다.
-- 바로 아래꺼랑 같은거.


뷰는 조인한 결과를 물리적인 테이블 형태로 만들어 놓은 거 ==> 가상 테이블.

SELECT a.dept_no, a.dept_name,
       b.emp_no, c.first_name, c.last_name
  FROM departments a, 
       dept_manager b, 
       employees c
 WHERE a.dept_no = b.dept_no
   AND b.emp_no  = c.emp_no
   AND SYSDATE() BETWEEN b.from_date AND b.to_date
 ORDER BY 1;

SELECT a.dept_no, a.dept_name,
       COUNT(*) cnt, SUM(c.salary) salary, AVG(c.salary) dept_avg
  FROM departments a, 
       dept_emp b, 
       salaries c
 WHERE a.dept_no = b.dept_no
   AND b.emp_no  = c.emp_no
   AND SYSDATE() BETWEEN b.from_date AND b.to_date
   AND SYSDATE() BETWEEN c.from_date AND c.to_date
 GROUP BY a.dept_no, a.dept_name
 ORDER BY 1;
-- 이거는 반드시 파생 테이블을 써야되는 거.


SELECT AVG(f.salary)
  FROM ( SELECT a.dept_no, a.dept_name,
                COUNT(*) cnt, SUM(c.salary) salary
           FROM departments a, 
                dept_emp b, 
                salaries c
          WHERE a.dept_no = b.dept_no
            AND b.emp_no  = c.emp_no
            AND SYSDATE() BETWEEN b.from_date AND b.to_date
            AND SYSDATE() BETWEEN c.from_date AND c.to_date
          GROUP BY a.dept_no, a.dept_name
       ) f ;



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
