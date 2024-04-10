# Write your MySQL query statement below
select s.student_id, s.student_name, sb.subject_name, (case when e.attended_exams is null then 0 else e.attended_exams end) as attended_exams
from students s
cross join subjects sb
left join 
    (select student_id, subject_name, count(*) as attended_exams 
    from examinations 
    group by student_id, subject_name) e
on s.student_id = e.student_id and sb.subject_name=e.subject_name
order by s.student_id, sb.subject_name;