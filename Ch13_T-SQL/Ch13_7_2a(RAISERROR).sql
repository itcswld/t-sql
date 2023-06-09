USE 教務系統 
GO
BEGIN TRY
   RAISERROR (55555, 17, 10)--（>5000 error_number | 'error message',1~25等級,1~127自定義狀態碼)
END TRY
BEGIN CATCH
   SELECT ERROR_NUMBER() AS ErrorNumber, 
           ERROR_SEVERITY() AS ErrorSeverity, 
           ERROR_STATE() AS ErrorState,
           ERROR_PROCEDURE() AS ErrorProcedure,
           ERROR_LINE() AS ErrorLine, 
           ERROR_MESSAGE() AS ErrorMessage
END CATCH 

CREATE PROCEDURE stkchk
AS
BEGIN
    declare @oldStockQty int = 0;
    declare @TradeQty int =2;	
    RAISERROR ('現有庫存數量：%d ，不足賣出數量：%d',15, 1, @oldStockQty, @TradeQty)
    RETURN 1 
END
/*
Msg 50000, Level 15, State 1, Procedure usp_Test, Line 6
現有庫存數量：0 ，不足賣出數量：2
*/

EXEC stkchk
GO

DECLARE @needInv VARCHAR(1) = 'N', @price  INT = 10
IF @needInv = 'N' AND @price != 0
BEGIN
RAISERROR( '不附發票不可有金額', 15, 1)
END
PRINT @@ERROR
GO
-- Msg 50000, Level 15, State 1, Line 4
-- 不附發票不可有金額
-- 50000

























































