USE 教務系統 
GO
--學號 = 'S002' 課程清單
SELECT 學號, 課程編號 FROM 班級 
GROUP BY 課程編號, 學號
HAVING 學號 = 'S002'

SELECT col1, col2 from tb1
group by col1, col2
having col1 = 's002'


select course_no , count(*) as ttl 
from class a 
group by course_no
having  COUNT(*) > 3





























