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







 































































