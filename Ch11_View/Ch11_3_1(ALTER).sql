USE 教務系統 
GO
ALTER VIEW 學生聯絡_檢視 AS
SELECT 學號, 姓名, 性別, 電話 FROM 學生
GO
SELECT * FROM 學生聯絡_檢視

--rename
EXEC sp_rename 'obj_name', 'new_obj_name' 
EXEC sp_rename '學生聯絡_檢視', 'New學生聯絡_檢視' 


alter view studContacts_view AS
SELECT no, name, sex, phone
from student
GO
select * from studContacts_view


 































































