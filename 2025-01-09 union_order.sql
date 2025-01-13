# select

select
	*
from
	student_tb;
    
select 
	student_name,
    student_year
from
	student_tb;
    
# where조건
select 
	*
from
	student_tb
where
#	 student_year = 3 or student_year = 4; 
--  student_year in (3, 4)
--   student_year > 2 and student_year < 5;
--   student_year >= 3 and studnet_year <= 4;
    student_year between 2 and 4;
    
select 
	10 as num,
    20 as num2,
    '이름' as name
-- select에서 유일한 행 추가 방법(데이터가 합쳐짐) 단, 값이 같으면 중복으로 추가 되지 x
-- union 
-- 중복 신경쓰지 않고 결과 도출
-- 주의사항: 컴럼의 개수가 같아야함.
union all
select 
	10 as num,
    20 as num2,
    '이름' as name

select
	1 as id,
	'월' as day
union all
select
	2 as id,
	'화' as day
select
	3 as id,
	'수' as day;
    
select 
	1 as number,
	student_name
from
	student_tb
union
select
	5 as number,
	instructor_name
from
	instructor_tb;
    
select
	student_name
from
	student_tb;

select 
	row_number() over(order by name) as 'index'
from
	(select 
		student_name as name
	from
		student_tb
	union
    select
		instructor_name
	from
		instructor_tb) as name_tb;
	
    
        
	select
		*
	from
		student_tb
	order by
		student_year desc,
        student_name;

-- 석차관련 : rank() - 공동 석차가 있을 시 그 이후 석차가 채워진다.(ex 공동 1등 이 있다면 이후 등수는 3등 ~)
-- dense_rank: 비어있는 석차 없이 다 채움(ex 공동 1등이 있더라도 이후 등수는 2등 ~)
select
	row_number() over(order by `id`) as num,
	name_tb.*
from
	(select
		course_id as `id`,
		course_name as `name`
	from 
		course_tb
	union
    select
		major_id,
		major_name
	from
		major_tb) as name;
	
	# where 와일드 카드(like)
-- % : 전체 기준
--  %? : 제일 뒷 글자 일치
--  %?% : 사이 글자 일치
-- ?% : 앞 글자 일치
-- _ : 한글자 기준
--  _?_ : 사이 한 글자 일치
# _? : 마지막 한 글자 일치
-- ?_ : 첫 한 글자 일치 
    select
		*
	from
		instructor_tb
	where
		instructor_name like '_교_'; 
    
	
    
    
    
    
    
    
    
    
    
    