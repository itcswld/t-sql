USE 教務系統 
GO
DELETE 班級
FROM 班級 INNER JOIN 教授 
ON 班級.教授編號 = 教授.教授編號 
WHERE 教授.科系 = 'CIS' AND 班級.教室 = '300-K'


delete class
from class a inner join proffessor b
on b.no = a.prof_no
WHERE b.dept = 'CIS' and a.room = '300-K'


 































































