--4. Выдавать список книг данного издательства.
SELECT
		p.[Name]
		,b.NameBook
		FROM Book AS b
			JOIN PublishingOffice AS p
			ON b.PublishingOfficeID = p.ID
			WHERE [Name] LIKE('АСТ');