USE 教務系統 
GO
DECLARE @type varchar(12), @age int
SET @age = 25
SET @type = 
   CASE 
      WHEN @age < 15 THEN '小孩'
      WHEN @age < 60 THEN '成人'
      WHEN @age < 100 THEN '老人'
      ELSE 'Free'
   END
PRINT @type

declare @type varchar(12), @age INT
set @age = 25
set @type =
    case
        when @age < 15 then 'kid'
        when @age < 60 then 'adult'
        when @age <100 then 'elder'
        else 'free'
    END
print @type







 































































