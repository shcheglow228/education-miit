CREATE TABLE Subjects
(
	ID INT NOT NULL
	    CONSTRAINT PK_Subjects
        PRIMARY KEY
	,SubjectsType NVARCHAR(50) NOT NULL
		CONSTRAINT UN_Subjects_SubjectsType
        UNIQUE
)