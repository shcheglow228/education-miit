ALTER TABLE [Location]
ADD CONSTRAINT CH_Location_Series
CHECK (Series IN ('A', 'B', 'C', 'D', 'E', 'F', 'G'));
