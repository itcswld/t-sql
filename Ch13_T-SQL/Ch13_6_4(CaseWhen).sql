USE 教務系統 
GO
SELECT 學號, 姓名, 
   CASE 性別
      WHEN '男' THEN 'Male'
      WHEN '女' THEN 'Female'
      ELSE 'N/A'
   END AS 學生性別
FROM 學生


select no, name,
    case sex 
        when '男' then 'M'
        when '女' then 'F'
        else 'N/A'
    end 
from student






 































































