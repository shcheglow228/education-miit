ALTER TABLE Book 
ADD CONSTRAINT DF_Book_DateOfIssue
DEFAULT (GETDATE())
FOR DateOfIssue;