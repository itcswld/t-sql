BEGIN TRY
    SELECT 1/0
end TRY
BEGIN CATCH
    THROW
    --print error_message()
end CATCH
--selfdefine throw error
BEGIN TRY
    SELECT 1/0
end TRY
BEGIN CATCH
    THROW 5555, 'Divide by zero error encountered.', 1
end CATCH

BEGIN TRY
    SELECT 1/0
end TRY
BEGIN CATCH
    THROW
end CATCH


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






























































