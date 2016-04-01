CREATE TABLE [dbo].[VideoRental] (
    [RentalID]       INT   NOT NULL,
    [MemberID]       INT   NOT NULL,
    [VideoID]        INT   NOT NULL,
    [RentDate]       DATE  NOT NULL,
    [ReturnDate]     DATE  ,
    [RentCostPerDay] MONEY NULL,
    CONSTRAINT [PK_VideoRental] PRIMARY KEY CLUSTERED ([RentalID] ASC),
    CONSTRAINT [FK_VideoRental_Member] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[Member] ([MemberID]),
    CONSTRAINT [FK_VideoRental_Video] FOREIGN KEY ([VideoID]) REFERENCES [dbo].[Video] ([VideoID])
);



