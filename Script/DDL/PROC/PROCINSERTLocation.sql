CREATE PROC INSERTLocation (@BookID INT, @Series NVARCHAR(10))
AS
DECLARE @ID INT
SELECT @ID = MAX(l.ID)
FROM [Location] l
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Location] (ID, BookID, Series)
		VALUES (@ID, @BookID, @Series)
END