insert into student_tb 
values
	(0, '김준일', 20, 0),
	(0, '김준이', 21, 0),
	(0, '김준삼', 20, null),
	(0, '김준사', 22, null),
	(0, '김준오', 21, 0);
    
#전체조회    
select * from student_tb; 


-- 줄바꿈 중요함  한줄로 쓰기말기
select
	student_id,
	student_name,
	student_age,
	student_score
from
	student_tb
where
	(student_age = 20
    or student_score is not null )
    and student_name = '김준일';

    
 update student_tb
 set
	student_score =20
where
	student_age =21;
    
    
#나이가 20살인 학생들의 점수를 전부 더하세요.
select
	student_age,
    sum(student_score) as total_score -- 셀렉트에서는 알리아스(as) 생략하지말기 헷갈림
from
	student_tb
    
--  where
-- 	student_age = 20

group by
	student_age

having 
	total_score =40;
    
-- 
select
	sum(student_score) as total_score 
from
	student_tb;
    
    
