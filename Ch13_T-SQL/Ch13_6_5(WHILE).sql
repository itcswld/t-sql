USE 教務系統 
GO
DECLARE @counter int, @total int
SET @counter = 1
SET @total = 0
--1~5總和
WHILE @counter <= 5
BEGIN
   SET @total = @total + @counter
   PRINT '計數: ' + CAST(@counter AS char)
   SET @counter = @counter + 1
END
PRINT '1 加到 5 = ' + CAST(@total AS char)

declare @counter int, @ttl INT
set @counter = 1
set @ttl = 0
WHILE @counter <= 5
    BEGIN
        SET @ttl = @ttl + @counter
        PRINT 'counter: ' + CAST(@counter as char)
        set @counter = @counter + 1
    END
PRINT '1 adds to 5 =' + CAST(@ttl as CHAR)









 































































