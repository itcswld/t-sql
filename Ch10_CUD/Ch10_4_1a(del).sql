USE 教務系統 
GO
DELETE 課程備份2

--same as
insert into course_copy select * from course
TRUNCATE TABLE course_copy
select * from course_copy

































































