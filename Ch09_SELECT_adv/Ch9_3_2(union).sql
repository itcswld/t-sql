--取所有學生&員工的姓名
USE 教務系統 
GO
SELECT 姓名 FROM 學生 
--UNION : t1 + t2, 不重覆； UNION ALL: t1 + t2 , 重複
UNION [ALL]
SELECT 姓名 FROM 員工
ORDER by name

select name from student
union ALL
SELECT name from employee
order by name













































