CREATE TABLE [dbo].[Video] (
    [VideoID]   INT NOT NULL,
    [MovieID]   INT NOT NULL,
    [MediaType] BIT NOT NULL,
    [VCN]       INT NOT NULL,
    CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED ([VideoID] ASC),
    CONSTRAINT [FK_Video_Movie] FOREIGN KEY ([MovieID]) REFERENCES [dbo].[Movie] ([MovieID])
);

