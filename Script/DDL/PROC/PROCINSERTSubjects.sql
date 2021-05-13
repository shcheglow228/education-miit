CREATE PROC INSERTSubjects (@SubjectsType NVARCHAR(50))
AS
DECLARE @ID INT
SELECT @ID = MAX(s.ID)
FROM [Subjects] s
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Subjects] (ID, SubjectsType)
		VALUES (@ID, @SubjectsType)
END