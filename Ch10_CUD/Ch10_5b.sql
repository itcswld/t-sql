USE 教務系統 
GO
CREATE TABLE [客戶業績] (
   [客戶編號] char(4) NOT NULL REFERENCES [客戶], 
   [業績目標] money NOT NULL
)
GO
INSERT INTO [客戶] 
VALUES
('C010','路人甲','07-22222222'),
('C011','江小魚','04-33333333')
GO
INSERT INTO [客戶業績] 
VALUES
('C001', 230),
('C002', 255),
('C003', 200)
GO
SELECT * FROM [客戶]
GO
SELECT * FROM [客戶業績]




























































