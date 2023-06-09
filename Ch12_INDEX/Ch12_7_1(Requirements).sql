/*
計算欄位索引基本條件：
・ 擁有權需求（Ownership Requirements）：計算欄位的運算式不能使用其他資料表的欄位。

・ 決定性需求（Determinism Requirements ）：計算欄位的値是由運算式的欄
位值決定，只需輸入的欄位值相同，就會輸出相同結果。

・ 精確性需求 （Precision Requirements ）：計算欄位的運算式結果需要是精
確的 （Precise），也就是沒有使用 float 或 real 資料類型的欄位。

・ 資料類型需求（Data Type Requirements)：計算欄位的運算式結果不可以
是 text、ntext 和 image 資料類型，不過，運算式的組成欄位仍然可以使用
這些類型。

。SQL選項需求 (SQL Option Requirements）：在建立計算欄位的索引時，用 SET 指令指定：
NUMERIC ROUNDABORT OFF
ANSI NULLS ON
ANSI PADDING ON
ANSI WARNINGS ON
ARITHABORT ON
CONCAT NULL YIELDS NULL ON
QUOTED IDENTIFIER ON
*/
USE 教務系統 
GO
SET ANSI_NULLS, ANSI_PADDING,
    ANSI_WARNINGS, ARITHABORT,
    CONCAT_NULL_YIELDS_NULL,
    QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
GO
CREATE NONCLUSTERED INDEX 平均單價_索引 
ON 估價單(平均單價 ASC)
INCLUDE (產品編號)


USE 教務系統 
GO
SELECT 產品編號 FROM 估價單
WHERE 平均單價 BETWEEN 100.00 AND 200.00


















 































































