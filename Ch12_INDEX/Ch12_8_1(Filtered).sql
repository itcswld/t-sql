/*
12-8-1 篩選索引
篩選索引（Filtered Index）是一種擁有條件的索引，不會將索引欄位的所有記錄都建立索引，只有哪些符合條件的記錄才會建立索引。
使用 WHERE 子句來指定建立篩選索引的篩選條件， “資料行存放區索引”可提昇資料倉儲 OLAP 的查詢效能。
實務上，篩選索引最常是使用在建立疏鬆欄位的索引。
*/

USE 教務系統 
GO
CREATE TABLE 廠商名單 (
   廠商編號  int    NOT NULL IDENTITY PRIMARY KEY, 
   廠商名稱  varchar(100),
   廠商類型  tinyint  NOT NULL,
   分公司數  int     SPARSE
)
GO
CREATE NONCLUSTERED INDEX 分公司數_索引
ON 廠商名單(分公司數)
WHERE 廠商類型 = 3



















 































































