USE 教務系統 
GO
CREATE VIEW 高薪員工聯絡_檢視 
WITH SCHEMABINDING --限制來源資料表， 不許使用ALTER指令修改，或是DROP刪除。
AS
SELECT 身份證字號, 姓名, 電話 FROM dbo.員工 --select 後不可使用order by | compute by | into
----err: "because name '*' is invalid for schema binding. Ans: must add "dbo." in front of table.
WHERE 薪水 > 50000
GO
SELECT * FROM 高薪員工聯絡_檢視

drop table employee
--"Could not drop object 'employee' because it is referenced by a FOREIGN KEY constraint"







 































































