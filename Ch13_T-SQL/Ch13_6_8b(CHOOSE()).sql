DECLARE @type int
SET @type = 2
DECLARE @result varchar(10)
SET @result = CHOOSE ( @type, '全票', '半票', '敬老票', '免票')
PRINT @result


DECLARE @type int = 2, @result VARCHAR(10)
SET @result = choose(@type, 'full fare','half fare')
print @result






























































