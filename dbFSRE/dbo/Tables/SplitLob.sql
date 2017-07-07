CREATE TABLE [dbo].[SplitLob] (
    [splitLobID] INT      IDENTITY (1, 1) NOT NULL,
    [vendorID]   INT      NOT NULL,
    [acd]        SMALLINT NOT NULL,
    [split]      SMALLINT NOT NULL,
    [monthNum]   INT      NOT NULL,
    [yearNum]    INT      NOT NULL,
    [lobID]      INT      NULL,
    [CTF]        BIT      NULL,
    CONSTRAINT [PK_SplitLob] PRIMARY KEY CLUSTERED ([splitLobID] ASC),
    CONSTRAINT [FK_SplitLob_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_SplitLob_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SplitLob]
    ON [dbo].[SplitLob]([vendorID] ASC, [acd] ASC, [split] ASC, [monthNum] ASC, [yearNum] ASC, [lobID] ASC, [CTF] ASC);

