declare @math int = 65, @eng int = 70, @result VARCHAR(20)
set @result = IIF(@math > @eng, 'math is higher', 'english is higher')
PRINT @result