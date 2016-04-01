CREATE TABLE [dbo].[Movie] (
    [MovieID]          INT            NOT NULL,
    [MovieName]        NVARCHAR (100) NOT NULL,
    [MovieCategory]    INT            NOT NULL,
    [MovieReleaseDate] DATE           NOT NULL,
    [MovieLength]      TIME (7)       NOT NULL,
    CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED ([MovieID] ASC),
    CONSTRAINT [FK_Movie_Genre] FOREIGN KEY ([MovieCategory]) REFERENCES [dbo].[Genre] ([GenreID])
);





