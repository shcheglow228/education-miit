CREATE TABLE Author
(
	ID INT NOT NULL
	    CONSTRAINT PK_Author
        PRIMARY KEY
	,AuthorName NVARCHAR(50) NOT NULL
		CONSTRAINT UN_Author_AuthorName
        UNIQUE
)
