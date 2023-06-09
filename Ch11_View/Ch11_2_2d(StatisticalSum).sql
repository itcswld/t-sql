USE 教務系統 
GO
CREATE VIEW 學分_檢視 AS
SELECT 學生.學號, COUNT(*) AS 修課數, 
       SUM(課程.學分) AS 學分數
FROM 學生, 課程, 班級 
WHERE 學生.學號 = 班級.學號
  AND 課程.課程編號 = 班級.課程編號 
GROUP BY 學生.學號
GO
SELECT * FROM 學分_檢視

create view credits_view AS
SELECT student.[no], COUNT(*) as amount_course, SUM(course.credits) as credits_view
FROM student, course, class
WHERE student.no = class.stud_no
    and course.no = class.course_no
GROUP BY student.[no]
GO
SELECT * FROM credits_view







 































































