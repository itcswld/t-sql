USE 教務系統 
GO
DECLARE @total int
SET @total = (SELECT COUNT(*) FROM 課程)
IF (SELECT COUNT(*) FROM 學生) >= 1
BEGIN
   PRINT '學生資料表有記錄資料!'
   -- RETURN 中斷批次
   RETURN --[整數運算式]
END
--以下不執行
ELSE
   PRINT '學生資料表沒有記錄資料!'
PRINT '課程數:' + CAST(@total AS char)




declare @ttl INT
set @ttl = (select count(*) from course)
if (select count(*) from student) >= 1
BEGIN
    PRINT'student table has record.'
    RETURN
END
ELSE
    PRINT 'student table is empty.'

PRINT 'number of course:' + CAST(@ttl as char)































































