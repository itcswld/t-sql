USE 教務系統 
GO
DECLARE @balance int
SET @balance = 1000
SET @balance = @balance * 1.02
PRINT '總額:' + CAST(@balance AS char) --CAST(@var AS type) 轉換類別

DECLARE @balance INT
set @balance = 1000
select @balance = @balance * 1.02
print 'banlanc:' + CAST(@balance as char)



DECLARE @total int
SET @total = (SELECT SUM(學分) FROM 課程)
PRINT '學分數:' + CAST(@total AS char)

declare @ttl int
set @ttl = (select sum(credits) from course)
PRINT 'credit:' + CAST(@ttl as char)






 































































