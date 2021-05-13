CREATE PROC INSERTPublishingOffice (@Name NVARCHAR(50))
AS
DECLARE @ID INT
SELECT @ID = MAX(p.ID)
FROM [PublishingOffice] p
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [PublishingOffice] (ID, [Name])
		VALUES (@ID, @Name)
END