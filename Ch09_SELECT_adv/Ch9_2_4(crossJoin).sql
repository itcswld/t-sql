USE 教務系統 
GO
SELECT 學生.學號, 學生.姓名, 班級.課程編號, 班級.教授編號
--cross join: rows count = t1 rows * t2 rows
FROM 學生 CROSS JOIN 班級 


SELECT COUNT(*) FROM student
SELECT COUNT(*) FROM class
SELECT a.no, a.name, b.course_no, b.prof_no
FROM student a CROSS JOIN class b
PRINT @@rowcount --8 * 21= 168






















































