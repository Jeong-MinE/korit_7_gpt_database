select 
	(select 
		(select 
			course_name
		from
			course_tb as ct
		where
			ct.course_id = crit.course_id)
    from 
		course_registering_information_tb as crit
    where 
		crit.course_registering_information_tb = crt.course_regitstering_information_id) as course_name
from 
	course_registering_tb as crt
where 
	student_id = (select 
				student_id 
			  from 
				student_tb 
			  where 
				student_name = '백진우');