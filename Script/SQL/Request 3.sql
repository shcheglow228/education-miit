--3. Выдавать список книг по данной тематике.
SELECT
		s.SubjectsType
		,b.NameBook
		FROM Book AS b
			JOIN Subjects AS s
			ON b.SubjectsID = s.ID
			WHERE SubjectsType LIKE('Фантастика');