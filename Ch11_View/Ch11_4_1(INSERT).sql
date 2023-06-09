/*
。檢視表需要包含資料表的主鍵。

在 CREATE VIEW 指令的SELECT指令叙述不可包含 DISTINCT、聚合
函數、GROUP BY 和HAVING 子句，
如果有，檢視表就只能查詢，不能新增、更新和刪除記錄。

因為檢視表是從資料表所導出，
所以新增、更新和刪除操作仍然需要遵守來源資料表的完整性限制條件。
*/
USE 教務系統 
GO
INSERT INTO 生日_檢視_有主鍵 
VALUES ('S016', '江峰', '1999-10-01' )
GO
SELECT * FROM 學生


USE 教務系統 
GO
--。檢視表需要包含資料表的主鍵。沒有主鍵 不能新增記錄。
INSERT INTO 生日_檢視_沒有主鍵 
VALUES ('江峰峄', '1999-10-01')


insert into  bday_view_key
VALUES('S016','Eve','1988-01-01')
GO
SELECT * from bday_view_key
SELECT * from student

insert into  bday_view_nokey
VALUES('S016','Eve','1988-01-01')
--err: 'Column name or number of supplied values does not match table definition.'
select * from bday_view_nokey

insert into bday_view_nokey
VALUES('Eve', '1988-01-01')
--Cannot insert the value NULL into column 'no', table 'edusys.dbo.student'; column does not allow nulls. INSERT fails.







 































































