USE 教務系統 
GO
--
UPDATE 班級 SET 班級.上課時間 = '9:00am'
FROM 班級 INNER JOIN 教授 
ON 班級.教授編號 = 教授.教授編號 
WHERE 教授.科系 = 'CIS' AND 班級.教室 = '300-K'























































