USE 教務系統 
GO
UPDATE 課程備份
SET 學分 = 4
--將班級上課學生超過3位的課程改為4學分
FROM (SELECT 課程編號, COUNT(*) AS 學生數
FROM 班級 GROUP BY 課程編號) AS 上課
WHERE 課程備份.課程編號 = 上課.課程編號
    AND 上課.學生數 > 3



select course_no , count(*) as ttl from class a group by course_no having  COUNT(*) > 3

update course_copy
set credits = 4
FROM (select course_no, COUNT(*) as ttl from class group by course_no) as attend
WHERE course_copy.[no] = attend.course_no and attend.ttl > 3

SELECT * from course_copy WHERE credits >= 4








