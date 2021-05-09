CREATE TABLE PublishingOffice
(
	ID INT NOT NULL
	    CONSTRAINT PK_PublishingOffice
        PRIMARY KEY
	,[Name] NVARCHAR(50) NOT NULL
		CONSTRAINT UN_PublishingOffice_Name
        UNIQUE
)