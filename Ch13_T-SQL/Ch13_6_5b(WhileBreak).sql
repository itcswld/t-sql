DECLARE @counter int = 1, @ttl INT =0
WHILE @counter <= 15
BEGIN
    set @ttl = @ttl + @counter
    PRINT 'counter : ' + CAST(@counter as char)
    set @counter = @counter + 1
    if @counter > 5 BREAK-- BREAK : 跳出迴圈
END
print '1 adds to 5 = ' + CAST(@ttl as char)






























































