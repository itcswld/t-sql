USE 教務系統 
GO
CREATE UNIQUE INDEX 名稱學分_索引 
ON 課程(名稱, 學分) --複合索引

--How do I create a unique constraint that also allows nulls?
CREATE UNIQUE NONCLUSTERED INDEX idx_col2_notnull
ON tbName(col2)
WHERE col2 IS NOT NULL;














 































































