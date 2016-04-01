CREATE TABLE [dbo].[VideoRental]
(
	[RentalId] INT NOT NULL PRIMARY KEY, 
    [MovieID] INT NOT NULL, 
    [RentDate] DATE NOT NULL, 
    [ReturnDate] DATE NOT NULL, 
    [RentCostPerDay] MONEY NULL, 
    [MediaType] BIT NOT NULL
)
