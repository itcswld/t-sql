USE 教務系統 
GO
CREATE VIEW 學生_班級_檢視 AS
SELECT 學生.學號, 學生.姓名, 課程.*, 教授.*
FROM 教授 INNER JOIN
(課程 INNER JOIN 
(學生 INNER JOIN 班級 ON 學生.學號 = 班級.學號) 
ON 班級.課程編號 = 課程.課程編號) 
ON 班級.教授編號 = 教授.教授編號
GO
SELECT * FROM 學生_班級_檢視


create view stud_class_view AS
 select c.no, c.name, b.credits, b.[no] as course_no, b.title,[a].[no] as prof_no,
 [a].[job],
 [a].[dept],
 [a].[emp_id]
 from proffessor a INNER JOIN
 ( course b inner join
 (student c inner join class d on d.stud_no = c.no )
 on d.course_no = b.[no]
 )on d.prof_no = a.no
GO
select * from stud_class_view






 































































