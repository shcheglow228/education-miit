--5. Выдавать местонахождение данной книги.
SELECT
		l.Series
		,b.NameBook
		FROM [Location] AS l 
			JOIN Book AS b
			ON l.BookID = b.ID
			WHERE NameBook LIKE('Капитанская дочка');