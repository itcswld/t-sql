BEGIN TRY
   SELECT 1/0   -- 除以零的錯誤
END TRY
BEGIN CATCH
   THROW 51000, '除以零的錯誤....', 1
END CATCH 



CREATE TABLE tb1 (
    col1 INT,
    col2 INT CHECK(col2 is not null)
)
BEGIN TRY
 INSERT into tb1 values(1, null)
END TRY
BEGIN CATCH
THROW 55555, 'col不可空', 1
END CATCH






























































