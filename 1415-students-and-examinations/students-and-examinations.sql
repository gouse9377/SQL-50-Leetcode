# Write your MySQL query statement below
select st.student_id , st.student_name , sub.subject_name ,count(e.subject_name ) as attended_exams
from Students st
cross join Subjects  sub
left join Examinations e
on st.student_id = e.student_id 
and e.subject_name  = sub.subject_name 
group by  st.student_id , st.student_name , sub.subject_name
order by st.student_id , st.student_name
