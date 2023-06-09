/*
檢視表索引(Indexed View)是指擁有唯一叢集索引的檢視表，
虛擬資料表的檢視表建立索引， 主要目的是為了增進檢視表的查詢效率，
特別針對大量資料的合併和統計摘要檢限表：
。合併檢視表：多資料表合併查詢。
•統計摘要檢視表：使用群組和聚合函數建立大量資料的統計查詢。

在實務上，只有當檢視表內容是不常變動的靜態大量資料，而且是經常會使用到的檢視表，我們才需考量是否替它建立檢視表索引。
對於資料經常更動（常常執行 DML 新增、更新或刪除記錄操作）的資料表，檢視表索引不僅無法增進杳詢效率，還可能隆低整體效能，
因為系統需要花費大量資源來維護索引檢視表。

如同計算欄位的索引，在建立檢視表引時，也有一些限制條件：
1.需要是檢視表的擁有者
2.欄位需要是精確的 （Precise），也就是沒有使用 float 或 real資料類型的欄位。
3.檢視表需要先建立唯一叢集索引後，才能建立其他非叢集索引。
4.如果建立檢視表的 SELECT 指令包含GROUP BY子句，在建立唯一叢集索引時，就只能選擇 GROUP BY 子句的欄位。

5.如同建立計算欄位索引，需要設定：
SET ANSI_NULLS, ANSI_PADDING,
    ANSI_WARNINGS, ARITHABORT,
    CONCAT_NULL_YIELDS_NULL,
    QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF

。在建立唯一叢集索引後，對於基底資料表執行 INSERT、UPDATE 和
DELETE 指令或查詢時，都需要設定前述7個 SQL 選項。

6.建立View時需要WITH SCHEMABINDING， 只能同一資料庫的資料表
7.來源Table需兩段式名稱dbo.tbName
8.View的SELECT子句不可使用的指令：
•SELECT 子句不可以使用「*」，且不能使用 TOP 和 DISTINCT。
•FROM 子句不可使用子查詢的衍生資料表 (Derived Tables )。也不能使用 OUTER JOIN 和 UNION。
•GROUP BY 子句不可使用 HAVING 子句、CUBE 和ROLLUP。
•不可以使用 ORDER BY 子句。
•不能使用資料集函數，例如：OPENROWSET()，和不可以使用全文檢索搜尋的 CONTAINS 和 FREETEXT。

•只能使用 SUMO和 COUNT BIG()聚合函數（與 COUNT()函數相同，只是傳回 bigint 資料類型），而且 SUM()函數的欄位不能是NULL 空值。
*/

--Indexed View
USE 教務系統 
GO
SET ANSI_NULLS, ANSI_PADDING,
    ANSI_WARNINGS, ARITHABORT,
    CONCAT_NULL_YIELDS_NULL,
    QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
GO
CREATE VIEW dbo.學生上課教室_檢視
WITH SCHEMABINDING
AS
SELECT 學生.學號, 班級.教室,COUNT_BIG(*) AS 上課數
FROM dbo.學生 INNER JOIN dbo.班級 
ON 學生.學號 = 班級.學號
GROUP BY 學生.學號, 班級.教室
GO 
SELECT * FROM 學生上課教室_檢視

--UNIQUE CLUSTERED INDEX
USE 教務系統 
GO
SET ANSI_NULLS, ANSI_PADDING,
    ANSI_WARNINGS, ARITHABORT,
    CONCAT_NULL_YIELDS_NULL,
    QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
GO
CREATE UNIQUE CLUSTERED INDEX 上課報表_索引
ON 學生上課教室_檢視(學號, 教室) 

-- NONCLUSTERED INDEX
USE 教務系統 
GO
SET ANSI_NULLS, ANSI_PADDING,
    ANSI_WARNINGS, ARITHABORT,
    CONCAT_NULL_YIELDS_NULL,
    QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
GO
CREATE NONCLUSTERED INDEX 教室_索引 
ON 學生上課教室_檢視(教室)
INCLUDE (學號, 上課數)
 






















 































































