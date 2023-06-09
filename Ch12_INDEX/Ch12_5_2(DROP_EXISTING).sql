/*
PAD INDEX : 索引頁預留空間
FILLFACTOR = X : 填滿因數
IGNORE DUP KEY : 忽略重複值
STATISTICS NORECOMPUTE : 不重新計算統計資料
DROP EXISTING : 重建存在的索引，即卸除目前的索引後，重新建立
*/
USE 教務系統 
GO
CREATE UNIQUE INDEX 員工姓名_索引 
ON 員工(姓名)
INCLUDE (電話, 薪水, 城市) --欄位清單
-- IGNORE DUP KEY : 忽略重複值 & DROP EXISTING : 重建存在的索引，即卸除目前的索引後，重新建立
WITH IGNORE_DUP_KEY, DROP_EXISTING --一定需要存在同名的index















 































































