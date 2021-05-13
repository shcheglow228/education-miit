CREATE VIEW vBooks AS
	SELECT 
		l.ID
		,b.NameBook AS Название
		,a.AuthorName AS Автор
		,s.SubjectsType AS Тематика
		,p.[Name] AS Издатель
		,l.Series AS Отдел
		,b.DateOfIssue AS N'Дата издания'
		FROM [Location] AS l
			JOIN Book AS b
			ON l.BookID = b.ID
				JOIN Author AS a
				ON b.AuthorID = a.ID
					JOIN PublishingOffice AS p
					ON b.PublishingOfficeID = p.ID
						JOIN Subjects AS s
						ON b.SubjectsID = s.ID;