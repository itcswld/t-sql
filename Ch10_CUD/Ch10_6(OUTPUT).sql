USE 教務系統 
GO
UPDATE 客戶 SET
    電話 = '0938000123'
-- OUTPUT: 比較更新前後找出可能的錯誤
OUTPUT
   Inserted.客戶編號, Inserted.姓名, 
   Inserted.電話 AS 更新後電話, 
   Deleted.電話 AS 更新前電話
WHERE 客戶編號 = 'C001'


update cus 
set tel='0938000123'
OUTPUT
    inserted.no, inserted.name,inserted.tel as after_upd,
    deleted.tel as previous
WHERE no = 'C001'





















































