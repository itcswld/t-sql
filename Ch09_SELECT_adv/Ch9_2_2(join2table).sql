--inner join 合併2個table 都存在的資料
USE 教務系統 
GO
SELECT 學生.學號, 學生.姓名, 班級.課程編號, 班級.教授編號
--//"INNER " 可略
FROM 學生 INNER JOIN 班級 
ON 學生.學號 = 班級.學號

--latest record date for each user
select a.pro_no, a.info, c.loc_no
from label a
inner join(
    select pro_no, MAX(upd_dt) as maxdate from label where pro_no in ('0011', '0010') group by pro_no
)b
on a.pro_no = b.pro_no and a.upd_dt = b .maxdate left JOIN stk c on c.pro_no = b.pro_no









































