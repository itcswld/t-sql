USE 教務系統 
GO
--MERGE 可執行多個DML; 單1DML同時新增更新table
MERGE 客戶 AS c
USING 新客戶 AS nc
ON c.客戶編號 = nc.客戶編號
WHEN MATCHED THEN 
   UPDATE SET
      姓名 = nc.姓名,
      電話 = nc.電話
WHEN NOT MATCHED BY TARGET THEN 
   INSERT (客戶編號, 姓名, 電話) 
   VALUES(nc.客戶編號, nc.姓名, nc.電話)
;

/*
MERGE dstTB [AS dt]
USING srcTB [AS st]
ON 收尋條件
[WHEN MATCHED [AND 收尋條件] THEN
   {UPDATE | DELETE}]
-- BY TARGET : TARGET(destination) table
[WHEN NOT MATCHED [BY TARGET]  [AND 收尋條件]  THEN 
   {INSERT}]
-- BY SOURCE : source table
[WHEN MATCHED BY SOURCE  [AND 收尋條件]  THEN
   {UPDATE | DELETE}]
*/




























































