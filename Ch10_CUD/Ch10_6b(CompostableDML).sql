USE 教務系統 
GO
INSERT INTO 記錄業績目標 (客戶編號, 原始目標, 最新目標)
SELECT c.客戶編號, c.原始目標, c.最新目標
FROM 
(
   UPDATE 客戶業績
   SET 業績目標 = 業績目標 + (業績目標 * 0.20)
   OUTPUT
     Inserted.客戶編號 AS 客戶編號,
     Deleted.業績目標 AS 原始目標,
     Inserted.業績目標 AS 最新目標
) c
WHERE c.最新目標 > 200



insert into sales_record(cus_no, org_tgt, new_tgt)
select a.cus_no, a.org_tgt, a.new_tgt
FROM
( update sales
    set target = target + ([target]*0.2)
    OUTPUT
        inserted.cus_no as cus_no,
        deleted.target as org_tgt,
        inserted.[target] as new_tgt
) a
WHERE a.new_tgt > 200

























































