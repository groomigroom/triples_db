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
