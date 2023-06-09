/*
資料行存放區索引
「資料行存放區索引」(Colurmnstore Index 全名為非叢集資料行存放區索引) 使用在唯讀查詢，而且無法更新索引
針對大型資料倉儲新增以欄位為基礎（Column-based）的索引，不使用“記錄”為單位（Row-based， 一頁多欄位)來儲存， 而改用“欄位”（一頁一欄位）為單位來儲存.

Data page 是使用欄位為單位儲存，每一個資料頁只有一個欄位比Row-based以記錄為單位儲存的索引（每一個資料真是多欄位的多筆記錄〉更利於壓縮和搜尋•
因為資料行存放區索引是使用 vertiPaq 壓縮技術，可以在記憶體中儲存龐大的壓箱資料來減少I/0 和搜尋時間，因為只有少量欄位的資料頁需要載入記憶體， 大幅提升資料查詢效率。


資料行存放區索引注意事項:
•一個資料表只能有一個資料行存放區索引。
。不能使用篩選條件，也不能使用 INCLUDE 關鍵字。
。索引欄位不可以是計算欄位。
。資料表將成為唯讀資料表。
•資料行存放區索引的索引欄位不支援 binary、varbinary、ntext 、text、
image varchar(max) • nvarchar(max) • uniqueidentifier rowversion '
timestamp 、sql_ variant、超過 18 位數的 decimal和 numeric 資料類型。
*/
USE 教務系統 
GO
SELECT * INTO 學生備份 
FROM 學生

USE 教務系統 
GO
CREATE COLUMNSTORE INDEX 學生資料行_索引
ON 學生備份 (姓名, 生日, 電話)


