CREATE TABLE [dbo].[Movie] (
    [MovieID]       INT           NOT NULL,
    [MovieName]     NVARCHAR (50) NOT NULL,
    [MovieCategory] INT           NOT NULL,
    [MovieLength]   TIME (7)      NOT NULL,
    CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED ([MovieID] ASC)
);

