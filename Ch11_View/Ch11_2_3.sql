USE 教務系統 
GO
CREATE VIEW 學生_學分_檢視 AS
SELECT 學分_檢視.*, 學生.姓名, 學生.電話 
FROM 學生, 學分_檢視 
WHERE 學生.學號 = 學分_檢視.學號
GO
SELECT * FROM 學生_學分_檢視

create  view student_credit_view AS
SELECT b.*, a.name, a.phone
from student a, credits_view b
WHERE a.[no] = b.no
GO
SELECT * from student_credit_view






























































