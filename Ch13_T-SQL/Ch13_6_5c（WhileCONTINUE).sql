DECLARE @counter int =0, @ttl int = 0
--1~100奇數和
WHILE @counter <= 99
BEGIN
   SET @counter = @counter + 1
   IF @counter % 2 = 0 CONTINUE
   SET @ttl = @ttl + @counter
END
PRINT '總和: ' + CAST(@ttl AS char)





























































