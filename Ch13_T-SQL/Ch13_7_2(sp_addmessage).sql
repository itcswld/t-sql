USE 教務系統 
GO
--sp_addmessage 自定義訊息編號（ >50000), 嚴重等級（1～25， 19～25admin auth), 錯誤訊息
EXEC sp_addmessage 55555, 5 ,'Error! grade < 0!',
       @lang = 'us_english'
GO
--you must add the us_english version of this message before you can add the '繁體中文' version.
EXEC sp_addmessage 55555, 5 ,'成績為負數的錯誤!', 
       @lang = '繁體中文'
GO
BEGIN TRY
   RAISERROR (55555, 17, 10)--（>5000Number,1~25Severity,1~127自定義State)
END TRY
--Severtity > 10 才會catch
BEGIN CATCH
   SELECT ERROR_NUMBER() AS ErrorNumber, 
           ERROR_SEVERITY() AS ErrorSeverity, 
           ERROR_STATE() AS ErrorState,
           ERROR_PROCEDURE() AS ErrorProcedure,
           ERROR_LINE() AS ErrorLine, 
           ERROR_MESSAGE() AS ErrorMessage
END CATCH 





























































