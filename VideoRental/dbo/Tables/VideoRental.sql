CREATE TABLE [dbo].[VideoRental] (
    [RentalID]       INT   NOT NULL,
    [MemberID]       INT   NOT NULL,
    [MovieID]        INT   NOT NULL,
    [RentDate]       DATE  NOT NULL,
    [ReturnDate]     DATE  NOT NULL,
    [RentCostPerDay] MONEY NULL,
    [MediaType]      BIT   NOT NULL,
    CONSTRAINT [PK_VideoRental] PRIMARY KEY CLUSTERED ([RentalID] ASC),
    CONSTRAINT [FK_VideoRental_Member] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[Member] ([MemberID]),
    CONSTRAINT [FK_VideoRental_Movie] FOREIGN KEY ([MovieID]) REFERENCES [dbo].[Movie] ([MovieID])
);

