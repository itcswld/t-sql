USE 教務系統 
GO
DECLARE @counter int, @total int
SET @total = 0
SET @counter = 1
WHILE @counter <= 15
BEGIN
   SET @total = @total + @counter
   PRINT '計數: ' + CAST(@counter AS char)
   SET @counter = @counter + 1
   IF @counter > 5 BREAK -- BREAK : 跳出迴圈
END
PRINT '1 加到 5 = ' + CAST(@total AS char)
































































