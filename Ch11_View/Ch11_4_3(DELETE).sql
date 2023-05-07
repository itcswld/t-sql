USE 教務系統 
GO

ALTER TABLE [class]
  ADD FOREIGN KEY([stud_no]) REFERENCES [student] ([no])
GO
ALTER TABLE [class] 
  ADD FOREIGN KEY([course_no]) REFERENCES [course] ([no])  
GO
ALTER TABLE [class] 
  ADD FOREIGN KEY([prof_no]) REFERENCES [proffessor] ([no])   
GO

DELETE FROM 生日_檢視_有主鍵
WHERE 學號='S016'
GO
SELECT * FROM 學生

USE 教務系統 
GO
DELETE 生日_檢視_沒有主鍵 
WHERE 姓名='陳會安'
GO
SELECT * FROM 學生
/*仍然會刪除沒有主鍵 【學生】資料表的記錄，理論上，
資料庫管理采統應該避免在沒有主鍵的檢視表執行刪除操作。
--不過，當我們執行時會產生錯誤，這是因為外來鍵衝突。 
*/



delete bday_view_nokey
WHERE name='Eve'
GO
select * from student






 































































