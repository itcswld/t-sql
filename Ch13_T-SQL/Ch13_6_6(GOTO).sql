DECLARE @id int = 0, @cat_id INT = 0
CREATE table book(id int, cat_id int)
WHILE @id < 2
BEGIN
    set @id = @id + 1
    WHILE @cat_id < 3
    BEGIN
        set @cat_id = @cat_id + 1
        if @id  = 1 and @cat_id = 3
            goto break_point
        insert into book VALUES(@id, @cat_id)
    END
    set @cat_id = 0
END

break_point:
select * from book