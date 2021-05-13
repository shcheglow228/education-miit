CREATE FUNCTION CulcNumBooksByAuthor (@Author NVARCHAR(100))
RETURNS INT
BEGIN
		DECLARE @NumberOfBooks INT
		SELECT @NumberOfBooks = COUNT(b.NameBook)
		FROM Book AS b
		JOIN Author AS a
		ON b.AuthorID = a.ID
		WHERE @Author = a.AuthorName 
		RETURN @NumberOfBooks
END;

