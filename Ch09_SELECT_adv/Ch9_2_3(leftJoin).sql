USE 教務系統 
GO
SELECT 教授.教授編號, 員工.姓名, 教授.職稱, 員工.薪水
--left join: 左全取， 右併左有的資料 (right table match不上的col 會有null產生)
FROM 教授 LEFT JOIN 員工 
ON 教授.身份證字號 = 員工.身份證字號

SELECT * FROM proffessor a
left JOIN employee b
ON b.id = a.emp_id






















































