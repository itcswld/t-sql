USE 教務系統 
GO
SELECT * FROM 課程 
WHERE EXISTS
(SELECT * FROM 班級 
WHERE (教室='221-S' OR 教室='100-M')
    AND 課程.課程編號=班級.課程編號)
    
--not exists
SELECT * FROM course a
WHERE not EXISTS
(SELECT * FROM class b WHERE b.course_no = a.[no])

SELECT * FROM course a
WHERE EXISTS
(SELECT * FROM class b WHERE b.course_no = a.[no])


















































