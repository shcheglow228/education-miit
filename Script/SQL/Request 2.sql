--2. Выдавать список трудов данного автора (учитывать труды, выполненные в соавторстве).
SELECT
		a.AuthorName
		,b.NameBook
		FROM Book AS b
			JOIN Author AS a
			ON b.AuthorID = a.ID
			WHERE AuthorName LIKE('%Толстой Л.Н.%');