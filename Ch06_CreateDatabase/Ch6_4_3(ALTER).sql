USE master
GO
ALTER DATABASE dbName ADD FILE
(  NAME = 'dbName_group_13',
   FILENAME = 'D:\Data\dbName_group_13.ndf',
   SIZE = 2MB,
   MAXSIZE=10MB,
   FILEGROWTH=1MB ) TO FILEGROUP dbName_groups

/*語法
ALTER DATABASE databaseName
MODIFY NAME = new_databaseName
| COLLATE
| ADD FILE (資料檔規格清單)
    [TO FILEGROUP filegroupName]
| ADD LOG FILE (交易記錄檔規格清單)
| REMOVE FILE 邏輯檔名
| MODIFY FILE 資料檔規格清單


| ADD FILEGROUP 
| MODIFY FILEGROUP
    READONLY | READWRITE | DEFAULT | NAME = new_filegroupName
| SET 選項屬性清單
[WITH ROLLBACK AFTER 等待n秒 [SECONDS]]
    ｜ ROLLBACK IMMEDIATE
    | NO_WAIT
*/