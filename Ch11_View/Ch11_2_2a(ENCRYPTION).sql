USE 教務系統  
GO
CREATE VIEW 高薪員工_檢視
WITH ENCRYPTION --加密View定義，不是加密內容
AS
SELECT * FROM 員工
WHERE 薪水 > 50000
GO
SELECT * FROM 高薪員工_檢視


create view hightSalaryEmployee_view
WITH encryption
AS
SELECT * from employee
WHERE salary > 50000
GO
SELECT * from hightSalaryEmployee_view




 































































