CREATE TABLE [dbo].[Units] (
    [ID]            BIGINT  IDENTITY (1, 1) NOT NULL,
    [prodID]        INT     NULL,
    [yearNum]       INT     NULL,
    [monthNum]      TINYINT NULL,
    [unitCount]     INT     NULL,
    [activations]   INT     NULL,
    [deactivations] INT     NULL,
    CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Units_Product] FOREIGN KEY ([prodID]) REFERENCES [dbo].[Product] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Units]
    ON [dbo].[Units]([prodID] ASC, [yearNum] ASC, [monthNum] ASC);

