USE 教務系統 
GO
UPDATE 生日_檢視_有主鍵 
SET 生日 = '2000-10-01' WHERE 學號 = 'S016'
GO
SELECT * FROM 學生

USE 教務系統 
GO
UPDATE 生日_檢視_沒有主鍵 
SET 生日 = '1998-10-01' WHERE 姓名 = '江峰' 
GO
SELECT * FROM 學生
/*當執行上述 UPDATE 指令，沒有主鍵仍然會更新【學生】資料表的記錄，
理論上，
資料庫管理系統應該避免在沒有主鍵的檢視表執行更新操作。
*/

update  bday_view_key
set bd = '1988-02-02'
WHERE no='S016'
GO
update  bday_view_nokey
set bd = '1988-03-03'
WHERE name='Eve'









 































































