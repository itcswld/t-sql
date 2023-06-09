--Recursive CTE : 重複查詢資料表回傳的結果來取得最後的查詢結果， 也就是重複自己查自己
/*
WITH tempTableName [Colums]
AS (
    --Anchor Member
    SELECT ~
    UNION ALL
    --Recursive Member
    SELECT ~
    )
*/

--顯示每位員工其上層主管的階級層數
USE 教務系統 
GO
WITH 主管_遞迴
AS (
SELECT 員工字號, 姓名, 1 AS 階層
FROM 主管 WHERE 主管字號 IS NULL
UNION ALL
SELECT 主管.員工字號, 主管.姓名, 階層 + 1
FROM 主管 JOIN 主管_遞迴
ON 主管.主管字號 = 主管_遞迴.員工字號
)
SELECT * FROM 主管_遞迴
ORDER BY 階層, 員工字號


with recursive_sup
as(
    select emp_id, name, 1 AS level 
    from supervisor where sup_id is null
    UNION ALL
    select a.emp_id, a.name, b.level + 1 
    from supervisor a inner join recursive_sup b
    on a.sup_id = b.emp_id
)
SELECT * FROM recursive_sup
ORDER BY [level], emp_id





 































































