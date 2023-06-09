--CTE(Common Table Expression)
/*
WITH tempTableName [Colums]
AS (
    SELECT ~
)
[, tempTableName [Colums]]
    AS (
        SELECT ~
    )
]
*/

--合併5個tables
USE 教務系統 
GO
--建立一至多個temp table
WITH 教授_員工 --ttb
AS (
SELECT 教授.*, 員工.姓名
FROM 教授  INNER JOIN 員工 --t1 , t2
ON 教授.身份證字號 = 員工.身份證字號
)
SELECT 學生.學號, 學生.姓名, 課程.*, 教授_員工.*
FROM 教授_員工 INNER JOIN --ttb
(課程 INNER JOIN --t3
(學生 INNER JOIN 班級  on 學生.學號 = 班級.學號) --t4, t5
ON 班級.課程編號 = 課程.課程編號) 
ON 班級.教授編號 = 教授_員工.教授編號

--結果同Ch9_2_2b(join4table).sql
USE 教務系統 
GO
SELECT 學生.學號, 學生.姓名, 課程.*, 教授.*
FROM 教授 INNER JOIN
(課程 INNER JOIN 
(學生 INNER JOIN 班級 ON 學生.學號 = 班級.學號) 
ON 班級.課程編號 = 課程.課程編號) 
ON 班級.教授編號 = 教授.教授編號

--same as:
WITH prof_emp
AS(
    SELECT a.*, b.name
    FROM proffessor a INNER join employee b
    on b.id = a.emp_id
)
SELECT *
FROM prof_emp c INNER JOIN
(course d INNER join
(student e INNER join class f on f.stud_no = e.[no])
 on f.course_no = d.[no])
ON f.prof_no = c.[no]
PRINT @@rowcount
--same as:
WITH prof_emp
AS(
    SELECT a.*, b.name
    FROM proffessor a INNER join employee b
    on b.id = a.emp_id
)
, stud_class
AS(
select * from student e INNER join class f on f.stud_no = e.[no]
)
SELECT * from prof_emp c INNER JOIN
(course d INNER join stud_class e on e.course_no = d.[no])
ON e.prof_no = c.[no]




















 































































