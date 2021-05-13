CREATE PROC INSERTBook (@NameBook NVARCHAR(100), @AuthorID INT, @PublishingOfficeID INT, @SubjectsID INT, @DateOfIssue DATE)
AS
DECLARE @ID INT
SELECT @ID = MAX(b.ID)
FROM [Book] b
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Book] (ID, NameBook, AuthorID, PublishingOfficeID, SubjectsID, DateOfIssue)
		VALUES (@ID, @NameBook, @AuthorID, @PublishingOfficeID, @SubjectsID, @DateOfIssue)
END