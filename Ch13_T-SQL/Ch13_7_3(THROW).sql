create table test(id int primary key)
BEGIN TRY
    INSERT test VALUES(1)
    INSERT test VALUES(1)
END TRY
BEGIN CATCH
    THROW
END CATCH
drop table test
/*Msg 2627, Level 14, State 1, Line 4
Violation of PRIMARY KEY constraint 'PK__test__3213E83F441342FD'. Cannot insert duplicate key in object 'dbo.test'. The duplicate key value is (1).
*/