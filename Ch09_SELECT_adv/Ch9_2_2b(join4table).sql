USE 教務系統 
GO
SELECT 學生.學號, 學生.姓名, 課程.*, 教授.*
FROM 教授 t1 INNER JOIN
(課程 t2 INNER JOIN 
(學生  t3 INNER JOIN 班級  t4 ON 學生.學號 = 班級.學號) 
ON 班級.課程編號 = 課程.課程編號) 
ON 班級.教授編號 = 教授.教授編號


select *
from proffessor a
inner join(
    course b inner join(
        student c inner join class d on c.[no] = d.stud_no
    )on d.course_no = b.[no]
)on a.no = d.prof_no









































