USE 教務系統 
GO
SELECT 身份證字號, 姓名, 薪水
FROM 員工 
ORDER BY 身份證字號
--Offset: 第N筆後的資料; ROWS | ROW
OFFSET 3 ROWS
FETCH NEXT 1 ROWS ONLY
GO

--same way:
select tb.*
from tb
order by col1
offset 1 fetch next 1 row only;

--ROW_NUMBER() OVER(ORDER BY ): 第N筆資料
with tmpTB AS
(
   SELECT col1, ROW_NUMBER() OVER (ORDER BY col1 ASC) AS RowNum from tb1
)
SELECT * FROM tmpTB
WHERE RowNum = 1

SELECT col1, ROW_NUMBER() OVER (ORDER BY col1 ASC) AS RowNum from tb1
























































