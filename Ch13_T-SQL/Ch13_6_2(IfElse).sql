USE 教務系統 
GO
DECLARE @height int
SET @height = 125
IF @height <= 120 
   PRINT '半票'
IF @height > 120 
BEGIN
   PRINT '全票'
   PRINT 'height > 120'
END

declare @h INT
set @h = 125
if @h <= 120
    print 'half fare'
if @h > 120
begin
    print 'full fare'
end





 































































