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
