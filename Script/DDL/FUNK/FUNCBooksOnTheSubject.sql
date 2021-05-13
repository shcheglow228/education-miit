CREATE FUNCTION BooksOnTheSubject(@Subjects VARCHAR(50))
RETURNS TABLE AS
RETURN
	(SELECT
		l.ID
		,b.NameBook AS Название
		,a.AuthorName AS Автор
		,s.SubjectsType AS Тематика
		,l.Series AS Отдел
		FROM [Location] AS l
			JOIN Book AS b
			ON l.BookID = b.ID
				JOIN Author AS a
				ON b.AuthorID = a.ID
					JOIN Subjects AS s
					ON b.SubjectsID = s.ID
					WHERE @Subjects = s.SubjectsType);
