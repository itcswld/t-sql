/*
WITH CHECK OPTION 子句一個選項，表示其建立的檢視表在新增、
更新和刪除記錄時，需要檢查完整性限制條件，如果不符合條件，
就顯示錯誤訊息。
-
CREATE VIEW 檢視表名稱 AS
SBLECT 指令敘述
WITH CHECK OPTION
-
*/
USE 教務系統 
GO
CREATE VIEW 生日_檢視_有主鍵 AS
SELECT 學號, 姓名, 生日 FROM 學生 
WITH CHECK OPTION

--VS 沒有主鍵
USE 教務系統 
GO
CREATE VIEW 生日_檢視_沒有主鍵 AS
SELECT 姓名, 生日 FROM 學生 
WITH CHECK OPTION


CREATE VIEW bday_view_key as 
SELECT no, name, bd
from student
WITH CHECK OPTION
GO
CREATE view bday_view_nokey AS
SELECT name, bd
FROM student
WITH CHECK OPTION





 































































