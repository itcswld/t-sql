USE 教務系統 
GO
SELECT * FROM 學生 
WHERE EXISTS
(SELECT * FROM 班級 
WHERE 課程編號 = 'CS222' AND 學生.學號 = 班級.學號)

SELECT * FROM class b WHERE b.course_no = 'CS222'

SELECT * FROM student a
WHERE EXISTS
(SELECT * FROM class b WHERE b.course_no = 'CS222' AND b.stud_no = a.[no])
--same as
SELECT distinct a.* FROM student a, class b
WHERE (b.stud_no = a.[no] and b.course_no = 'CS222')















































